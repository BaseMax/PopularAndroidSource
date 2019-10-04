package b.H.a.d.a;

import androidx.work.impl.utils.futures.DirectExecutor;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: AbstractFuture */
public abstract class b<V> implements c.e.b.a.a.a<V> {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f1503a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f1504b = Logger.getLogger(b.class.getName());

    /* renamed from: c  reason: collision with root package name */
    public static final a f1505c;

    /* renamed from: d  reason: collision with root package name */
    public static final Object f1506d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public volatile Object f1507e;

    /* renamed from: f  reason: collision with root package name */
    public volatile d f1508f;

    /* renamed from: g  reason: collision with root package name */
    public volatile h f1509g;

    /* compiled from: AbstractFuture */
    private static abstract class a {
        public a() {
        }

        public abstract void a(h hVar, h hVar2);

        public abstract void a(h hVar, Thread thread);

        public abstract boolean a(b<?> bVar, d dVar, d dVar2);

        public abstract boolean a(b<?> bVar, h hVar, h hVar2);

        public abstract boolean a(b<?> bVar, Object obj, Object obj2);
    }

    /* renamed from: b.H.a.d.a.b$b  reason: collision with other inner class name */
    /* compiled from: AbstractFuture */
    private static final class C0018b {

        /* renamed from: a  reason: collision with root package name */
        public static final C0018b f1510a;

        /* renamed from: b  reason: collision with root package name */
        public static final C0018b f1511b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f1512c;

        /* renamed from: d  reason: collision with root package name */
        public final Throwable f1513d;

        static {
            if (b.f1503a) {
                f1511b = null;
                f1510a = null;
                return;
            }
            f1511b = new C0018b(false, null);
            f1510a = new C0018b(true, null);
        }

        public C0018b(boolean z, Throwable th) {
            this.f1512c = z;
            this.f1513d = th;
        }
    }

    /* compiled from: AbstractFuture */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f1514a = new c(new AbstractFuture$Failure$1("Failure occurred while trying to finish a future."));

        /* renamed from: b  reason: collision with root package name */
        public final Throwable f1515b;

