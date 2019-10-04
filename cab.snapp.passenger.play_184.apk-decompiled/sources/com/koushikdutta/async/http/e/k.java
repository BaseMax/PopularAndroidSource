package com.koushikdutta.async.http.e;

import com.koushikdutta.async.a.d;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.a.a;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;

public final class k implements a<Void> {

    /* renamed from: a  reason: collision with root package name */
    int f4721a = -1;

    /* renamed from: b  reason: collision with root package name */
    n f4722b;
    private String c;

    public final Void get() {
        return null;
    }

    public final boolean readFullyOnRequest() {
        return false;
    }

    public k(String str) {
        this.c = str;
    }

    public k(n nVar, String str, int i) {
        this.c = str;
        this.f4722b = nVar;
        this.f4721a = i;
    }

    public final void write(d dVar, q qVar, com.koushikdutta.async.a.a aVar) {
        af.pump(this.f4722b, qVar, aVar);
        if (this.f4722b.isPaused()) {
            this.f4722b.resume();
        }
    }

    public final String getContentType() {
        return this.c;
    }

    public final int length() {
        return this.f4721a;
    }

    @Deprecated
    public final void setCallbacks(com.koushikdutta.async.a.d dVar, com.koushikdutta.async.a.a aVar) {
        this.f4722b.setEndCallback(aVar);
        this.f4722b.setDataCallback(dVar);
    }

    public final n getEmitter() {
        return this.f4722b;
    }

    public final void parse(n nVar, com.koushikdutta.async.a.a aVar) {
        this.f4722b = nVar;
        nVar.setEndCallback(aVar);
        nVar.setDataCallback(new d.a());
    }
}
