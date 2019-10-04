package c.e.a.b.d.d;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import c.e.a.b.d.a.a;
import c.e.a.b.d.a.d;
import c.e.a.b.d.c;
import c.e.a.b.d.d.C0781d;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

/* renamed from: c.e.a.b.d.d.h  reason: case insensitive filesystem */
public abstract class C0785h<T extends IInterface> extends C0781d<T> implements a.f, C0786i {
    public final C0782e D;
    public final Set<Scope> E;
    public final Account F;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public C0785h(android.content.Context r10, android.os.Looper r11, int r12, c.e.a.b.d.d.C0782e r13, c.e.a.b.d.a.d.a r14, c.e.a.b.d.a.d.b r15) {
        /*
            r9 = this;
            c.e.a.b.d.d.j r3 = c.e.a.b.d.d.C0787j.a(r10)
            c.e.a.b.d.c r4 = c.e.a.b.d.c.a()
            c.e.a.b.d.d.r.a(r14)
            r7 = r14
            c.e.a.b.d.a.d$a r7 = (c.e.a.b.d.a.d.a) r7
            c.e.a.b.d.d.r.a(r15)
            r8 = r15
            c.e.a.b.d.a.d$b r8 = (c.e.a.b.d.a.d.b) r8
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.d.d.C0785h.<init>(android.content.Context, android.os.Looper, int, c.e.a.b.d.d.e, c.e.a.b.d.a.d$a, c.e.a.b.d.a.d$b):void");
    }

    public static C0781d.a a(d.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new z(aVar);
    }

    public Set<Scope> a(Set<Scope> set) {
        return set;
    }

    public final Set<Scope> b(Set<Scope> set) {
        a(set);
        for (Scope contains : set) {
            if (!set.contains(contains)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return set;
    }

    public int e() {
        return super.e();
    }

    public final Account k() {
        return this.F;
    }

    public final Set<Scope> q() {
        return this.E;
    }

    public static C0781d.b a(d.b bVar) {
        if (bVar == null) {
            return null;
        }
        return new A(bVar);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0785h(Context context, Looper looper, C0787j jVar, c cVar, int i2, C0782e eVar, d.a aVar, d.b bVar) {
        super(context, looper, jVar, cVar, i2, a(aVar), a(bVar), eVar.e());
        this.D = eVar;
        this.F = eVar.a();
        Set<Scope> c2 = eVar.c();
        b(c2);
        this.E = c2;
    }
}
