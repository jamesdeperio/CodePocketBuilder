package ${packageName}.business.module.${packageFolderName};

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import ${packageName}.business.scope.${scope};
import ${packageName}.presentation.${packageFolderName}.${controllerClass};

/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 @Module
public abstract class ${moduleClass} {
    @Binds abstract ${contractClass}.ViewMethod bindViewMethod(${controllerClass} controller);
    @${scope}
    @Provides
    public static ${contractClass}.Presenter providePresenter(${contractClass}.ViewMethod viewMethod){
        return new ${presenterClass}(viewMethod);
    }
}