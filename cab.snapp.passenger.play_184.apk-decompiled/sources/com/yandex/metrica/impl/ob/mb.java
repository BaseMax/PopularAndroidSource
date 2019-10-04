package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.yandex.metrica.impl.bq;
import com.yandex.metrica.impl.br;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.ha;
import com.yandex.metrica.impl.ob.lf;
import com.yandex.metrica.impl.ob.ma;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class mb implements af {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6420a;

    /* renamed from: b  reason: collision with root package name */
    private final z f6421b;
    private final lz c;
    private volatile gk<ma> d = ha.a.a(ma.class).a(this.f6420a);
    private volatile br e;
    private lt f;

    public mb(Context context, String str, t tVar, lz lzVar) {
        this.f6420a = context;
        this.f6421b = new w(str);
        this.c = lzVar;
        ma a2 = this.d.a();
        a(a2);
        this.f = new lt(new lf.b(this.f6420a, this.f6421b.b()), a2, tVar);
    }

    public Context c() {
        return this.f6420a;
    }

    public z b() {
        return this.f6421b;
    }

    /* access modifiers changed from: package-private */
    public synchronized br a() {
        if (!d()) {
            return null;
        }
        if (this.e == null) {
            this.e = new br(this, e());
        }
        return this.e;
    }

    public synchronized boolean d() {
        boolean z;
        boolean z2;
        z = !a(nt.a(Long.valueOf(this.f.c().r), 0));
        String a2 = no.a(((lf) this.f.e()).E());
        if (!z && !TextUtils.isEmpty(a2) && !a2.equals(this.f.c().l)) {
            z = true;
        }
        if (!z) {
            hb d2 = hg.a().d();
            String q = ((lf) this.f.e()).q();
            if (d2 != null) {
                if (!TextUtils.isEmpty(d2.f6085a)) {
                    z2 = TextUtils.equals(q, d2.f6085a);
                    z = !z2;
                }
            }
            z2 = TextUtils.isEmpty(q);
            z = !z2;
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002c, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean a(long r7) {
        /*
            r6 = this;
            monitor-enter(r6)
            com.yandex.metrica.impl.ob.lt r0 = r6.f     // Catch:{ all -> 0x002d }
            com.yandex.metrica.impl.ob.kz r0 = r0.e()     // Catch:{ all -> 0x002d }
            com.yandex.metrica.impl.ob.lf r0 = (com.yandex.metrica.impl.ob.lf) r0     // Catch:{ all -> 0x002d }
            boolean r0 = r0.e()     // Catch:{ all -> 0x002d }
            r1 = 0
            if (r0 != 0) goto L_0x0012
            monitor-exit(r6)
            return r1
        L_0x0012:
            long r2 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x002d }
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            long r2 = r2 - r7
            r7 = 86400(0x15180, double:4.26873E-319)
            int r0 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r0 > 0) goto L_0x002b
            r7 = 0
            int r0 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r0 >= 0) goto L_0x0028
            goto L_0x002b
        L_0x0028:
            r7 = 1
            monitor-exit(r6)
            return r7
        L_0x002b:
            monitor-exit(r6)
            return r1
        L_0x002d:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.mb.a(long):boolean");
    }

    /* access modifiers changed from: package-private */
    public void b(ma maVar) {
        this.d.a(maVar);
    }

    public lf e() {
        return (lf) this.f.e();
    }

    private synchronized void g() {
        this.e = null;
    }

    public void a(bq.b bVar, lf lfVar, Map<String, List<String>> map) {
        Long q = bVar.q();
        Long a2 = bq.a(map);
        if (a2 != null) {
            nn.a().a(a2.longValue(), q);
        }
        ma a3 = a(bVar, lfVar);
        synchronized (this) {
            g();
            c(a3);
        }
        this.c.a(this.f6421b.b(), a3);
        a(a3);
    }

    /* access modifiers changed from: protected */
    public ma a(bq.b bVar, lf lfVar) {
        String a2 = no.a(lfVar.E());
        String k = bVar.k();
        String str = this.f.c().k;
        if (!no.b(no.a(k))) {
            k = no.b(no.a(str)) ? str : null;
        }
        return new ma.a(bVar.a()).a(System.currentTimeMillis() / 1000).a(hg.a().a(this.f6420a, new hb(bVar.h(), bVar.i()))).a(nt.a(bVar.j(), this.f.c().f6416a)).b(bVar.d()).c(bVar.c()).d(lfVar.D()).a(bVar.e()).b(bVar.g()).c(bVar.f()).e(bVar.t()).d(k).e(a2).b(no.a(k).equals(lfVar.E())).a(bVar.n()).a(bVar.o()).a(bVar.p()).f(bVar.r()).g(bVar.s()).a(bVar.u()).a(true).a();
    }

    /* access modifiers changed from: package-private */
    public void a(ma maVar) {
        h.a().b((j) new r(this.f6421b.b(), maVar));
        if (!TextUtils.isEmpty(maVar.f6416a)) {
            h.a().b((j) new s(maVar.f6416a, this.f6421b.b()));
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void c(ma maVar) {
        this.f.a(maVar);
        b(maVar);
        if (!bt.a(maVar.f6417b)) {
            Intent intent = new Intent("com.yandex.metrica.intent.action.SYNC");
            intent.putExtra("CAUSE", "CAUSE_DEVICE_ID");
            intent.putExtra("SYNC_TO_PKG", this.f6421b.b());
            intent.putExtra("SYNC_DATA", maVar.f6417b);
            intent.putExtra("SYNC_DATA_2", maVar.f6416a);
            this.f6420a.sendBroadcast(intent);
        }
    }

    public ma f() {
        return this.f.c();
    }

    public void a(lu luVar) {
        g();
        this.c.a(b().b(), luVar);
    }

    public synchronized void a(t tVar) {
        this.f.a(tVar);
        a((lf) this.f.e());
    }

    private synchronized void a(lf lfVar) {
        if (lfVar.I()) {
            boolean z = false;
            List<String> H = lfVar.H();
            ma.a aVar = null;
            if (bv.a((Collection) H) && !bv.a((Collection) lfVar.D())) {
                aVar = f().a().d((List<String>) null);
                z = true;
            }
            if (!bv.a((Collection) H) && !bv.a((Object) H, (Object) lfVar.D())) {
                aVar = f().a().d(H);
                z = true;
            }
            if (z) {
                c(aVar.a());
            }
        }
    }

    public void a(String str) {
        c(f().a().f(str).a());
    }
}
