/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.integration.network

import android.content.Context
import java.io.IOException
import retrofit2.CallAdapter
import retrofit2.Converter
import com.google.gson.GsonBuilder
import com.tickaroo.tikxml.TikXml
import com.tickaroo.tikxml.retrofit.TikXmlConverterFactory
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory
import jdp.retrofitkit.RetrofitManager
import jdp.retrofitkit.SerializationFormatFactory

class NetworkManager(context: Context) : RetrofitManager(context) {

    override fun initBaseURL(): String = ""

    override fun initCacheSize(): Int = 0

       override fun initConverterFactory(): Converter.Factory = SerializationFormatFactory.Builder()
               .setXMLConverterFactory(TikXmlConverterFactory.create(TikXml.Builder().exceptionOnUnreadXml(false).build()))
               .setJSONConverterFactory(GsonConverterFactory.create(GsonBuilder().setLenient().create()))
               .build()


    override fun initRxAdapterFactory(): CallAdapter.Factory = RxJava2CallAdapterFactory.create()

    override fun isPrintLogEnabled(): Boolean = false

}
