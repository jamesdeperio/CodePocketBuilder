/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

import android.os.Bundle;
import javax.inject.Inject;
import io.reactivex.disposables.CompositeDisposable;
import ${packageName}.global.base.${baseType};

public class ${controllerClass} extends ${baseType} implements ${contractClass}.Event {
    @Inject ${contractClass}.Presenter presenter;
    @Inject ${contractClass}.ViewMethod viewMethod;
    @Inject CompositeDisposable subscription;

    @Override
    public void initialization(Bundle savedInstanceState) {

   }

    @Override
    public void onLoadEvent(Bundle savedInstanceState) {

    }
}