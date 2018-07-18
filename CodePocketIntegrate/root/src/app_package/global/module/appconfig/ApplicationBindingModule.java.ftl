/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.module.appconfig;

import android.app.Application;
import android.content.Context;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import ${packageName}.integration.bus.EventBus;
import ${packageName}.integration.network.NetworkManager;
import ${packageName}.global.scope.ApplicationScope;

@Module
public abstract class ApplicationBindingModule {
    @Binds abstract Context bindContext(Application application);

    @ApplicationScope
    @Provides
    public static EventBus provideEventBus(){
         return new EventBus();
     }

        @ApplicationScope
            @Provides
            public static NetworkManager provideNetworkManager(Context context){
             return new NetworkManager(context);
            }
    //todo provide dao,service, etc.. to inject globally
}
