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

class NetworkManager(context: Context) : RetrofitManager(context) {

    override fun initBaseURL(): String = ""

    override fun initCacheSize(): Int = 0

    override fun initConverterFactory(): Converter.Factory = null

    override fun initRxAdapterFactory(): CallAdapter.Factory = null

    override fun isDebugMode(): Boolean = false

    override fun noInternetConnectionHandler(): IOException = null
}
