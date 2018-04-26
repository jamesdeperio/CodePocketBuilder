/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.global.app;

 import android.app.Application;
 import dagger.BindsInstance;
 import dagger.Component;
 import dagger.android.AndroidInjector;
 import dagger.android.support.AndroidSupportInjectionModule;
 import dagger.android.support.DaggerApplication;
 import ${packageName}.global.module.appconfig.ActivityBindingModule;
 import ${packageName}.global.module.appconfig.ApplicationBindingModule;
 import ${packageName}.global.module.appconfig.FragmentBindingModule;
 import ${packageName}.global.module.appconfig.ServiceBindingModule;
 import ${packageName}.global.module.appconfig.BroadcastReceiverBindingModule;
 import ${packageName}.global.scope.ApplicationScope;

@ApplicationScope
@Component(
        modules = {
                AndroidSupportInjectionModule.class,
                ApplicationBindingModule.class,
                ActivityBindingModule.class,
                FragmentBindingModule.class,
                ServiceBindingModule.class,
                BroadcastReceiverBindingModule.class
})
public interface AppComponent extends AndroidInjector<DaggerApplication>{
    @Override void inject(DaggerApplication instance);
    @Component.Builder
    interface Builder {
        @BindsInstance AppComponent.Builder application(Application application);
        AppComponent build();
    }
}
