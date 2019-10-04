package c.e.c.b;

import c.e.a.b.d.d.r;
import c.e.c.c.a;
import c.e.c.c.b;
import c.e.c.c.c;
import c.e.c.c.d;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class s implements d, c {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Class<?>, ConcurrentHashMap<b<Object>, Executor>> f11558a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public Queue<a<?>> f11559b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    public final Executor f11560c;

    public s(Executor executor) {
        this.f11560c = executor;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001c, code lost:
        if (r0.hasNext() == false) goto L_0x0032;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001e, code lost:
        r1 = r0.next();
        ((java.util.concurrent.Executor) r1.getValue()).execute(c.e.c.b.r.a(r1, r4));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0032, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0010, code lost:
        r0 = a(r4).iterator();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(c.e.c.c.a<?> r4) {
        /*
            r3 = this;
            c.e.a.b.d.d.r.a(r4)
            monitor-enter(r3)
            java.util.Queue<c.e.c.c.a<?>> r0 = r3.f11559b     // Catch:{ all -> 0x0033 }
            if (r0 == 0) goto L_0x000f
            java.util.Queue<c.e.c.c.a<?>> r0 = r3.f11559b     // Catch:{ all -> 0x0033 }
            r0.add(r4)     // Catch:{ all -> 0x0033 }
            monitor-exit(r3)     // Catch:{ all -> 0x0033 }
            return
        L_0x000f:
            monitor-exit(r3)     // Catch:{ all -> 0x0033 }
            java.util.Set r0 = r3.a(r4)
            java.util.Iterator r0 = r0.iterator()
        L_0x0018:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0032
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getValue()
            java.util.concurrent.Executor r2 = (java.util.concurrent.Executor) r2
            java.lang.Runnable r1 = c.e.c.b.r.a(r1, r4)
            r2.execute(r1)
            goto L_0x0018
        L_0x0032:
            return
        L_0x0033:
            r4 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0033 }
            goto L_0x0037
        L_0x0036:
            throw r4
        L_0x0037:
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.c.b.s.b(c.e.c.c.a):void");
    }

    public final synchronized Set<Map.Entry<b<Object>, Executor>> a(a<?> aVar) {
        Map map;
        map = this.f11558a.get(aVar.b());
        return map == null ? Collections.emptySet() : map.entrySet();
    }

    public synchronized <T> void a(Class<T> cls, Executor executor, b<? super T> bVar) {
        r.a(cls);
        r.a(bVar);
        r.a(executor);
        if (!this.f11558a.containsKey(cls)) {
            this.f11558a.put(cls, new ConcurrentHashMap());
        }
        this.f11558a.get(cls).put(bVar, executor);
    }

    public <T> void a(Class<T> cls, b<? super T> bVar) {
        a(cls, this.f11560c, bVar);
    }

    public void a() {
        Queue<a<?>> queue;
        synchronized (this) {
            if (this.f11559b != null) {
                queue = this.f11559b;
                this.f11559b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (a b2 : queue) {
                b(b2);
            }
        }
    }
}
