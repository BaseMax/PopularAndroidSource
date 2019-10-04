package com.koushikdutta.async;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;

public abstract class o implements n {

    /* renamed from: a  reason: collision with root package name */
    a f4847a;

    /* renamed from: b  reason: collision with root package name */
    d f4848b;
    private boolean c;

    public String charset() {
        return null;
    }

    public void report(Exception exc) {
        if (!this.c) {
            this.c = true;
            if (getEndCallback() != null) {
                getEndCallback().onCompleted(exc);
            }
        }
    }

    public final void setEndCallback(a aVar) {
        this.f4847a = aVar;
    }

    public final a getEndCallback() {
        return this.f4847a;
    }

    public void setDataCallback(d dVar) {
        this.f4848b = dVar;
    }

    public d getDataCallback() {
        return this.f4848b;
    }
}
