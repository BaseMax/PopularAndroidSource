package com.yandex.metrica.impl;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.impl.ah;
import com.yandex.metrica.impl.ob.h;
import com.yandex.metrica.impl.ob.j;
import com.yandex.metrica.impl.ob.k;
import com.yandex.metrica.impl.ob.l;
import com.yandex.metrica.impl.ob.ni;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class bj implements ah.a {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final x f5762a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final ah f5763b;
    /* access modifiers changed from: private */
    public final Object c = new Object();
    /* access modifiers changed from: private */
    public final ExecutorService d = Executors.newSingleThreadExecutor(new ni("YMM-RS"));

    class a extends b {
        /* synthetic */ a(bj bjVar, d dVar, byte b2) {
            this(dVar);
        }

        private a(d dVar) {
            super(bj.this, dVar, (byte) 0);
        }

        /* renamed from: a */
        public Void call() {
            bj.this.f5763b.b();
            return super.call();
        }

        /* access modifiers changed from: package-private */
        public boolean b() {
            d dVar = this.f5765b;
            Context b2 = bj.this.f5762a.b();
            Intent b3 = bo.b(b2);
            b3.putExtras(dVar.f5767a.a(dVar.f5768b.c()));
            try {
                b2.startService(b3);
            } catch (Exception unused) {
            }
            return false;
        }
    }

    class b implements Callable<Void> {

        /* renamed from: b  reason: collision with root package name */
        final d f5765b;
        boolean c;

        /* synthetic */ b(bj bjVar, d dVar, byte b2) {
            this(dVar);
        }

        private b(d dVar) {
            this.f5765b = dVar;
            h.a().a(this, ax.class, l.a(new k<ax>() {
                public /* bridge */ /* synthetic */ void a(j jVar) {
                    a();
                }

                public void a() {
                    b.this.c = true;
                }
            }).a());
        }

        /* renamed from: a */
        public Void call() {
            int i = 0;
            do {
                try {
                    IMetricaService e = bj.this.f5763b.e();
                    if (e != null && a(e, this.f5765b)) {
                        break;
                    }
                    i++;
                    if (!b() || this.c) {
                        break;
                    }
                } catch (Throwable unused) {
                    h.a().a((Object) this);
                    return null;
                }
            } while (i < 3);
            h.a().a((Object) this);
            return null;
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Can't wrap try/catch for region: R(4:5|6|7|8) */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0029 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean b() {
            /*
                r5 = this;
                com.yandex.metrica.impl.bj r0 = com.yandex.metrica.impl.bj.this
                com.yandex.metrica.impl.ah r0 = r0.f5763b
                r0.a()
                com.yandex.metrica.impl.bj r0 = com.yandex.metrica.impl.bj.this
                java.lang.Object r0 = r0.c
                monitor-enter(r0)
                com.yandex.metrica.impl.bj r1 = com.yandex.metrica.impl.bj.this     // Catch:{ all -> 0x003e }
                com.yandex.metrica.impl.ah r1 = r1.f5763b     // Catch:{ all -> 0x003e }
                boolean r1 = r1.d()     // Catch:{ all -> 0x003e }
                if (r1 != 0) goto L_0x003b
                com.yandex.metrica.impl.bj r1 = com.yandex.metrica.impl.bj.this     // Catch:{ InterruptedException -> 0x0029 }
                java.lang.Object r1 = r1.c     // Catch:{ InterruptedException -> 0x0029 }
                r2 = 500(0x1f4, double:2.47E-321)
                r4 = 0
                r1.wait(r2, r4)     // Catch:{ InterruptedException -> 0x0029 }
                goto L_0x003b
            L_0x0029:
                com.yandex.metrica.impl.bj r1 = com.yandex.metrica.impl.bj.this     // Catch:{ all -> 0x003e }
                java.lang.Object r1 = r1.c     // Catch:{ all -> 0x003e }
                r1.notifyAll()     // Catch:{ all -> 0x003e }
                com.yandex.metrica.impl.bj r1 = com.yandex.metrica.impl.bj.this     // Catch:{ all -> 0x003e }
                java.util.concurrent.ExecutorService r1 = r1.d     // Catch:{ all -> 0x003e }
                r1.shutdownNow()     // Catch:{ all -> 0x003e }
            L_0x003b:
                monitor-exit(r0)     // Catch:{ all -> 0x003e }
                r0 = 1
                return r0
            L_0x003e:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x003e }
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bj.b.b():boolean");
        }

        private boolean a(IMetricaService iMetricaService, d dVar) {
            try {
                bj.this.f5762a.a(iMetricaService, dVar.b(), dVar.f5768b);
                return true;
            } catch (RemoteException unused) {
                return false;
            }
        }
    }

    public interface c {
        i a(i iVar);
    }

    public static class d {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public i f5767a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public bf f5768b;
        private boolean c = false;
        private c d;

        d(i iVar, bf bfVar) {
            this.f5767a = iVar;
            this.f5768b = bfVar;
        }

        /* access modifiers changed from: package-private */
        public d a(c cVar) {
            this.d = cVar;
            return this;
        }

        /* access modifiers changed from: package-private */
        public d a(boolean z) {
            this.c = z;
            return this;
        }

        /* access modifiers changed from: package-private */
        public bf a() {
            return this.f5768b;
        }

        /* access modifiers changed from: package-private */
        public i b() {
            c cVar = this.d;
            return cVar != null ? cVar.a(this.f5767a) : this.f5767a;
        }

        /* access modifiers changed from: package-private */
        public boolean c() {
            return this.c;
        }

        public String toString() {
            return "ReportToSend{mReport=" + this.f5767a + ", mEnvironment=" + this.f5768b + ", mCrash=" + this.c + ", mAction=" + this.d + '}';
        }
    }

    public bj(x xVar) {
        this.f5762a = xVar;
        this.f5763b = xVar.a();
        this.f5763b.a((ah.a) this);
    }

    public Future<Void> a(d dVar) {
        return this.d.submit(dVar.c() ? new a(this, dVar, (byte) 0) : new b(this, dVar, (byte) 0));
    }

    public void a() {
        synchronized (this.c) {
            this.c.notifyAll();
        }
    }
}
