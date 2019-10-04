package com.google.android.gms.analytics;

import java.util.Iterator;

final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ o f2595a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ r f2596b;

    s(r rVar, o oVar) {
        this.f2596b = rVar;
        this.f2595a = oVar;
    }

    public final void run() {
        this.f2595a.f2587a.a(this.f2595a);
        Iterator it = this.f2596b.d.iterator();
        while (it.hasNext()) {
            it.next();
        }
        r.a(this.f2595a);
    }
}
