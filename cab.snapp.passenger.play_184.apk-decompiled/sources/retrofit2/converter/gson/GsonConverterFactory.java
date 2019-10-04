package retrofit2.converter.gson;

import com.google.gson.b.a;
import com.google.gson.e;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

public final class GsonConverterFactory extends Converter.Factory {
    private final e gson;

    public static GsonConverterFactory create() {
        return create(new e());
    }

    public static GsonConverterFactory create(e eVar) {
        if (eVar != null) {
            return new GsonConverterFactory(eVar);
        }
        throw new NullPointerException("gson == null");
    }

    private GsonConverterFactory(e eVar) {
        this.gson = eVar;
    }

    public final Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new GsonResponseBodyConverter(this.gson, this.gson.getAdapter(a.get(type)));
    }

    public final Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new GsonRequestBodyConverter(this.gson, this.gson.getAdapter(a.get(type)));
    }
}
