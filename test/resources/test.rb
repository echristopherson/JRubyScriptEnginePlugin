# TODO: These tests are really weak. Find a better way.
# I tried to use Test::Unit, but couldn't figure out how to make it output the
# test results into a string so I could pop them up in jEdit.

output = ''
output += "#{($view != nil)}\n"
output += "#{($buffer != nil)}\n"
output += "#{($buffer == $view.buffer)}\n"
output += "#{($editPane != nil)}\n"
output += "#{($editPane == $view.editPane)}\n"
output += "#{($wm != nil)}\n"
output += "#{($wm == $view.dockableWindowManager)}\n"
output += "#{($scriptPath != nil)}\n"

#output_buffer = org.gjt.sp.jedit.jEdit.newFile($view)
#output_text_area = org.gjt.sp.jedit.jEdit.newView($view, output_buffer).getEditPane.getTextArea
#output_text_area.setSelectedText output

org.gjt.sp.jedit.Macros.message $view, output

# Don't append anything to buffer
nil
