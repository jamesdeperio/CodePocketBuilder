package ${packageName}.presentation.${packageFolderName};

import ${packageName}.R;
import ${packageName}.presentation.base.${baseType};
import ${packageName}.business.module.${packageFolderName}.${contractClass};

/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
public abstract class ${viewClass} extends ${baseType} implements ${contractClass}.ViewMethod {
    @Override
      public int initContentView() {
          return R.layout.${layoutName};
      }
}