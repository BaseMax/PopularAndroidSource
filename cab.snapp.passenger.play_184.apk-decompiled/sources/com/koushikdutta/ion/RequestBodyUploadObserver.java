package com.koushikdutta.ion;

import com.koushikdutta.async.a.g;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.a.a;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;

class RequestBodyUploadObserver implements a {
    a body;
    ProgressCallback callback;

    public RequestBodyUploadObserver(a aVar, ProgressCallback progressCallback) {
        this.body = aVar;
        this.callback = progressCallback;
    }

    public void write(d dVar, final q qVar, com.koushikdutta.async.a.a aVar) {
        final int length = this.body.length();
        this.body.write(dVar, new q() {
            int totalWritten;

            public void write(l lVar) {
                int remaining = lVar.remaining();
                qVar.write(lVar);
                this.totalWritten += remaining - lVar.remaining();
                RequestBodyUploadObserver.this.callback.onProgress((long) this.totalWritten, (long) length);
            }

            public void setWriteableCallback(g gVar) {
                qVar.setWriteableCallback(gVar);
            }

            public g getWriteableCallback() {
                return qVar.getWriteableCallback();
            }

            public boolean isOpen() {
                return qVar.isOpen();
            }

            public void end() {
                qVar.end();
            }

            public void setClosedCallback(com.koushikdutta.async.a.a aVar) {
                qVar.setClosedCallback(aVar);
            }

            public com.koushikdutta.async.a.a getClosedCallback() {
                return qVar.getClosedCallback();
            }

            public h getServer() {
                return qVar.getServer();
            }
        }, aVar);
    }

    public void parse(n nVar, com.koushikdutta.async.a.a aVar) {
        this.body.parse(nVar, aVar);
    }

    public String getContentType() {
        return this.body.getContentType();
    }

    public boolean readFullyOnRequest() {
        return this.body.readFullyOnRequest();
    }

    public int length() {
        return this.body.length();
    }

    public Object get() {
        return this.body.get();
    }
}
