def author = 'Eric Berry';
assert view != null
assert buffer != null
assert buffer == view.buffer
assert editPane != null
assert editPane == view.editPane
assert textArea != null
assert textArea == view.textArea
assert wm != null
assert wm == view.dockableWindowManager
assert scriptPath != null
return "Author: ${author} | Script Path: ${scriptPath}"

