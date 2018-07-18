/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName};

import android.view.View

 public class ${viewClass}  {
   private View view;
   private ${contractClass}.Event event;

        public ${viewClass} (View view,${contractClass}.Event event) {
            this.context=context;
            this.event=event;
        }
}