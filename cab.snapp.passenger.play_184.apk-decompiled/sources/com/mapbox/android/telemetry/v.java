package com.mapbox.android.telemetry;

import b.d;
import b.k;
import b.n;
import b.u;
import io.fabric.sdk.android.services.network.c;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

final class v implements Interceptor {
    v() {
    }

    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        if (request.body() == null || request.header(c.HEADER_CONTENT_ENCODING) != null) {
            return chain.proceed(request);
        }
        Request.Builder header = request.newBuilder().header(c.HEADER_CONTENT_ENCODING, c.ENCODING_GZIP);
        String method = request.method();
        final RequestBody body = request.body();
        return chain.proceed(header.method(method, new RequestBody() {
            public final long contentLength() {
                return -1;
            }

            public final MediaType contentType() {
                return body.contentType();
            }

            public final void writeTo(d dVar) throws IOException {
                d buffer = n.buffer((u) new k(dVar));
                body.writeTo(buffer);
                buffer.close();
            }
        }).build());
    }
}
