package ${packageName}.business.component;

import android.app.Application;
import dagger.BindsInstance;
import dagger.Component;
import dagger.android.AndroidInjector;
import dagger.android.support.AndroidSupportInjectionModule;
import dagger.android.support.DaggerApplication;
import ${packageName}.business.module.app.ActivityBindingModule;
import ${packageName}.business.module.app.ApplicationBindingModule;
import ${packageName}.business.module.app.FragmentBindingModule;
import ${packageName}.business.scope.ApplicationScope;
/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
@ApplicationScope
@Component(
        modules = {
                AndroidSupportInjectionModule.class,
                ApplicationBindingModule.class,
                ActivityBindingModule.class,
                FragmentBindingModule.class
})
public interface AppComponent extends AndroidInjector<DaggerApplication>{
    @Override void inject(DaggerApplication instance);
    @Component.Builder
    interface Builder {
        @BindsInstance AppComponent.Builder application(Application application);
        AppComponent build();
    }
}
