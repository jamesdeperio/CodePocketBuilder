/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName};

import android.content.Context;
import io.reactivex.internal.disposables.DisposableContainer;

 public class ${viewClass} implements ${contractClass}.ViewMethod {
   private Context context;
   private DisposableContainer subscription;

        public ${viewClass} (Context context,DisposableContainer subscription) {
            this.context=context;
            this.subscription=subscription;
        }
}