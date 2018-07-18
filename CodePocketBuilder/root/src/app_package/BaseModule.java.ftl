/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

import android.annotation.SuppressLint
import dagger.Binds
import dagger.Module
import dagger.Provides
import ${packageName}.global.scope.${scope}
import io.reactivex.disposables.CompositeDisposable
import ${packageName}.R
import android.support.v4.app.Fragment
 @Module
public final class ${moduleClass} {

    @${scope}
      @Provides
      public static CompositeDisposable provideSubscription(){
          return new CompositeDisposable();
      }

         <#if scope== "ActivityScope">
                 @SuppressLint("InflateParams")
                    @ActivityScope
                    @Provides
                    @JvmStatic
                    public static ${viewClass}  provideComponent(${controllerClass} controller) {
                        val view= controller.getLayoutInflater().inflate(R.layout.${layoutName},null);
                        controller.setContentView(view);
                        return new ${viewClass}(view,( ${contractClass}.Event)controller);
                    }

                    @ActivityScope
                    @Provides
                    @JvmStatic
                    public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,${viewClass} view)  {
                          return  new ${viewImplClass}(controller, view);
                      }

             <#elseif scope== "FragmentScope">
              @SuppressLint("InflateParams")
                                 @ActivityScope
                                 @Provides
                                 @JvmStatic
                                 public static ${viewClass}  provideComponent(${controllerClass} controller) {
                                   controller.rootView= controller.getLayoutInflater().inflate(R.layout.${layoutName},controller.container ,false);
                                      return new ${viewClass}( controller.rootView,( ${contractClass}.Event)controller);
                                 }


             @SuppressWarnings("ConstantConditions")
        @FragmentScope
          @Provides
          @JvmStatic
             public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,${viewClass} view)  {
                return  new ${viewImplClass}(controller, view);
          }
          </#if>

      @${scope}
      @Provides
      public static ${contractClass}.Presenter providePresenter(${contractClass}.ViewMethod viewMethod){
            return new ${presenterClass}(viewMethod);
       }
}