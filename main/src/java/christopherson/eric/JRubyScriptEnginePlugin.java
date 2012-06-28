package christopherson.eric;

import org.jruby.embed.jsr223.JRubyEngineFactory;

import com.townsfolkdesigns.jedit.plugins.scripting.ScriptEngineService;

import org.gjt.sp.jedit.EditPlugin;
import org.gjt.sp.jedit.Mode;
import org.gjt.sp.jedit.jEdit;

/**
 * The JRubyScriptEnginePlugin provides the Ruby ScriptEngine to jEdit plugins.
 * @author Eric Christopherson (echristopherson at gmail dot com)
 */
public class JRubyScriptEnginePlugin extends EditPlugin implements ScriptEngineService {
   private JRubyEngineFactory factory = new JRubyEngineFactory();

   public Class getEngineFactoryClass() {
      return factory.getClass();
   }

   public Mode getMode() {
      return jEdit.getMode("ruby");
   }

   @Override
   public void start() { }

   @Override
   public void stop() { }
}
