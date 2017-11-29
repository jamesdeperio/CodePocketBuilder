package ${packageName}.business.module.${packageFolderName}

import dagger.Binds
import dagger.Module
import dagger.Provides
import ${packageName}.business.scope.${scope}
import ${packageName}.presentation.${packageFolderName}.${controllerClass}

/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 @Module
  abstract class ${moduleClass} {
    @Binds internal abstract fun bindViewMethod(controller: ${controllerClass}): ${contractClass}.ViewMethod

     @Module
     companion object Provider {
    @${scope} @Provides @JvmStatic
     fun providePresenter(viewMethod: ${contractClass}.ViewMethod): ${contractClass}.Presenter
        = ${presenterClass}(viewMethod)
    }
}