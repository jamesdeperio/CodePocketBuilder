/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName};

import android.view.View;
import android.content.Context;

import jdp.pocketlib.base.PocketAdapter;
 public class ${viewClass}  {
 <#if withAdapter== "YES">
     private PocketAdapter adapter;
   private View view;
   private ${contractClass}.Event event;
   private Context context;

        public ${viewClass} (View view,${contractClass}.Event event,Context context, PocketAdapter adapter) {
            this.view=view;
            this.event=event;
            this.context=context;
            this.adapter=adapter;
        }
 <#elseif withAdapter== "NO">
   private View view;
   private ${contractClass}.Event event;
   private Context context;

        public ${viewClass} (View view,${contractClass}.Event event,Context context) {
            this.view=view;
            this.event=event;
            this.context=context;
        }
 </#if>
}