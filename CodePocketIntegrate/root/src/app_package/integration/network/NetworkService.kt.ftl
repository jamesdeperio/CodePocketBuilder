/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.integration.network

import android.content.Context
import java.io.IOException
import jdp.pocketlib.service.RetrofitManager
import retrofit2.CallAdapter
import retrofit2.Converter
import jdp.pocketlib.service.Gson
import jdp.pocketlib.service.Xml
import jdp.pocketlib.service.MultipleConverterFactory
import com.google.gson.GsonBuilder
import com.tickaroo.tikxml.TikXml
import com.tickaroo.tikxml.retrofit.TikXmlConverterFactory
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory

class NetworkManager(context: Context) : RetrofitManager(context) {

    override fun initBaseURL(): String = ""

    override fun initCacheSize(): Int = 0

    override fun initConverterFactory(): Converter.Factory  {
       val tikXml= TikXml.Builder().exceptionOnUnreadXml(false).build()
       val gsonBuilder = GsonBuilder()
       gsonBuilder.setLenient()
       return MultipleConverterFactory.Builder()
                 .add(Xml::class.java, TikXmlConverterFactory.create(tikXml))
                 .add(Gson::class.java, GsonConverterFactory.create(gsonBuilder.create()))
                 .build()
     }

    override fun initRxAdapterFactory(): CallAdapter.Factory = RxJava2CallAdapterFactory.create()

    override fun isDebugMode(): Boolean = false

}
