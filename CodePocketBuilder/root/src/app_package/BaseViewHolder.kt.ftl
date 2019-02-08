/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

import android.view.View
import jdp.pocketlib.base.ViewHolder

class ${prefixName}ViewHolder(
        private val adapter: ${prefixName}Adapter,
        private val event: ${contractClass}.Event) : ViewHolder() {
    override fun onBindViewHolder(view: View, position: Int) {

    }
}
