/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.integration.bus

import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.functions.Consumer
import io.reactivex.schedulers.Schedulers
import io.reactivex.subjects.PublishSubject

class EventBus {
    private val bus = PublishSubject.create<Any>()
    private lateinit var disposable: Disposable
    fun sendEvent(event: Any) {
        bus.onNext(event)
    }

    fun subscribeReceiver(consumer: Consumer<in Any>) {
        disposable = bus.subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(consumer)
    }

    fun unSubscribeReceiver() {
         disposable.dispose()
    }
}