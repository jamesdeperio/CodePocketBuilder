package ${packageName}.business.module.app

import android.app.Application
import android.content.Context

import dagger.Binds
import dagger.Module
import dagger.Provides
import ${packageName}.business.app.EventBus
import ${packageName}.business.scope.ApplicationScope
import ${packageName}.integration.service.NetworkService
/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
@Module
abstract class ApplicationBindingModule {
    @Binds internal abstract fun bindContext(application: Application): Context

     @Module
     companion object Provider {
      @ApplicationScope @Provides @JvmStatic
        fun provideEventBus(): EventBus
         = EventBus()
        @ApplicationScope
        @Provides
        @JvmStatic
        fun provideNetworkService(context: Context): NetworkService
            = NetworkService(context)
        //todo provide dao,service, etc.. to inject globally
    }
}
