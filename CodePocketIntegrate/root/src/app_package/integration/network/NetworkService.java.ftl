/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.integration.network;

import android.content.Context;
import java.io.IOException;
import retrofit2.CallAdapter;
import retrofit2.Converter;
import com.google.gson.GsonBuilder;
import com.tickaroo.tikxml.TikXml;
import com.tickaroo.tikxml.retrofit.TikXmlConverterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import jdp.retrofitkit.RetrofitManager;
import jdp.retrofitkit.SerializationFormatFactory;

public class NetworkManager extends RetrofitManager {
    public NetworkManager(Context context) {
        super(context);
    }

    @NotNull
    @Override
    public String initBaseURL() {
        return null;
    }

    @Override
    public int initCacheSize() {
        return 0;
    }

    @NotNull
    @Override
    public Converter.Factory initConverterFactory() {
             TikXml tikXml= new TikXml.Builder().exceptionOnUnreadXml(false).build();
             GsonBuilder gsonBuilder = new GsonBuilder();
             gsonBuilder.setLenient();
             return new SerializationFormatFactory.Builder()
                     .setXMLConverterFactory(TikXmlConverterFactory.create(tikXml))
                     .setJSONConverterFactory(GsonConverterFactory.create(gsonBuilder.create()))
                     .build();
    }

    @NotNull
    @Override
    public CallAdapter.Factory initRxAdapterFactory() {
        return new RxJava2CallAdapterFactory.create();
    }

    @Override
    public boolean isPrintLogEnabled() {
        return false;
    }

}
