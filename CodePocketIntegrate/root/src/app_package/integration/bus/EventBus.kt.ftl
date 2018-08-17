/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.integration.bus


import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.functions.Consumer
import io.reactivex.schedulers.Schedulers
import io.reactivex.subjects.Subject

class EventBus<T : Subject<Any>>(private val bus :T ) {
     private lateinit var disposable: Disposable

    fun sendEvent(event: Any) = bus.onNext(event)
    fun unSubscribeReceiver() = disposable.dispose()

    fun subscribeReceiver(consumer: Consumer<in Any>) {
        disposable = bus.subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(consumer)
    }
}