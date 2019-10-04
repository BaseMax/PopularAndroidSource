package b.H.a.b.b;

import android.content.Context;
import b.H.a.b.a;
import b.H.f;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: ConstraintTracker */
public abstract class e<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1405a = f.a("ConstraintTracker");

    /* renamed from: b  reason: collision with root package name */
    public final Context f1406b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f1407c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public final Set<a<T>> f1408d = new LinkedHashSet();

    /* renamed from: e  reason: collision with root package name */
    public T f1409e;

    public e(Context context) {
        this.f1406b = context.getApplicationContext();
    }

    public abstract T a();

    public void a(a<T> aVar) {
        synchronized (this.f1407c) {
            if (this.f1408d.add(aVar)) {
                if (this.f1408d.size() == 1) {
                    this.f1409e = a();
                    f.a().a(f1405a, String.format("%s: initial state = %s", new Object[]{getClass().getSimpleName(), this.f1409e}), new Throwable[0]);
                    b();
                }
                aVar.a(this.f1409e);
            }
        }
    }

    public abstract void b();

    public void b(a<T> aVar) {
        synchronized (this.f1407c) {
            if (this.f1408d.remove(aVar) && this.f1408d.isEmpty()) {
                c();
            }
        }
    }

    public abstract void c();

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0036, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(T r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f1407c
            monitor-enter(r0)
            T r1 = r3.f1409e     // Catch:{ all -> 0x0037 }
            if (r1 == r4) goto L_0x0035
            T r1 = r3.f1409e     // Catch:{ all -> 0x0037 }
            if (r1 == 0) goto L_0x0014
            T r1 = r3.f1409e     // Catch:{ all -> 0x0037 }
            boolean r1 = r1.equals(r4)     // Catch:{ all -> 0x0037 }
            if (r1 == 0) goto L_0x0014
            goto L_0x0035
        L_0x0014:
            r3.f1409e = r4     // Catch:{ all -> 0x0037 }
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch:{ all -> 0x0037 }
            java.util.Set<b.H.a.b.a<T>> r1 = r3.f1408d     // Catch:{ all -> 0x0037 }
            r4.<init>(r1)     // Catch:{ all -> 0x0037 }
            java.util.Iterator r4 = r4.iterator()     // Catch:{ all -> 0x0037 }
        L_0x0021:
            boolean r1 = r4.hasNext()     // Catch:{ all -> 0x0037 }
            if (r1 == 0) goto L_0x0033
            java.lang.Object r1 = r4.next()     // Catch:{ all -> 0x0037 }
            b.H.a.b.a r1 = (b.H.a.b.a) r1     // Catch:{ all -> 0x0037 }
            T r2 = r3.f1409e     // Catch:{ all -> 0x0037 }
            r1.a(r2)     // Catch:{ all -> 0x0037 }
            goto L_0x0021
        L_0x0033:
            monitor-exit(r0)     // Catch:{ all -> 0x0037 }
            return
        L_0x0035:
            monitor-exit(r0)     // Catch:{ all -> 0x0037 }
            return
        L_0x0037:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0037 }
            goto L_0x003b
        L_0x003a:
            throw r4
        L_0x003b:
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: b.H.a.b.b.e.a(java.lang.Object):void");
    }
}
