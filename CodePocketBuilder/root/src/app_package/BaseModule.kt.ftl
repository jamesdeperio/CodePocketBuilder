/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName}

import dagger.Binds
import dagger.Module
import dagger.Provides
import ${packageName}.global.scope.${scope}
import io.reactivex.disposables.CompositeDisposable
import ${packageName}.R
import butterknife.ButterKnife
 @Module
  object ${moduleClass} {
         @${scope} @Provides @JvmStatic
             fun provideSubscription() = CompositeDisposable()

       <#if scope== "ActivityScope">
              @ActivityScope
              @Provides
              @JvmStatic
              fun provideViewMethod(controller:  ${controllerClass}, disposableContainer: CompositeDisposable) : ${contractClass}.ViewMethod {
                    val view = ${viewClass}(context = controller, subscription = disposableContainer)
                    controller.setContentView(R.layout.${layoutName})
                    controller.binder.add(ButterKnife.bind(view,controller))
                    controller.binder.add(ButterKnife.bind(controller,controller))
                    return view
                }

       <#elseif scope== "FragmentScope">
  @FragmentScope
    @Provides
    @JvmStatic
    fun provideViewMethod(controller: ${controllerClass}, disposableContainer: CompositeDisposable) : ${contractClass}.ViewMethod {
        val view = ${viewClass}(context = controller.context!!, subscription = disposableContainer)
        controller.rootView= controller.layoutInflater.inflate(R.layout.${layoutName},controller.container ,false)
        controller.binder.add(ButterKnife.bind(view,controller.rootView!!))
        controller.binder.add(ButterKnife.bind(controller,controller.rootView!!))
        return view
    }
    </#if>

        @${scope} @Provides @JvmStatic
         fun providePresenter(viewMethod: ${contractClass}.ViewMethod): ${contractClass}.Presenter
            = ${presenterClass}(viewMethod)

}