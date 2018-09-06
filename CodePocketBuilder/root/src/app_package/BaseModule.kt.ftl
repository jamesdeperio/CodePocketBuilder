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
import android.support.v4.app.Fragment
import android.content.Context
import jdp.pocketlib.base.PocketAdapter

 @Module
  object ${moduleClass} {
         @${scope} @Provides @JvmStatic
             fun provideSubscription() = CompositeDisposable()
  <#if withAdapter== "YES">

          <#if scope== "ActivityScope">
               @ActivityScope
                @Provides
                @JvmStatic
                fun provideAdapter(controller: ${controllerClass}):${prefixName}Adapter {
                    val adapter= ${prefixName}Adapter()
                    val viewHolder=${prefixName}ViewHolder(
                    adapter = adapter,
                    event = controller as  ${contractClass}.Event)
                    viewHolder.setContentView(R.layout.${layoutList})
                    adapter.addViewHolder(viewHolder=viewHolder)
                    return adapter
                }
                     @SuppressLint("InflateParams")
                      @ActivityScope
                      @Provides
                      @JvmStatic
                      fun provideComponent(controller: ${controllerClass},adapter:${prefixName}Adapter): ${viewClass} {
                          val view= controller.layoutInflater.inflate(R.layout.${layoutName},null)
                          controller.setContentView(view)
                          return ${viewClass}(
                          view=view,
                          event=controller as ${contractClass}.Event,
                          context=controller as Context,
                          adapter=adapter as PocketAdapter
                          )
                      }
                         @ActivityScope
                         @Provides
                         @JvmStatic
                         fun provideViewMethod(controller:  ${controllerClass}, view:${viewClass}) : ${contractClass}.ViewMethod
                               =${viewImplClass}(
                               context = controller,
                               view=view
                               )

                  <#elseif scope== "FragmentScope">
                       @FragmentScope
                        @Provides
                        @JvmStatic
                        fun provideAdapter(controller: ${controllerClass}):${prefixName}Adapter {
                            val adapter= ${prefixName}Adapter()
                            val viewHolder=${prefixName}ViewHolder(
                            adapter = adapter,
                            event = controller as  ${contractClass}.Event)
                            viewHolder.setContentView(R.layout.${layoutList})
                            adapter.addViewHolder(viewHolder=viewHolder)
                            return adapter
                        }
                      @FragmentScope
                      @Provides
                      @JvmStatic
                      fun provideComponent(controller:  ${controllerClass},adapter:${prefixName}Adapter) : ${viewClass} {
                      controller.rootView= controller.layoutInflater.inflate(R.layout.${layoutName},controller.container ,false)
                          return ${viewClass}(
                          view =controller.rootView!!,
                          event=controller as  ${contractClass}.Event,
                          context=controller.context!!,
                          adapter=adapter as PocketAdapter
                          )
                      }

             @FragmentScope
               @Provides
               @JvmStatic
              fun provideViewMethod(controller:  ${controllerClass}, view:${viewClass}) : ${contractClass}.ViewMethod
                 =${viewImplClass}(
                 fragment = controller as Fragment,
                 view=view
                 )
               </#if>
    @${scope} @Provides @JvmStatic
         fun providePresenter(viewMethod: ${contractClass}.ViewMethod,adapter:${prefixName}Adapter): ${contractClass}.Presenter
            = ${presenterClass}(
            viewMethod=viewMethod,
            adapter=adapter as ${contractClass}.Adapter
            )
  <#elseif withAdapter== "NO">
     <#if scope== "ActivityScope">
            @SuppressLint("InflateParams")
             @ActivityScope
             @Provides
             @JvmStatic
             fun provideComponent(controller: ${controllerClass}): ${viewClass} {
                 val view= controller.layoutInflater.inflate(R.layout.${layoutName},null)
                 controller.setContentView(view)
                 return ${viewClass}(
                 view=view,
                 event=controller as ${contractClass}.Event,
                 context=controller as Context
                 )
             }
                @ActivityScope
                @Provides
                @JvmStatic
                fun provideViewMethod(controller:  ${controllerClass}, view:${viewClass}) : ${contractClass}.ViewMethod
                      =${viewImplClass}(
                      context = controller,
                      view=view
                      )

         <#elseif scope== "FragmentScope">
             @FragmentScope
             @Provides
             @JvmStatic
             fun provideComponent(controller:  ${controllerClass}) : ${viewClass} {
             controller.rootView= controller.layoutInflater.inflate(R.layout.${layoutName},controller.container ,false)
                 return ${viewClass}(
                 view =controller.rootView!!,
                 event=controller as  ${contractClass}.Event,
                 context=controller.context!!
                 )
             }

    @FragmentScope
      @Provides
      @JvmStatic
     fun provideViewMethod(controller:  ${controllerClass}, view:${viewClass}) : ${contractClass}.ViewMethod
        =${viewImplClass}(
        fragment = controller as Fragment,
        view=view
        )
      </#if>
    @${scope} @Provides @JvmStatic
         fun providePresenter(viewMethod: ${contractClass}.ViewMethod): ${contractClass}.Presenter
            = ${presenterClass}(
            viewMethod=viewMethod
            )
  </#if>





}