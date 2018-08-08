/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

import jdp.pocketlib.base.PocketAdapter
import kotlinx.coroutines.experimental.Job
import kotlinx.coroutines.experimental.android.UI
import kotlinx.coroutines.experimental.launch
import java.util.*

class ${prefixName}Adapter : PocketAdapter(), ${contractClass}.Adapter {
    var objectList: MutableList<Any> = ArrayList()
    var objectFilteredList: MutableList<Any> = ArrayList()

    override fun getItemCount(): Int = objectFilteredList.size

    override fun refreshList(): Job = launch(UI){
       notifyDataSetChanged()
    }

    override fun addNewItem(): Job = launch(UI){
        notifyItemInserted(itemCount)
    }

    override fun filter(query: String): List<Any> {
        val filteredList = ArrayList<Any>()
        objectList
                .filter { true }
                .forEach { filteredList.add(it) }
        return filteredList
    }
}
