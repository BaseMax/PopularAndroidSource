package com.google.android.gms.a;

import java.util.Iterator;

final class d implements n<T> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c f2546a;

    d(c cVar) {
        this.f2546a = cVar;
    }

    public final void zza(T t) {
        c cVar = this.f2546a;
        cVar.f2544a = t;
        Iterator it = cVar.c.iterator();
        while (it.hasNext()) {
            ((k) it.next()).zzb(this.f2546a.f2544a);
        }
        this.f2546a.c.clear();
        this.f2546a.f2545b = null;
    }
}
