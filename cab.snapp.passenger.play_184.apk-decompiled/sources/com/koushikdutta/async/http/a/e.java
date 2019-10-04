package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import org.a.c;

public final class e implements a<c> {
    public static final String CONTENT_TYPE = "application/json";

    /* renamed from: a  reason: collision with root package name */
    byte[] f4614a;

    /* renamed from: b  reason: collision with root package name */
    c f4615b;

    public final String getContentType() {
        return "application/json";
    }

    public final boolean readFullyOnRequest() {
        return true;
    }

    public e() {
    }

    public e(c cVar) {
        this();
        this.f4615b = cVar;
    }

    public final void parse(n nVar, final a aVar) {
        new com.koushikdutta.async.c.e().parse(nVar).setCallback(new f<c>() {
            public final void onCompleted(Exception exc, c cVar) {
                e.this.f4615b = cVar;
                aVar.onCompleted(exc);
            }
        });
    }

    public final void write(d dVar, q qVar, a aVar) {
        af.writeAll(qVar, this.f4614a, aVar);
    }

    public final int length() {
        this.f4614a = this.f4615b.toString().getBytes();
        return this.f4614a.length;
    }

    public final c get() {
        return this.f4615b;
    }
}
