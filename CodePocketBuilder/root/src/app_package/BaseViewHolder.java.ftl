/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

import android.view.View;
import jdp.pocketlib.base.PocketViewHolder;

public class ${prefixName}ViewHolder extends PocketViewHolder {
    private ${prefixName}Adapter adapter;
    private ${contractClass}.Event event;
    public ${prefixName}ViewHolder(${prefixName}Adapter adapter, ${contractClass}.Event event) {
        this.adapter=adapter;
        this.event=event;
    }
    @Override
    public void onBindViewHolder(View view, int position) {

    }
}
