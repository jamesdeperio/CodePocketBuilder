/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};
import java.util.List;
public interface ${contractClass} {
    interface Event {

    }
    interface ViewMethod {

    }
    interface Presenter {

    }
      interface Adapter {
            boolean refreshAll();
            boolean refreshLastInserted();
            List<Object> filter(String query);
        }
}