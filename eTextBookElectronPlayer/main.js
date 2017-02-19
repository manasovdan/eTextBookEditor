import electron from 'electron';

const app = electron.app;
const BrowserWindow = electron.BrowserWindow;

let mainWindow;

function createBrowserWindow (width = 800, height = 600) {
    mainWindow = new BrowserWindow({ width, height })
}

function loadFile (fileRelativePath = 'index.html') {
    mainWindow.loadURL(`file://${__dirname}/${fileRelativePath}`)
}

function createWindow () {
    createBrowserWindow();

    loadFile();

    mainWindow.webContents.openDevTools();

    mainWindow.on('closed', function () {
        mainWindow = null
    })
}

app.on('ready', createWindow);

app.on('window-all-closed', function () {
    if (process.platform !== 'darwin') {
        app.quit()
    }
});

app.on('activate', function () {
    if (mainWindow === null) {
        createWindow()
    }
});
