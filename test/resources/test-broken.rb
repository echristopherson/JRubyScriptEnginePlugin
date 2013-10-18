require 'test/unit'
require 'tempfile'

BEGIN {
  $old_stdout = STDOUT.clone
  $output_file = Tempfile.new 'JRubyScriptEnginePlugin_test'
  org.gjt.sp.jedit.Macros.message $view, $output_file.path
  STDOUT.reopen $output_file
}

END {
  begin
    org.gjt.sp.jedit.Macros.message $view, $output_file.path
    output = File.read($output_file)
    $output_file.close
    org.gjt.sp.jedit.Macros.message $view, output
    $output_file.unlink

    #output_buffer = org.gjt.sp.jedit.jEdit.newFile($view)
    #output_buffer.insert(0, @output.output)
    STDOUT.reopen $old_stdout
  rescue StandardError => e
    org.gjt.sp.jedit.Macros.message $view, e.inspect
  end
}

class TestEngine < Test::Unit::TestCase
  def setup
  #  @old_stdout = STDOUT.clone
  #  @output_file = Tempfile.new 'JRubyScriptEnginePlugin_test'
  #  org.gjt.sp.jedit.Macros.message $view, @output_file
  #  STDOUT.reopen @output
  end

  def teardown
  #  begin
  #    org.gjt.sp.jedit.Macros.message $view, @output_file.path
  #    output = File.read($output_file)
  #    $output_file.unlink
  #    $output_file.close!
  #    org.gjt.sp.jedit.Macros.message $view, output

  #    #output_buffer = org.gjt.sp.jedit.jEdit.newFile($view)
  #    #output_buffer.insert(0, @output.output)
  #    STDOUT.reopen @old_stdout
  #  rescue StandardError => e
  #    org.gjt.sp.jedit.Macros.message $view, e.inspect
  #  end
  end

  def test_view_not_nil
    assert_not_nil $view
  end

  def test_buffer_not_nil
    assert_not_nil $buffer
  end

  def test_buffer_equals_view_buffer
    assert_equal $buffer, $view.buffer
  end

  def test_editPane_not_nil
    assert_not_nil $editPane
  end

  def test_editPane_equals_view_editPane
    assert_equal $editPane, $view.editPane
  end

  def test_textArea_not_nil
    assert_not_nil $textArea
  end

  def test_textArea_equals_view_textArea
    assert_equal $textArea, $view.textArea
  end

  def test_wm_not_nil
    assert_not_nil $wm
  end

  def test_wm_equals_view_dockableWindowManager
    assert_equal $wm, $view.dockableWindowManager
  end

  def test_scriptPath_not_nil
    assert_not_nil $scriptPath
  end

  def test_scriptPath_exists
    assert_block { File.exist? $scriptPath }
  end
end
