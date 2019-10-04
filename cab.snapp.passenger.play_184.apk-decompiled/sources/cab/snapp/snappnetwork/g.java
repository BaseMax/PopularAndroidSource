package cab.snapp.snappnetwork;

import com.google.gson.e;
import com.google.gson.f;
import com.ihsanbal.logging.Level;
import com.ihsanbal.logging.d;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Authenticator;
import okhttp3.CertificatePinner;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

public final class g {
    g() {
    }

    public final Retrofit createRetrofitClient(OkHttpClient okHttpClient) {
        return new Retrofit.Builder().baseUrl("http://snapp.ir").client(okHttpClient).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create(provideGson())).build();
    }

    public static f provideGsonBuilder() {
        return new f().setLenient();
    }

    public static e provideGson() {
        return provideGsonBuilder().setLenient().create();
    }

    /* access modifiers changed from: package-private */
    public final OkHttpClient a(Authenticator authenticator, List<Interceptor> list, CertificatePinner certificatePinner, boolean z) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new Interceptor() {
            public final Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request();
                return chain.proceed(request.newBuilder().method(request.method(), request.body()).build());
            }
        });
        if (z) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
            httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
            builder.addInterceptor(httpLoggingInterceptor);
            builder.addInterceptor(new d.a().setLevel(Level.BASIC).loggable(true).log(4).request("SnappNetworkRequest").response("SnappNetworkResponse").build());
        }
        if (certificatePinner != null && !z) {
            builder.certificatePinner(certificatePinner);
        }
        if (list != null) {
            for (Interceptor addInterceptor : list) {
                builder.addInterceptor(addInterceptor);
            }
        }
        if (authenticator != null) {
            builder.authenticator(authenticator);
        }
        builder.connectTimeout(15, TimeUnit.SECONDS);
        builder.readTimeout(15, TimeUnit.SECONDS);
        return builder.build();
    }
}
