package i.a;

import h.a;
import h.c.b;
import h.f.b.j;
import i.a.e.h;
import kotlinx.coroutines.CoroutinesInternalError;

/* compiled from: Dispatched.kt */
public abstract class U<T> extends h {

    /* renamed from: c  reason: collision with root package name */
    public int f14660c;

    public U(int i2) {
        this.f14660c = i2;
    }

    public final Throwable a(Object obj) {
        if (!(obj instanceof C1129v)) {
            obj = null;
        }
        C1129v vVar = (C1129v) obj;
        if (vVar != null) {
            return vVar.f14867b;
        }
        return null;
    }

    public void a(Object obj, Throwable th) {
        j.b(th, "cause");
    }

    public <T> T d(Object obj) {
        return obj;
    }

    public abstract b<T> e();

    public abstract Object f();

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x009d, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x009e, code lost:
        r3 = kotlin.Result.f15776a;
        r0 = h.e.a(r0);
        kotlin.Result.a(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00bb, code lost:
        r0 = th;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:31:0x0092, B:38:0x00b0] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r9 = this;
            i.a.e.i r0 = r9.f14807b
            r1 = 0
            h.c.b r2 = r9.e()     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            if (r2 == 0) goto L_0x0089
            i.a.Q r2 = (i.a.Q) r2     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            h.c.b<T> r3 = r2.f14657h     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            h.c.e r4 = r3.b()     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            java.lang.Object r5 = r9.f()     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            java.lang.Object r2 = r2.f14655f     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            java.lang.Object r2 = i.a.c.z.b(r4, r2)     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            java.lang.Throwable r6 = r9.a(r5)     // Catch:{ all -> 0x0084 }
            int r7 = r9.f14660c     // Catch:{ all -> 0x0084 }
            boolean r7 = i.a.Ja.a(r7)     // Catch:{ all -> 0x0084 }
            if (r7 == 0) goto L_0x0030
            i.a.ra$b r7 = i.a.C1125ra.f14859c     // Catch:{ all -> 0x0084 }
            h.c.e$b r7 = r4.get(r7)     // Catch:{ all -> 0x0084 }
            i.a.ra r7 = (i.a.C1125ra) r7     // Catch:{ all -> 0x0084 }
            goto L_0x0031
        L_0x0030:
            r7 = r1
        L_0x0031:
            if (r6 != 0) goto L_0x0053
            if (r7 == 0) goto L_0x0053
            boolean r8 = r7.s()     // Catch:{ all -> 0x0084 }
            if (r8 != 0) goto L_0x0053
            java.util.concurrent.CancellationException r6 = r7.t()     // Catch:{ all -> 0x0084 }
            r9.a((java.lang.Object) r5, (java.lang.Throwable) r6)     // Catch:{ all -> 0x0084 }
            kotlin.Result$a r5 = kotlin.Result.f15776a     // Catch:{ all -> 0x0084 }
            java.lang.Throwable r5 = i.a.c.u.a(r6, (h.c.b<?>) r3)     // Catch:{ all -> 0x0084 }
            java.lang.Object r5 = h.e.a((java.lang.Throwable) r5)     // Catch:{ all -> 0x0084 }
            kotlin.Result.a(r5)     // Catch:{ all -> 0x0084 }
            r3.b(r5)     // Catch:{ all -> 0x0084 }
            goto L_0x0072
        L_0x0053:
            if (r6 == 0) goto L_0x0066
            kotlin.Result$a r5 = kotlin.Result.f15776a     // Catch:{ all -> 0x0084 }
            java.lang.Throwable r5 = i.a.c.u.a(r6, (h.c.b<?>) r3)     // Catch:{ all -> 0x0084 }
            java.lang.Object r5 = h.e.a((java.lang.Throwable) r5)     // Catch:{ all -> 0x0084 }
            kotlin.Result.a(r5)     // Catch:{ all -> 0x0084 }
            r3.b(r5)     // Catch:{ all -> 0x0084 }
            goto L_0x0072
        L_0x0066:
            java.lang.Object r5 = r9.d(r5)     // Catch:{ all -> 0x0084 }
            kotlin.Result$a r6 = kotlin.Result.f15776a     // Catch:{ all -> 0x0084 }
            kotlin.Result.a(r5)     // Catch:{ all -> 0x0084 }
            r3.b(r5)     // Catch:{ all -> 0x0084 }
        L_0x0072:
            h.h r3 = h.h.f14579a     // Catch:{ all -> 0x0084 }
            i.a.c.z.a(r4, r2)     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            kotlin.Result$a r2 = kotlin.Result.f15776a     // Catch:{ Throwable -> 0x0082 }
            r0.v()     // Catch:{ Throwable -> 0x0082 }
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x0082 }
            kotlin.Result.a(r0)     // Catch:{ Throwable -> 0x0082 }
            goto L_0x00c5
        L_0x0082:
            r0 = move-exception
            goto L_0x00bc
        L_0x0084:
            r3 = move-exception
            i.a.c.z.a(r4, r2)     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            throw r3     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
        L_0x0089:
            kotlin.TypeCastException r2 = new kotlin.TypeCastException     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"
            r2.<init>(r3)     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
            throw r2     // Catch:{ Throwable -> 0x00af, all -> 0x0091 }
        L_0x0091:
            r2 = move-exception
            kotlin.Result$a r3 = kotlin.Result.f15776a     // Catch:{ Throwable -> 0x009d }
            r0.v()     // Catch:{ Throwable -> 0x009d }
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x009d }
            kotlin.Result.a(r0)     // Catch:{ Throwable -> 0x009d }
            goto L_0x00a7
        L_0x009d:
            r0 = move-exception
            kotlin.Result$a r3 = kotlin.Result.f15776a
            java.lang.Object r0 = h.e.a((java.lang.Throwable) r0)
            kotlin.Result.a(r0)
        L_0x00a7:
            java.lang.Throwable r0 = kotlin.Result.b(r0)
            r9.a((java.lang.Throwable) r1, (java.lang.Throwable) r0)
            throw r2
        L_0x00af:
            r1 = move-exception
            kotlin.Result$a r2 = kotlin.Result.f15776a     // Catch:{ Throwable -> 0x00bb }
            r0.v()     // Catch:{ Throwable -> 0x00bb }
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x00bb }
            kotlin.Result.a(r0)     // Catch:{ Throwable -> 0x00bb }
            goto L_0x00c5
        L_0x00bb:
            r0 = move-exception
        L_0x00bc:
            kotlin.Result$a r2 = kotlin.Result.f15776a
            java.lang.Object r0 = h.e.a((java.lang.Throwable) r0)
            kotlin.Result.a(r0)
        L_0x00c5:
            java.lang.Throwable r0 = kotlin.Result.b(r0)
            r9.a((java.lang.Throwable) r1, (java.lang.Throwable) r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.U.run():void");
    }

    public final void a(Throwable th, Throwable th2) {
        if (th != null || th2 != null) {
            if (!(th == null || th2 == null)) {
                a.a(th, th2);
            }
            if (th == null) {
                th = th2;
            }
            String str = "Fatal exception in coroutines machinery for " + this + ". " + "Please read KDoc to 'handleFatalException' method and report this incident to maintainers";
            if (th != null) {
                E.a(e().b(), (Throwable) new CoroutinesInternalError(str, th));
                return;
            }
            j.a();
            throw null;
        }
    }
}
