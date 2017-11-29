package ${packageName}.presentation.${packageFolderName}

import ${packageName}.R
import ${packageName}.presentation.base.${baseType}
import ${packageName}.business.module.${packageFolderName}.${contractClass}

/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
abstract class ${viewClass}: ${baseType}(), ${contractClass}.ViewMethod {
     override fun initContentView(): Int = R.layout.${layoutName}
}