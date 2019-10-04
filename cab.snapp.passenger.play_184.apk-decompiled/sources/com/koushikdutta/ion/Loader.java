package com.koushikdutta.ion;

import android.content.Context;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.future.ResponseFuture;
import java.lang.reflect.Type;

public interface Loader {

    public static class LoaderEmitter {
        n emitter;
        HeadersResponse headers;
        long length;
        d request;
        ResponseServedFrom servedFrom;

        public LoaderEmitter(n nVar, long j, ResponseServedFrom responseServedFrom, HeadersResponse headersResponse, d dVar) {
            this.length = j;
            this.emitter = nVar;
            this.servedFrom = responseServedFrom;
            this.headers = headersResponse;
            this.request = dVar;
        }

        public n getDataEmitter() {
            return this.emitter;
        }

        public long length() {
            return this.length;
        }

        public ResponseServedFrom getServedFrom() {
            return this.servedFrom;
        }

        public HeadersResponse getHeaders() {
            return this.headers;
        }

        public d getRequest() {
            return this.request;
        }
    }

    e<n> load(Ion ion, d dVar, f<LoaderEmitter> fVar);

    <T> ResponseFuture<T> load(Ion ion, d dVar, Type type);

    e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z);

    e<d> resolve(Context context, Ion ion, d dVar);
}
