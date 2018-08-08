/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.integration.network;

import android.content.Context;
import java.io.IOException;
import jdp.pocketlib.service.RetrofitManager;
import retrofit2.CallAdapter;
import retrofit2.Converter;
import jdp.pocketlib.service.Gson;
import jdp.pocketlib.service.Xml;
import jdp.pocketlib.service.MultipleConverterFactory;
import com.google.gson.GsonBuilder;
import com.tickaroo.tikxml.TikXml;
import com.tickaroo.tikxml.retrofit.TikXmlConverterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;

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
             return new MultipleConverterFactory.Builder()
                     .add(Xml.class, TikXmlConverterFactory.create(tikXml))
                     .add(Gson.class, GsonConverterFactory.create(gsonBuilder.create()))
                     .build();
    }

    @NotNull
    @Override
    public CallAdapter.Factory initRxAdapterFactory() {
        return new RxJava2CallAdapterFactory.create();
    }

    @Override
    public boolean isDebugMode() {
        return false;
    }

}
