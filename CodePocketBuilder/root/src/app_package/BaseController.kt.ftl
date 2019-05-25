/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName}

import android.os.Bundle
import javax.inject.Inject
import io.reactivex.disposables.CompositeDisposable
import ${packageName}.global.base.${baseType}

class ${controllerClass} : ${baseType}(), ${contractClass}.Event {
    @field:[Inject] internal lateinit var presenter: ${contractClass}.Presenter
    @field:[Inject] internal lateinit var viewMethod: ${contractClass}.ViewMethod
    @field:[Inject] internal lateinit var subscription: CompositeDisposable

    override fun onInitialization(savedInstanceState: Bundle?) {

    }

    override fun onViewDidLoad(savedInstanceState: Bundle?) {

    }
  }
