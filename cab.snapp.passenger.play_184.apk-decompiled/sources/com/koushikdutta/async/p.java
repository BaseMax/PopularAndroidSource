package com.koushikdutta.async;

import com.koushikdutta.async.a.d;

public class p implements d {
    static final /* synthetic */ boolean d = (!p.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    d f4849a;

    /* renamed from: b  reason: collision with root package name */
    int f4850b;
    l c = new l();

    public void read(int i, d dVar) {
        if (d || this.f4849a == null) {
            this.f4850b = i;
            this.f4849a = dVar;
            if (d || !this.c.hasRemaining()) {
                this.c.recycle();
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public void onDataAvailable(n nVar, l lVar) {
        boolean z;
        if (d || this.f4849a != null) {
            do {
                lVar.get(this.c, Math.min(lVar.remaining(), this.f4850b - this.c.remaining()));
                lVar.remaining();
                if (this.f4850b > this.c.remaining()) {
                    z = false;
                } else {
                    d dVar = this.f4849a;
                    this.f4849a = null;
                    dVar.onDataAvailable(nVar, this.c);
                    if (d || !this.c.hasRemaining()) {
                        z = true;
                    } else {
                        throw new AssertionError();
                    }
                }
                if (!z) {
                    break;
                }
            } while (this.f4849a != null);
            lVar.remaining();
            return;
        }
        throw new AssertionError();
    }
}
