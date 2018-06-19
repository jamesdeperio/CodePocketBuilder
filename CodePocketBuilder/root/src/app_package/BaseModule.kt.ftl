/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName}
import android.annotation.SuppressLint
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
          @SuppressLint("InflateParams")
           @ActivityScope
           @Provides
           @JvmStatic
           fun provideComponent(controller: ${controllerClass}): ${viewClass} {
               val view= controller.layoutInflater.inflate(R.layout.${layoutName},null)
               controller.setContentView(view)
               return ${viewClass}(view=view,event=controller as  ${contractClass}.Event)
           }
              @ActivityScope
              @Provides
              @JvmStatic
              fun provideViewMethod(controller:  ${controllerClass}, view:${viewClass}) : ${contractClass}.ViewMethod
                    =${viewImplClass}(context = controller,view=view)

       <#elseif scope== "FragmentScope">
           @FragmentScope
           @Provides
           @JvmStatic
           fun provideComponent(controller:  ${controllerClass}) : ${viewClass} {
           controller.rootView= controller.layoutInflater.inflate(R.layout.${layoutName},controller.container ,false)
               return ${viewClass}(controller.rootView!!,controller as HasRFIDContract.Event)
           }

  @FragmentScope
    @Provides
    @JvmStatic
   fun provideViewMethod(controller:  ${controllerClass}, view:${viewClass}) : ${contractClass}.ViewMethod
      =${viewImplClass}(context = controller.activity!!,view=view)
    </#if>

        @${scope} @Provides @JvmStatic
         fun providePresenter(viewMethod: ${contractClass}.ViewMethod): ${contractClass}.Presenter
            = ${presenterClass}(viewMethod)

}