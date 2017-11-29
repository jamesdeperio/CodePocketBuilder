package ${packageName}.presentation.${packageFolderName}

import android.os.Bundle
import ${packageName}.business.module.${packageFolderName}.${contractClass}
import javax.inject.Inject
/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
class ${controllerClass} : ${viewClass}(), ${contractClass}.Event {
    @Inject internal lateinit var presenter: ${contractClass}.Presenter

    override fun initialization(savedInstanceState: Bundle?) {

    }

    override fun onLoadEvent(savedInstanceState: Bundle?) {

    }
}