        public c(Throwable th) {
            b.a(th);
            this.f1515b = th;
        }
    }

    /* compiled from: AbstractFuture */
    private static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static final d f1516a = new d(null, null);

        /* renamed from: b  reason: collision with root package name */
        public final Runnable f1517b;

        /* renamed from: c  reason: collision with root package name */
        public final Executor f1518c;

        /* renamed from: d  reason: collision with root package name */
        public d f1519d;

        public d(Runnable runnable, Executor executor) {
            this.f1517b = runnable;
            this.f1518c = executor;
        }
    }

    /* compiled from: AbstractFuture */
    private static final class e extends a {

        /* renamed from: a  reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<h, Thread> f1520a;

        /* renamed from: b  reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<h, h> f1521b;

        /* renamed from: c  reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<b, h> f1522c;

        /* renamed from: d  reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<b, d> f1523d;

        /* renamed from: e  reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<b, Object> f1524e;

        public e(AtomicReferenceFieldUpdater<h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<h, h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<b, h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<b, d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<b, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f1520a = atomicReferenceFieldUpdater;
            this.f1521b = atomicReferenceFieldUpdater2;
            this.f1522c = atomicReferenceFieldUpdater3;
            this.f1523d = atomicReferenceFieldUpdater4;
            this.f1524e = atomicReferenceFieldUpdater5;
        }

        public void a(h hVar, Thread thread) {
            this.f1520a.lazySet(hVar, thread);
        }

        public void a(h hVar, h hVar2) {
            this.f1521b.lazySet(hVar, hVar2);
        }

        public boolean a(b<?> bVar, h hVar, h hVar2) {
            return this.f1522c.compareAndSet(bVar, hVar, hVar2);
        }

        public boolean a(b<?> bVar, d dVar, d dVar2) {
            return this.f1523d.compareAndSet(bVar, dVar, dVar2);
        }

        public boolean a(b<?> bVar, Object obj, Object obj2) {
            return this.f1524e.compareAndSet(bVar, obj, obj2);
        }
    }

    /* compiled from: AbstractFuture */
    private static final class f<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final b<V> f1525a;

        /* renamed from: b  reason: collision with root package name */
        public final c.e.b.a.a.a<? extends V> f1526b;

        public f(b<V> bVar, c.e.b.a.a.a<? extends V> aVar) {
            this.f1525a = bVar;
            this.f1526b = aVar;
        }

        public void run() {
            if (this.f1525a.f1507e == this) {
                if (b.f1505c.a((b<?>) this.f1525a, (Object) this, b.a((c.e.b.a.a.a<?>) this.f1526b))) {
                    b.a((b<?>) this.f1525a);
                }
            }
        }
    }

    /* compiled from: AbstractFuture */
    private static final class g extends a {
        public g() {
            super();
        }

        public void a(h hVar, Thread thread) {
            hVar.f1528b = thread;
        }

        public void a(h hVar, h hVar2) {
            hVar.f1529c = hVar2;
        }

        public boolean a(b<?> bVar, h hVar, h hVar2) {
            synchronized (bVar) {
                if (bVar.f1509g != hVar) {
                    return false;
                }
                bVar.f1509g = hVar2;
                return true;
            }
        }

        public boolean a(b<?> bVar, d dVar, d dVar2) {
            synchronized (bVar) {
                if (bVar.f1508f != dVar) {
                    return false;
                }
                bVar.f1508f = dVar2;
                return true;
            }
        }

        public boolean a(b<?> bVar, Object obj, Object obj2) {
            synchronized (bVar) {
                if (bVar.f1507e != obj) {
                    return false;
                }
                bVar.f1507e = obj2;
                return true;
            }
        }
    }

    /* compiled from: AbstractFuture */
    private static final class h {

        /* renamed from: a  reason: collision with root package name */
        public static final h f1527a = new h(false);

        /* renamed from: b  reason: collision with root package name */
        public volatile Thread f1528b;

        /* renamed from: c  reason: collision with root package name */
        public volatile h f1529c;

        public h(boolean z) {
        }

        public void a(h hVar) {
            b.f1505c.a(this, hVar);
        }

        public h() {
            b.f1505c.a(this, Thread.currentThread());
        }

        public void a() {
            Thread thread = this.f1528b;
            if (thread != null) {
                this.f1528b = null;
                LockSupport.unpark(thread);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: b.H.a.d.a.b$e} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v11, resolved type: b.H.a.d.a.b$g} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v13, resolved type: b.H.a.d.a.b$e} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v10, resolved type: b.H.a.d.a.b$e} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            java.lang.String r0 = "guava.concurrent.generate_cancellation_cause"
            java.lang.String r1 = "false"
            java.lang.String r0 = java.lang.System.getProperty(r0, r1)
            boolean r0 = java.lang.Boolean.parseBoolean(r0)
            f1503a = r0
            java.lang.Class<b.H.a.d.a.b> r0 = b.H.a.d.a.b.class
            java.lang.String r0 = r0.getName()
            java.util.logging.Logger r0 = java.util.logging.Logger.getLogger(r0)
            f1504b = r0
            b.H.a.d.a.b$e r0 = new b.H.a.d.a.b$e     // Catch:{ Throwable -> 0x0054 }
            java.lang.Class<b.H.a.d.a.b$h> r1 = b.H.a.d.a.b.h.class
            java.lang.Class<java.lang.Thread> r2 = java.lang.Thread.class
            java.lang.String r3 = "b"
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r2 = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(r1, r2, r3)     // Catch:{ Throwable -> 0x0054 }
            java.lang.Class<b.H.a.d.a.b$h> r1 = b.H.a.d.a.b.h.class
            java.lang.Class<b.H.a.d.a.b$h> r3 = b.H.a.d.a.b.h.class
            java.lang.String r4 = "c"
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(r1, r3, r4)     // Catch:{ Throwable -> 0x0054 }
            java.lang.Class<b.H.a.d.a.b> r1 = b.H.a.d.a.b.class
            java.lang.Class<b.H.a.d.a.b$h> r4 = b.H.a.d.a.b.h.class
            java.lang.String r5 = "g"
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(r1, r4, r5)     // Catch:{ Throwable -> 0x0054 }
            java.lang.Class<b.H.a.d.a.b> r1 = b.H.a.d.a.b.class
            java.lang.Class<b.H.a.d.a.b$d> r5 = b.H.a.d.a.b.d.class
            java.lang.String r6 = "f"
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(r1, r5, r6)     // Catch:{ Throwable -> 0x0054 }
            java.lang.Class<b.H.a.d.a.b> r1 = b.H.a.d.a.b.class
            java.lang.Class<java.lang.Object> r6 = java.lang.Object.class
            java.lang.String r7 = "e"
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r6 = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(r1, r6, r7)     // Catch:{ Throwable -> 0x0054 }
            r1 = r0
            r1.<init>(r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x0054 }
            r1 = 0
            goto L_0x005b
        L_0x0054:
            r0 = move-exception
            r1 = r0
            b.H.a.d.a.b$g r0 = new b.H.a.d.a.b$g
            r0.<init>()
        L_0x005b:
            f1505c = r0
            java.lang.Class<java.util.concurrent.locks.LockSupport> r0 = java.util.concurrent.locks.LockSupport.class
            if (r1 == 0) goto L_0x006a
            java.util.logging.Logger r0 = f1504b
            java.util.logging.Level r2 = java.util.logging.Level.SEVERE
            java.lang.String r3 = "SafeAtomicHelper is broken!"
            r0.log(r2, r3, r1)
        L_0x006a:
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            f1506d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.H.a.d.a.b.<clinit>():void");
    }

    public void a() {
    }

    public final void a(h hVar) {
        hVar.f1528b = null;
        while (true) {
            h hVar2 = this.f1509g;
            if (hVar2 != h.f1527a) {
                h hVar3 = null;
                while (hVar2 != null) {
                    h hVar4 = hVar2.f1529c;
                    if (hVar2.f1528b != null) {
                        hVar3 = hVar2;
                    } else if (hVar3 != null) {
                        hVar3.f1529c = hVar4;
                        if (hVar3.f1528b == null) {
                        }
                    } else if (!f1505c.a((b<?>) this, hVar2, hVar4)) {
                    }
                    hVar2 = hVar4;
                }
                return;
            }
            return;
        }
    }

    public final V b(Object obj) {
        if (obj instanceof C0018b) {
            throw a("Task was cancelled.", ((C0018b) obj).f1513d);
        } else if (obj instanceof c) {
            throw new ExecutionException(((c) obj).f1515b);
        } else if (obj == f1506d) {
            return null;
        } else {
            return obj;
        }
    }

    public void b() {
    }

    public boolean c(V v) {
        if (v == null) {
            v = f1506d;
        }
        if (!f1505c.a((b<?>) this, (Object) null, (Object) v)) {
            return false;
        }
        a((b<?>) this);
        return true;
    }

    public final boolean cancel(boolean z) {
        Object obj = this.f1507e;
        if (!(obj == null) && !(obj instanceof f)) {
            return false;
        }
        C0018b bVar = f1503a ? new C0018b(z, new CancellationException("Future.cancel() was called.")) : z ? C0018b.f1510a : C0018b.f1511b;
        boolean z2 = false;
        Object obj2 = obj;
        b bVar2 = this;
        while (true) {
            if (f1505c.a((b<?>) bVar2, obj2, (Object) bVar)) {
                if (z) {
                    bVar2.b();
                }
                a((b<?>) bVar2);
                if (!(obj2 instanceof f)) {
                    return true;
                }
                c.e.b.a.a.a<? extends V> aVar = ((f) obj2).f1526b;
                if (aVar instanceof b) {
                    bVar2 = (b) aVar;
                    obj2 = bVar2.f1507e;
                    if (!(obj2 == null) && !(obj2 instanceof f)) {
                        return true;
                    }
                    z2 = true;
                } else {
                    aVar.cancel(z);
                    return true;
                }
            } else {
                obj2 = bVar2.f1507e;
                if (!(obj2 instanceof f)) {
                    return z2;
                }
            }
        }
    }

    public final void d() {
        h hVar;
        do {
            hVar = this.f1509g;
        } while (!f1505c.a((b<?>) this, hVar, h.f1527a));
        while (hVar != null) {
            hVar.a();
            hVar = hVar.f1529c;
        }
    }

    public final V get(long j2, TimeUnit timeUnit) {
        TimeUnit timeUnit2 = timeUnit;
        long nanos = timeUnit2.toNanos(j2);
        if (!Thread.interrupted()) {
            Object obj = this.f1507e;
            if ((obj != null) && (!(obj instanceof f))) {
                return b(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0;
            if (nanos >= 1000) {
                h hVar = this.f1509g;
                if (hVar != h.f1527a) {
                    h hVar2 = new h();
                    do {
                        hVar2.a(hVar);
                        if (f1505c.a((b<?>) this, hVar, hVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f1507e;
                                    if ((obj2 != null) && (!(obj2 instanceof f))) {
                                        return b(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    a(hVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            a(hVar2);
                        } else {
                            hVar = this.f1509g;
                        }
                    } while (hVar != h.f1527a);
                }
                return b(this.f1507e);
            }
            while (nanos > 0) {
                Object obj3 = this.f1507e;
                if ((obj3 != null) && (!(obj3 instanceof f))) {
                    return b(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String bVar = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + r1 + " " + timeUnit.toString().toLowerCase(Locale.ROOT);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j3 = -nanos;
                long convert = timeUnit2.convert(j3, TimeUnit.NANOSECONDS);
                boolean z = convert == 0 || j3 - timeUnit2.toNanos(convert) > 1000;
                if (convert > 0) {
                    String str3 = str2 + convert + " " + lowerCase;
                    if (z) {
                        str3 = str3 + ",";
                    }
                    str2 = str3 + " ";
                }
                if (z) {
                    str2 = str2 + r4 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + bVar);
        }
        throw new InterruptedException();
    }

    public final boolean isCancelled() {
        return this.f1507e instanceof C0018b;
    }

    public final boolean isDone() {
        Object obj = this.f1507e;
        boolean z = true;
        boolean z2 = obj != null;
        if (obj instanceof f) {
            z = false;
        }
        return z2 & z;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                str = c();
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public String c() {
        Object obj = this.f1507e;
        if (obj instanceof f) {
            return "setFuture=[" + d(((f) obj).f1526b) + "]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
    }

    public final String d(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    public boolean b(c.e.b.a.a.a<? extends V> aVar) {
        f fVar;
        c cVar;
        a(aVar);
        Object obj = this.f1507e;
        if (obj == null) {
            if (aVar.isDone()) {
                if (!f1505c.a((b<?>) this, (Object) null, a((c.e.b.a.a.a<?>) aVar))) {
                    return false;
                }
                a((b<?>) this);
                return true;
            }
            fVar = new f(this, aVar);
            if (f1505c.a((b<?>) this, (Object) null, (Object) fVar)) {
                try {
                    aVar.a(fVar, DirectExecutor.INSTANCE);
                } catch (Throwable unused) {
                    cVar = c.f1514a;
                }
                return true;
            }
            obj = this.f1507e;
        }
        if (obj instanceof C0018b) {
            aVar.cancel(((C0018b) obj).f1512c);
        }
        return false;
        f1505c.a((b<?>) this, (Object) fVar, (Object) cVar);
        return true;
    }

    public final void a(Runnable runnable, Executor executor) {
        a(runnable);
        a(executor);
        d dVar = this.f1508f;
        if (dVar != d.f1516a) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f1519d = dVar;
                if (!f1505c.a((b<?>) this, dVar, dVar2)) {
                    dVar = this.f1508f;
                } else {
                    return;
                }
            } while (dVar != d.f1516a);
        }
        b(runnable, executor);
    }

    public boolean a(Throwable th) {
        a(th);
        if (!f1505c.a((b<?>) this, (Object) null, (Object) new c(th))) {
            return false;
        }
        a((b<?>) this);
        return true;
    }

    public static void b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = f1504b;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, e2);
        }
    }

    public static Object a(c.e.b.a.a.a<?> aVar) {
        if (aVar instanceof b) {
            Object obj = ((b) aVar).f1507e;
            if (obj instanceof C0018b) {
                C0018b bVar = (C0018b) obj;
                if (bVar.f1512c) {
                    Throwable th = bVar.f1513d;
                    obj = th != null ? new C0018b(false, th) : C0018b.f1511b;
                }
            }
            return obj;
        }
        boolean isCancelled = aVar.isCancelled();
        if ((!f1503a) && isCancelled) {
            return C0018b.f1511b;
        }
        try {
            Object a2 = a(aVar);
            if (a2 == null) {
                a2 = f1506d;
            }
            return a2;
        } catch (ExecutionException e2) {
            return new c(e2.getCause());
        } catch (CancellationException e3) {
            if (isCancelled) {
                return new C0018b(false, e3);
            }
            return new c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + aVar, e3));
        } catch (Throwable th2) {
            return new c(th2);
        }
    }

    public static <V> V a(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public static void a(b<?> bVar) {
        d dVar = null;
        b<V> bVar2 = bVar;
        while (true) {
            bVar2.d();
            bVar2.a();
            d a2 = bVar2.a(dVar);
            while (true) {
                if (a2 != null) {
                    dVar = a2.f1519d;
                    Runnable runnable = a2.f1517b;
                    if (runnable instanceof f) {
                        f fVar = (f) runnable;
                        b<V> bVar3 = fVar.f1525a;
                        if (bVar3.f1507e == fVar) {
                            if (f1505c.a((b<?>) bVar3, (Object) fVar, a((c.e.b.a.a.a<?>) fVar.f1526b))) {
                                bVar2 = bVar3;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        b(runnable, a2.f1518c);
                    }
                    a2 = dVar;
                } else {
                    return;
                }
            }
        }
    }

    public final V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f1507e;
            if ((obj2 != null) && (!(obj2 instanceof f))) {
                return b(obj2);
            }
            h hVar = this.f1509g;
            if (hVar != h.f1527a) {
                h hVar2 = new h();
                do {
                    hVar2.a(hVar);
                    if (f1505c.a((b<?>) this, hVar, hVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f1507e;
                            } else {
                                a(hVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof f))));
                        return b(obj);
                    }
                    hVar = this.f1509g;
                } while (hVar != h.f1527a);
            }
            return b(this.f1507e);
        }
        throw new InterruptedException();
    }

    public final d a(d dVar) {
        d dVar2;
        do {
            dVar2 = this.f1508f;
        } while (!f1505c.a((b<?>) this, dVar2, d.f1516a));
        d dVar3 = dVar2;
        d dVar4 = dVar;
        d dVar5 = dVar3;
        while (dVar5 != null) {
            d dVar6 = dVar5.f1519d;
            dVar5.f1519d = dVar4;
            dVar4 = dVar5;
            dVar5 = dVar6;
        }
        return dVar4;
    }

    public final void a(StringBuilder sb) {
        try {
            Object a2 = a(this);
            sb.append("SUCCESS, result=[");
            sb.append(d(a2));
            sb.append("]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e3) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e3.getClass());
            sb.append(" thrown from get()]");
        }
    }

    public static CancellationException a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }
}
