package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.c.f;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;

public final class j implements a<String> {
    public static final String CONTENT_TYPE = "text/plain";

    /* renamed from: a  reason: collision with root package name */
    byte[] f4635a;

    /* renamed from: b  reason: collision with root package name */
    String f4636b;

    public final String getContentType() {
        return CONTENT_TYPE;
    }

    public final boolean readFullyOnRequest() {
        return true;
    }

    public j() {
    }

    public j(String str) {
        this();
        this.f4636b = str;
    }

    public final void parse(n nVar, final a aVar) {
        new f().parse(nVar).setCallback(new com.koushikdutta.async.b.f<String>() {
            public final void onCompleted(Exception exc, String str) {
                j.this.f4636b = str;
                aVar.onCompleted(exc);
            }
        });
    }

    public final void write(d dVar, q qVar, a aVar) {
        if (this.f4635a == null) {
            this.f4635a = this.f4636b.getBytes();
        }
        af.writeAll(qVar, this.f4635a, aVar);
    }

    public final int length() {
        if (this.f4635a == null) {
            this.f4635a = this.f4636b.getBytes();
        }
        return this.f4635a.length;
    }

    public final String toString() {
        return this.f4636b;
    }

    public final String get() {
        return toString();
    }
}
