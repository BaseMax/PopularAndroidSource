package com.koushikdutta.ion.loader;

import android.text.TextUtils;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.http.c.a;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.http.q;
import com.koushikdutta.async.n;
import com.koushikdutta.ion.HeadersResponse;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.Loader;
import com.koushikdutta.ion.ResponseServedFrom;

public class HttpLoader extends SimpleLoader {
    public e<n> load(Ion ion, d dVar, final f<Loader.LoaderEmitter> fVar) {
        if (!dVar.getUri().getScheme().startsWith("http")) {
            return null;
        }
        return ion.getHttpClient().execute(dVar, (a) new a() {
            public void onConnectCompleted(Exception exc, com.koushikdutta.async.http.e eVar) {
                d dVar;
                HeadersResponse headersResponse;
                ResponseServedFrom responseServedFrom;
                long j;
                ResponseServedFrom responseServedFrom2 = ResponseServedFrom.LOADED_FROM_NETWORK;
                if (eVar != null) {
                    d request = eVar.getRequest();
                    HeadersResponse headersResponse2 = new HeadersResponse(eVar.code(), eVar.message(), eVar.headers());
                    j = (long) q.contentLength(headersResponse2.getHeaders());
                    String str = eVar.headers().get(com.koushikdutta.async.http.b.e.SERVED_FROM);
                    if (TextUtils.equals(str, com.koushikdutta.async.http.b.e.CACHE)) {
                        responseServedFrom2 = ResponseServedFrom.LOADED_FROM_CACHE;
                    } else if (TextUtils.equals(str, com.koushikdutta.async.http.b.e.CONDITIONAL_CACHE)) {
                        responseServedFrom2 = ResponseServedFrom.LOADED_FROM_CONDITIONAL_CACHE;
                    }
                    responseServedFrom = responseServedFrom2;
                    dVar = request;
                    headersResponse = headersResponse2;
                } else {
                    j = -1;
                    responseServedFrom = responseServedFrom2;
                    headersResponse = null;
                    dVar = null;
                }
                f fVar = fVar;
                Loader.LoaderEmitter loaderEmitter = new Loader.LoaderEmitter(eVar, j, responseServedFrom, headersResponse, dVar);
                fVar.onCompleted(exc, loaderEmitter);
            }
        });
    }
}
