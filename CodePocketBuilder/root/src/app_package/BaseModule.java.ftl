/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

import android.annotation.SuppressLint;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import ${packageName}.global.scope.${scope};
import io.reactivex.disposables.CompositeDisposable;
import ${packageName}.R;
import android.support.v4.app.Fragment;
import android.view.View;
import android.content.Context;
import jdp.pocketlib.base.PocketAdapter;
 @Module
public final class ${moduleClass} {

    @${scope}
      @Provides
      public static CompositeDisposable provideSubscription(){
          return new CompositeDisposable();
      }
<#if withAdapter== "YES">
  <#if scope== "ActivityScope">
                @ActivityScope
                  @Provides
                  public static ${prefixName}Adapter provideAdapter(${controllerClass} controller) {
                      ${prefixName}Adapter adapter= new ${prefixName}Adapter();
                      ${prefixName}ViewHolder viewHolder= new ${prefixName}ViewHolder(adapter, (${contractClass}.Event) controller);
                      viewHolder.setContentView(R.layout.${layoutList});
                      adapter.addViewHolder(viewHolder);
                      return adapter;
                  }
                 @SuppressLint("InflateParams")
                    @ActivityScope
                    @Provides
                    public static ${viewClass}  provideComponent(${controllerClass} controller,${prefixName}Adapter adapter) {
                        View view= controller.getLayoutInflater().inflate(R.layout.${layoutName},null);
                        controller.setContentView(view);
                        return new ${viewClass}(view,( ${contractClass}.Event)controller,(Context) controller,(PocketAdapter)adapter);
                    }

                    @ActivityScope
                    @Provides
                    public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,${viewClass} view)  {
                          return  new ${viewImplClass}(controller, view);
                      }

             <#elseif scope== "FragmentScope">
                                @FragmentScope
                               @Provides
                               public static ${prefixName}Adapter provideAdapter(${controllerClass} controller) {
                                   ${prefixName}Adapter adapter= new ${prefixName}Adapter();
                                   ${prefixName}ViewHolder viewHolder=new ${prefixName}ViewHolder(adapter, (${contractClass}.Event) controller);
                                   viewHolder.setContentView(R.layout.${layoutList});
                                   adapter.addViewHolder(viewHolder);
                                   return adapter;
                               }
              @SuppressLint("InflateParams")
                                 @FragmentScope
                                 @Provides
                                 public static ${viewClass}  provideComponent(${controllerClass} controller,${prefixName}Adapter adapter) {
                                   controller.setRootView(controller.getLayoutInflater().inflate(R.layout.${layoutName},controller.container ,false));
                                      return new ${viewClass}( controller.getRootView(),( ${contractClass}.Event)controller,controller.getContext(),adapter);
                                 }


             @SuppressWarnings("ConstantConditions")
        @FragmentScope
          @Provides
             public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,${viewClass} view)  {
                return  new ${viewImplClass}(controller, view);
          }
          </#if>
           @${scope}
                @Provides
                public static ${contractClass}.Presenter providePresenter(${contractClass}.ViewMethod viewMethod,${contractClass}.Adapter adapter){
                      return new ${presenterClass}(viewMethod,adapter);
                 }
<#elseif withAdapter== "NO">
  <#if scope== "ActivityScope">
                 @SuppressLint("InflateParams")
                    @ActivityScope
                    @Provides
                    public static ${viewClass}  provideComponent(${controllerClass} controller) {
                        View view= controller.getLayoutInflater().inflate(R.layout.${layoutName},null);
                        controller.setContentView(view);
                        return new ${viewClass}(view,( ${contractClass}.Event)controller,(Context) controller);
                    }

                    @ActivityScope
                    @Provides
                    public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,${viewClass} view)  {
                          return  new ${viewImplClass}(controller, view);
                      }

             <#elseif scope== "FragmentScope">
              @SuppressLint("InflateParams")
                                 @FragmentScope
                                 @Provides
                                 public static ${viewClass}  provideComponent(${controllerClass} controller) {
                                   controller.setRootView(controller.getLayoutInflater().inflate(R.layout.${layoutName},controller.container ,false));
                                      return new ${viewClass}( controller.getRootView(),( ${contractClass}.Event)controller,controller.getContext());
                                 }


             @SuppressWarnings("ConstantConditions")
        @FragmentScope
          @Provides
             public static ${contractClass}.ViewMethod provideViewMethod(${controllerClass} controller,${viewClass} view)  {
                return  new ${viewImplClass}(controller, view);
          }
          </#if>
           @${scope}
                @Provides
                public static ${contractClass}.Presenter providePresenter(${contractClass}.ViewMethod viewMethod){
                      return new ${presenterClass}(viewMethod);
                 }
</#if>



}