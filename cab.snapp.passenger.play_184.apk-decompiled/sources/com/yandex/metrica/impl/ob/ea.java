package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.eg;
import java.util.concurrent.TimeUnit;

public abstract class ea implements ed<ef> {

    /* renamed from: a  reason: collision with root package name */
    private final ac f5941a;

    /* renamed from: b  reason: collision with root package name */
    private final gd f5942b;
    private final em c;
    private final ei d;

    public /* synthetic */ ee a(Object obj) {
        ef efVar = (ef) obj;
        if (this.c.i()) {
            lm.a(this.f5941a.c()).reportEvent("create session with non-empty storage");
        }
        ac acVar = this.f5941a;
        em emVar = this.c;
        long f = this.f5942b.f(-1);
        long j = 10000000000L;
        if (f >= 10000000000L) {
            j = 1 + f;
        }
        long j2 = j;
        this.f5942b.g(j2).i();
        this.c.d(j2).b(TimeUnit.MILLISECONDS.toSeconds(efVar.f5947a)).e(efVar.f5947a).a(0).a(true).h();
        this.f5941a.l().a(j2, this.d.a(), TimeUnit.MILLISECONDS.toSeconds(efVar.f5948b));
        return new ee(acVar, emVar, b());
    }

    public ea(ac acVar, gd gdVar, em emVar, ei eiVar) {
        this.f5941a = acVar;
        this.f5942b = gdVar;
        this.c = emVar;
        this.d = eiVar;
    }

    public final ee a() {
        if (this.c.i()) {
            return new ee(this.f5941a, this.c, b());
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public eg b() {
        return new eg.a(this.d, (byte) 0).a(this.c.g()).c(this.c.d()).b(this.c.c()).a(this.c.b()).d(this.c.e()).e(this.c.f()).a();
    }
}
