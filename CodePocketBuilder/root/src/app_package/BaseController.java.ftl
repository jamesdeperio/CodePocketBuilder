package ${packageName}.presentation.${packageFolderName};

import android.os.Bundle;
import ${packageName}.business.module.${packageFolderName}.${contractClass};
import javax.inject.Inject;
/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
public class ${controllerClass} extends ${viewClass} implements ${contractClass}.Event {
    @Inject ${contractClass}.Presenter presenter;

    @Override
    public void initialization(Bundle savedInstanceState) {

   }

    @Override
    public void onLoadEvent(Bundle savedInstanceState) {

    }
}