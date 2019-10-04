package com.yandex.metrica.impl;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.lw;
import com.yandex.metrica.impl.ob.oo;
import com.yandex.metrica.impl.ob.u;

class bf {

    /* renamed from: a  reason: collision with root package name */
    protected final CounterConfiguration f5750a;

    /* renamed from: b  reason: collision with root package name */
    protected r f5751b;
    protected aw c;
    private final u d;
    private u e = new u();

    protected bf(u uVar, CounterConfiguration counterConfiguration) {
        this.d = uVar;
        this.f5750a = counterConfiguration;
    }

    /* access modifiers changed from: package-private */
    public void a(oo ooVar) {
        this.f5751b = new r(ooVar);
    }

    /* access modifiers changed from: package-private */
    public CounterConfiguration b() {
        return this.f5750a;
    }

    /* access modifiers changed from: package-private */
    public Bundle c() {
        Bundle bundle = new Bundle();
        this.f5750a.a(bundle);
        this.d.b(bundle);
        return bundle;
    }

    /* access modifiers changed from: package-private */
    public void a(lw lwVar) {
        b(lwVar);
    }

    /* access modifiers changed from: package-private */
    public void d() {
        this.e.b();
    }

    /* access modifiers changed from: package-private */
    public boolean e() {
        return this.e.a();
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return this.e.c();
    }

    /* access modifiers changed from: package-private */
    public void b(lw lwVar) {
        if (lwVar != null) {
            this.f5750a.b(lwVar.a());
        }
    }

    /* access modifiers changed from: package-private */
    public void a(k kVar) {
        this.f5750a.a((ResultReceiver) kVar);
    }

    /* access modifiers changed from: package-private */
    public void a(String str, String str2) {
        this.f5751b.a(str, str2);
    }

    /* access modifiers changed from: package-private */
    public String f() {
        return this.f5751b.a();
    }

    /* access modifiers changed from: package-private */
    public aw g() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public void a(aw awVar) {
        this.c = awVar;
    }

    public u h() {
        return this.d;
    }
}
