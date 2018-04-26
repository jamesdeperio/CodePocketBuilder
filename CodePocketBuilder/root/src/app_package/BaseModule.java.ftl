/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};


import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import ${packageName}.global.scope.${scope};
import io.reactivex.disposables.CompositeDisposable;
import ${packageName}.R;
import butterknife.ButterKnife;
import kotlin.jvm.JvmStatic;
 @Module
public final class ${moduleClass} {

    @${scope}
      @Provides
      public static CompositeDisposable provideSubscription(){
          return new CompositeDisposable();
      }

         <#if scope== "ActivityScope">
                    @ActivityScope
                    @Provides
                    @JvmStatic
                    public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,CompositeDisposable disposableContainer)  {
                          ${viewClass} view = new ${viewClass}(controller, disposableContainer);
                          controller.setContentView(R.layout.${layoutName});
                          controller.binder.add(ButterKnife.bind(view,controller));
                          controller.binder.add(ButterKnife.bind(controller,controller));
                          return view;
                      }

             <#elseif scope== "FragmentScope">
             @SuppressWarnings("ConstantConditions")
        @FragmentScope
          @Provides
          @JvmStatic
             public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,CompositeDisposable disposableContainer)  {
             ${viewClass}  view = new  ${viewClass} (controller.getContext(), disposableContainer);
              controller.setRootView(controller.getLayoutInflater().inflate(R.layout.${layoutName},controller.container ,false));
              controller.binder.add(ButterKnife.bind(view,controller.getRootView()));
              controller.binder.add(ButterKnife.bind(controller,controller.getRootView()));
              return view;
          }
          </#if>

      @${scope}
      @Provides
      public static ${contractClass}.Presenter providePresenter(${contractClass}.ViewMethod viewMethod){
            return new ${presenterClass}(viewMethod);
       }
}