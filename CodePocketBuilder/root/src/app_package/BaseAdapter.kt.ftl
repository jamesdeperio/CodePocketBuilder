/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

import jdp.pocketlib.base.Adapter
import kotlinx.coroutines.Job
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import java.util.*

class ${prefixName}Adapter : Adapter(), ${contractClass}.Adapter {
    var objectList: MutableList<Any> = ArrayList()
    var objectFilteredList: MutableList<Any> = ArrayList()

    override fun getItemCount(): Int = objectFilteredList.size

    override fun refreshList(): Job = GlobalScope.launch(Dispatchers.Main){
       notifyDataSetChanged()
    }

    override fun addNewItem(): Job = GlobalScope.launch(Dispatchers.Main){
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
