package com.yandex.metrica.impl.ob;

import android.os.ResultReceiver;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.k;

public class bd implements bb, lx {

    /* renamed from: a  reason: collision with root package name */
    private x f5884a;

    /* renamed from: b  reason: collision with root package name */
    private volatile ResultReceiver f5885b;

    public bd(x xVar, t tVar) {
        this.f5884a = xVar;
        this.f5885b = tVar.b().a();
        this.f5884a.a(this);
    }

    public void a(i iVar, t tVar) {
        if (!this.f5884a.d()) {
            this.f5884a.a(tVar);
            this.f5885b = tVar.b().a();
            this.f5884a.a(iVar, this);
        }
    }

    public void a(ma maVar) {
        k.a(this.f5885b, maVar);
    }

    public void a(lu luVar) {
        k.a(this.f5885b, luVar);
    }

    public void a() {
        this.f5884a.b(this);
    }

    public x b() {
        return this.f5884a;
    }
}
