package retrofit2;

import io.fabric.sdk.android.services.network.c;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;

final class HttpServiceMethod<ResponseT, ReturnT> extends ServiceMethod<ReturnT> {
    private final CallAdapter<ResponseT, ReturnT> callAdapter;
    private final Call.Factory callFactory;
    private final RequestFactory requestFactory;
    private final Converter<ResponseBody, ResponseT> responseConverter;

    static <ResponseT, ReturnT> HttpServiceMethod<ResponseT, ReturnT> parseAnnotations(Retrofit retrofit, Method method, RequestFactory requestFactory2) {
        CallAdapter createCallAdapter = createCallAdapter(retrofit, method);
        Type responseType = createCallAdapter.responseType();
        if (responseType == Response.class || responseType == Response.class) {
            throw Utils.methodError(method, "'" + Utils.getRawType(responseType).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
        } else if (!requestFactory2.httpMethod.equals(c.METHOD_HEAD) || Void.class.equals(responseType)) {
            return new HttpServiceMethod<>(requestFactory2, retrofit.callFactory, createCallAdapter, createResponseConverter(retrofit, method, responseType));
        } else {
            throw Utils.methodError(method, "HEAD method must use Void as response type.", new Object[0]);
        }
    }

    private static <ResponseT, ReturnT> CallAdapter<ResponseT, ReturnT> createCallAdapter(Retrofit retrofit, Method method) {
        Type genericReturnType = method.getGenericReturnType();
        try {
            return retrofit.callAdapter(genericReturnType, method.getAnnotations());
        } catch (RuntimeException e) {
            throw Utils.methodError(method, e, "Unable to create call adapter for %s", genericReturnType);
        }
    }

    private static <ResponseT> Converter<ResponseBody, ResponseT> createResponseConverter(Retrofit retrofit, Method method, Type type) {
        try {
            return retrofit.responseBodyConverter(type, method.getAnnotations());
        } catch (RuntimeException e) {
            throw Utils.methodError(method, e, "Unable to create converter for %s", type);
        }
    }

    private HttpServiceMethod(RequestFactory requestFactory2, Call.Factory factory, CallAdapter<ResponseT, ReturnT> callAdapter2, Converter<ResponseBody, ResponseT> converter) {
        this.requestFactory = requestFactory2;
        this.callFactory = factory;
        this.callAdapter = callAdapter2;
        this.responseConverter = converter;
    }

    /* access modifiers changed from: package-private */
    public final ReturnT invoke(Object[] objArr) {
        return this.callAdapter.adapt(new OkHttpCall(this.requestFactory, objArr, this.callFactory, this.responseConverter));
    }
}
