package com.koushikdutta.ion.mock;

import com.koushikdutta.async.b.a;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.http.n;
import com.koushikdutta.ion.HeadersResponse;
import com.koushikdutta.ion.Response;
import com.koushikdutta.ion.ResponseServedFrom;
import com.koushikdutta.ion.future.ResponseFuture;

public class MockResponseFuture<T> extends i<T> implements ResponseFuture<T> {
    private d request;

    public MockResponseFuture(d dVar) {
        this.request = dVar;
    }

    /* access modifiers changed from: protected */
    public n getHeaders() {
        return new n();
    }

    /* access modifiers changed from: protected */
    public HeadersResponse getHeadersResponse() {
        return new HeadersResponse(200, "OK", getHeaders());
    }

    /* access modifiers changed from: private */
    public Response<T> getResponse(Exception exc, T t) {
        Response response = new Response(this.request, ResponseServedFrom.LOADED_FROM_NETWORK, getHeadersResponse(), exc, t);
        return response;
    }

    public e<Response<T>> withResponse() {
        final i iVar = new i();
        setCallback((f) new f<T>() {
            public void onCompleted(Exception exc, T t) {
                iVar.setComplete(MockResponseFuture.this.getResponse(exc, t));
            }
        });
        iVar.setParent((a) this);
        return iVar;
    }
}
