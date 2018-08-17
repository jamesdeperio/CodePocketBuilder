/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.integration.bus;


import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.Subject;

public final class EventBus<T extends Subject<Object>>  {
    private Disposable disposable;
    private T bus;
    public Buss(T bus) {
        this.bus=bus;
     }

    public void sendEvent(final Object object) {
        bus.onNext(object);
    }

    public void subscribeReceiver(Consumer<? super Object> consumer) {
        disposable=bus.subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(consumer);
    }
    public void unSubscribeReceiver() {
            disposable.dispose();
    }
}
