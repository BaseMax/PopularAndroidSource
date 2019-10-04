package i.a;

import h.c.b.a.f;
import h.c.e;
import h.f.b.i;
import h.f.b.j;
import h.h;
import h.j.d;
import i.a.C1125ra;
import i.a.c.k;
import i.a.c.q;
import i.a.c.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.TypeCastException;
import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.JobCancellationException;

/* compiled from: JobSupport.kt */
public class xa implements C1125ra, C1123q, Ga, i.a.f.a {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14872a = AtomicReferenceFieldUpdater.newUpdater(xa.class, Object.class, "_state");
    public volatile Object _state;
    public volatile C1119o parentHandle;

    /* compiled from: JobSupport.kt */
    private static final class a<T> extends C1111k<T> {

        /* renamed from: h  reason: collision with root package name */
        public final xa f14873h;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(h.c.b<? super T> bVar, xa xaVar) {
            super(bVar, 1);
            j.b(bVar, "delegate");
            j.b(xaVar, "job");
            this.f14873h = xaVar;
        }

        public Throwable a(C1125ra raVar) {
            j.b(raVar, "parent");
            Object h2 = this.f14873h.h();
            if (h2 instanceof c) {
                Throwable th = ((c) h2).rootCause;
                if (th != null) {
                    return th;
                }
            }
            if (h2 instanceof C1129v) {
                return ((C1129v) h2).f14867b;
            }
            return raVar.t();
        }

        public String l() {
            return "AwaitContinuation";
        }
    }

    /* compiled from: JobSupport.kt */
    private static final class b extends wa<C1125ra> {

        /* renamed from: e  reason: collision with root package name */
        public final xa f14874e;

        /* renamed from: f  reason: collision with root package name */
        public final c f14875f;

        /* renamed from: g  reason: collision with root package name */
        public final C1121p f14876g;

        /* renamed from: h  reason: collision with root package name */
        public final Object f14877h;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public b(xa xaVar, c cVar, C1121p pVar, Object obj) {
            super(pVar.f14854e);
            j.b(xaVar, "parent");
            j.b(cVar, "state");
            j.b(pVar, "child");
            this.f14874e = xaVar;
            this.f14875f = cVar;
            this.f14876g = pVar;
            this.f14877h = obj;
        }

        public /* bridge */ /* synthetic */ Object a(Object obj) {
            b((Throwable) obj);
            return h.f14579a;
        }

        public void b(Throwable th) {
            this.f14874e.a(this.f14875f, this.f14876g, this.f14877h);
        }

        public String toString() {
            return "ChildCompletion[" + this.f14876g + ", " + this.f14877h + ']';
        }
    }

    /* compiled from: JobSupport.kt */
    private static final class c implements C1116ma {
        public volatile Object _exceptionsHolder;

        /* renamed from: a  reason: collision with root package name */
        public final Da f14878a;
        public volatile boolean isCompleting;
        public volatile Throwable rootCause;

        public c(Da da, boolean z, Throwable th) {
            j.b(da, "list");
            this.f14878a = da;
            this.isCompleting = z;
            this.rootCause = th;
        }

        public final void a(Throwable th) {
            j.b(th, "exception");
            Throwable th2 = this.rootCause;
            if (th2 == null) {
                this.rootCause = th;
            } else if (th != th2) {
                Object obj = this._exceptionsHolder;
                if (obj == null) {
                    this._exceptionsHolder = th;
                } else if (obj instanceof Throwable) {
                    if (th != obj) {
                        ArrayList<Throwable> a2 = a();
                        a2.add(obj);
                        a2.add(th);
                        this._exceptionsHolder = a2;
                    }
                } else if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(th);
                } else {
                    throw new IllegalStateException(("State is " + obj).toString());
                }
            }
        }

        public Da b() {
            return this.f14878a;
        }

        public final boolean c() {
            return this.rootCause != null;
        }

        public final boolean d() {
            return this._exceptionsHolder == za.f14884a;
        }

        public boolean s() {
            return this.rootCause == null;
        }

        public String toString() {
            return "Finishing[cancelling=" + c() + ", completing=" + this.isCompleting + ", rootCause=" + this.rootCause + ", exceptions=" + this._exceptionsHolder + ", list=" + b() + ']';
        }

        public final List<Throwable> b(Throwable th) {
            ArrayList<Throwable> arrayList;
            Object obj = this._exceptionsHolder;
            if (obj == null) {
                arrayList = a();
            } else if (obj instanceof Throwable) {
                ArrayList<Throwable> a2 = a();
                a2.add(obj);
                arrayList = a2;
            } else if (obj instanceof ArrayList) {
                arrayList = (ArrayList) obj;
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
            Throwable th2 = this.rootCause;
            if (th2 != null) {
                arrayList.add(0, th2);
            }
            if (th != null && (!j.a((Object) th, (Object) th2))) {
                arrayList.add(th);
            }
            this._exceptionsHolder = za.f14884a;
            return arrayList;
        }

        public final ArrayList<Throwable> a() {
            return new ArrayList<>(4);
        }
    }

    public xa(boolean z) {
        this._state = z ? za.f14886c : za.f14885b;
    }

    public void a(Object obj, int i2) {
    }

    public final boolean b(C1116ma maVar, Object obj, int i2) {
        if (K.a()) {
            if (!((maVar instanceof Z) || (maVar instanceof wa))) {
                throw new AssertionError();
            }
        }
        if (K.a()) {
            if (!(!(obj instanceof C1129v))) {
                throw new AssertionError();
            }
        }
        if (!f14872a.compareAndSet(this, maVar, za.a(obj))) {
            return false;
        }
        h((Throwable) null);
        h(obj);
        a(maVar, obj, i2);
        return true;
    }

    public boolean c(Throwable th) {
        return a((Object) th) && f();
    }

    public final boolean d(Throwable th) {
        boolean z = true;
        if (j()) {
            return true;
        }
        boolean z2 = th instanceof CancellationException;
        C1119o oVar = this.parentHandle;
        if (oVar == null || oVar == Ea.f14634a) {
            return z2;
        }
        if (!oVar.a(th) && !z2) {
            z = false;
        }
        return z;
    }

    public boolean e(Throwable th) {
        j.b(th, "cause");
        boolean z = true;
        if (th instanceof CancellationException) {
            return true;
        }
        if (!a((Object) th) || !f()) {
            z = false;
        }
        return z;
    }

    public final Throwable f(Object obj) {
        if (!(obj instanceof C1129v)) {
            obj = null;
        }
        C1129v vVar = (C1129v) obj;
        if (vVar != null) {
            return vVar.f14867b;
        }
        return null;
    }

    public boolean f() {
        return true;
    }

    public boolean f(Throwable th) {
        j.b(th, "exception");
        return false;
    }

    public <R> R fold(R r, h.f.a.c<? super R, ? super e.b, ? extends R> cVar) {
        j.b(cVar, "operation");
        return C1125ra.a.a(this, r, cVar);
    }

    public void g(Throwable th) {
        j.b(th, "exception");
        throw th;
    }

    public boolean g() {
        return false;
    }

    public <E extends e.b> E get(e.c<E> cVar) {
        j.b(cVar, "key");
        return C1125ra.a.a((C1125ra) this, cVar);
    }

    public final d<C1125ra> getChildren() {
        return h.j.h.b(new JobSupport$children$1(this, null));
    }

    public final e.c<?> getKey() {
        return C1125ra.f14859c;
    }

    public final Object h() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof q)) {
                return obj;
            }
            ((q) obj).a(this);
        }
    }

    public void h(Object obj) {
    }

    public void h(Throwable th) {
    }

    public final boolean i() {
        return !(h() instanceof C1116ma);
    }

    public final String j(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (cVar.c()) {
                return "Cancelling";
            }
            if (cVar.isCompleting) {
                return "Completing";
            }
            return "Active";
        } else if (!(obj instanceof C1116ma)) {
            return obj instanceof C1129v ? "Cancelled" : "Completed";
        } else {
            if (((C1116ma) obj).s()) {
                return "Active";
            }
            return "New";
        }
    }

    public boolean j() {
        return false;
    }

    public String k() {
        return L.a((Object) this);
    }

    public void l() {
    }

    public final String m() {
        return k() + '{' + j(h()) + '}';
    }

    public e minusKey(e.c<?> cVar) {
        j.b(cVar, "key");
        return C1125ra.a.b(this, cVar);
    }

    public e plus(e eVar) {
        j.b(eVar, "context");
        return C1125ra.a.a((C1125ra) this, eVar);
    }

    public boolean s() {
        Object h2 = h();
        return (h2 instanceof C1116ma) && ((C1116ma) h2).s();
    }

    public final boolean start() {
        int i2;
        do {
            i2 = i(h());
            if (i2 == 0) {
                return false;
            }
        } while (i2 != 1);
        return true;
    }

    public final CancellationException t() {
        Object h2 = h();
        if (h2 instanceof c) {
            Throwable th = ((c) h2).rootCause;
            if (th != null) {
                CancellationException a2 = a(th, L.a((Object) this) + " is cancelling");
                if (a2 != null) {
                    return a2;
                }
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        } else if (h2 instanceof C1116ma) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        } else if (h2 instanceof C1129v) {
            return a(this, ((C1129v) h2).f14867b, null, 1, null);
        } else {
            return new JobCancellationException(L.a((Object) this) + " has completed normally", null, this);
        }
    }

    public String toString() {
        return m() + '@' + L.b(this);
    }

    public CancellationException u() {
        Throwable th;
        Object h2 = h();
        CancellationException cancellationException = null;
        if (h2 instanceof c) {
            th = ((c) h2).rootCause;
        } else if (h2 instanceof C1129v) {
            th = ((C1129v) h2).f14867b;
        } else if (!(h2 instanceof C1116ma)) {
            th = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + h2).toString());
        }
        if (th instanceof CancellationException) {
            cancellationException = th;
        }
        CancellationException cancellationException2 = cancellationException;
        if (cancellationException2 != null) {
            return cancellationException2;
        }
        return new JobCancellationException("Parent job is " + j(h2), th, this);
    }

    public final void a(C1125ra raVar) {
        if (K.a()) {
            if (!(this.parentHandle == null)) {
                throw new AssertionError();
            }
        }
        if (raVar == null) {
            this.parentHandle = Ea.f14634a;
            return;
        }
        raVar.start();
        C1119o a2 = raVar.a((C1123q) this);
        this.parentHandle = a2;
        if (i()) {
            a2.f();
            this.parentHandle = Ea.f14634a;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0054, code lost:
        if (r3 == null) goto L_0x0059;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0056, code lost:
        a(r0, r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0059, code lost:
        r8 = a(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x005d, code lost:
        if (r8 == null) goto L_0x0067;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0063, code lost:
        if (b(r2, r8, r9) == false) goto L_0x0067;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0066, code lost:
        return 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x006b, code lost:
        if (a(r2, r9, r10) == false) goto L_0x006e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x006d, code lost:
        return 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x006e, code lost:
        return 3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int c(i.a.C1116ma r8, java.lang.Object r9, int r10) {
        /*
            r7 = this;
            i.a.Da r0 = r7.b((i.a.C1116ma) r8)
            r1 = 3
            if (r0 == 0) goto L_0x007a
            boolean r2 = r8 instanceof i.a.xa.c
            r3 = 0
            if (r2 != 0) goto L_0x000e
            r2 = r3
            goto L_0x000f
        L_0x000e:
            r2 = r8
        L_0x000f:
            i.a.xa$c r2 = (i.a.xa.c) r2
            r4 = 0
            if (r2 == 0) goto L_0x0015
            goto L_0x001a
        L_0x0015:
            i.a.xa$c r2 = new i.a.xa$c
            r2.<init>(r0, r4, r3)
        L_0x001a:
            monitor-enter(r2)
            boolean r5 = r2.isCompleting     // Catch:{ all -> 0x0077 }
            if (r5 == 0) goto L_0x0021
            monitor-exit(r2)
            return r4
        L_0x0021:
            r4 = 1
            r2.isCompleting = r4     // Catch:{ all -> 0x0077 }
            if (r2 == r8) goto L_0x0030
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = f14872a     // Catch:{ all -> 0x0077 }
            boolean r5 = r5.compareAndSet(r7, r8, r2)     // Catch:{ all -> 0x0077 }
            if (r5 != 0) goto L_0x0030
            monitor-exit(r2)
            return r1
        L_0x0030:
            boolean r5 = r2.d()     // Catch:{ all -> 0x0077 }
            r5 = r5 ^ r4
            if (r5 == 0) goto L_0x006f
            boolean r5 = r2.c()     // Catch:{ all -> 0x0077 }
            boolean r6 = r9 instanceof i.a.C1129v     // Catch:{ all -> 0x0077 }
            if (r6 != 0) goto L_0x0041
            r6 = r3
            goto L_0x0042
        L_0x0041:
            r6 = r9
        L_0x0042:
            i.a.v r6 = (i.a.C1129v) r6     // Catch:{ all -> 0x0077 }
            if (r6 == 0) goto L_0x004b
            java.lang.Throwable r6 = r6.f14867b     // Catch:{ all -> 0x0077 }
            r2.a(r6)     // Catch:{ all -> 0x0077 }
        L_0x004b:
            java.lang.Throwable r6 = r2.rootCause     // Catch:{ all -> 0x0077 }
            r5 = r5 ^ r4
            if (r5 == 0) goto L_0x0051
            r3 = r6
        L_0x0051:
            h.h r5 = h.h.f14579a     // Catch:{ all -> 0x0077 }
            monitor-exit(r2)
            if (r3 == 0) goto L_0x0059
            r7.a((i.a.Da) r0, (java.lang.Throwable) r3)
        L_0x0059:
            i.a.p r8 = r7.a((i.a.C1116ma) r8)
            if (r8 == 0) goto L_0x0067
            boolean r8 = r7.b((i.a.xa.c) r2, (i.a.C1121p) r8, (java.lang.Object) r9)
            if (r8 == 0) goto L_0x0067
            r8 = 2
            return r8
        L_0x0067:
            boolean r8 = r7.a((i.a.xa.c) r2, (java.lang.Object) r9, (int) r10)
            if (r8 == 0) goto L_0x006e
            return r4
        L_0x006e:
            return r1
        L_0x006f:
            java.lang.String r8 = "Failed requirement."
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x0077 }
            r9.<init>(r8)     // Catch:{ all -> 0x0077 }
            throw r9     // Catch:{ all -> 0x0077 }
        L_0x0077:
            r8 = move-exception
            monitor-exit(r2)
            throw r8
        L_0x007a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.xa.c(i.a.ma, java.lang.Object, int):int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x003c, code lost:
        if (r8 == null) goto L_0x0047;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003e, code lost:
        a(((i.a.xa.c) r2).b(), r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0047, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean g(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = r0
        L_0x0002:
            java.lang.Object r2 = r7.h()
            boolean r3 = r2 instanceof i.a.xa.c
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L_0x004b
            monitor-enter(r2)
            r3 = r2
            i.a.xa$c r3 = (i.a.xa.c) r3     // Catch:{ all -> 0x0048 }
            boolean r3 = r3.d()     // Catch:{ all -> 0x0048 }
            if (r3 == 0) goto L_0x0018
            monitor-exit(r2)
            return r4
        L_0x0018:
            r3 = r2
            i.a.xa$c r3 = (i.a.xa.c) r3     // Catch:{ all -> 0x0048 }
            boolean r3 = r3.c()     // Catch:{ all -> 0x0048 }
            if (r8 != 0) goto L_0x0023
            if (r3 != 0) goto L_0x0030
        L_0x0023:
            if (r1 == 0) goto L_0x0026
            goto L_0x002a
        L_0x0026:
            java.lang.Throwable r1 = r7.e((java.lang.Object) r8)     // Catch:{ all -> 0x0048 }
        L_0x002a:
            r8 = r2
            i.a.xa$c r8 = (i.a.xa.c) r8     // Catch:{ all -> 0x0048 }
            r8.a(r1)     // Catch:{ all -> 0x0048 }
        L_0x0030:
            r8 = r2
            i.a.xa$c r8 = (i.a.xa.c) r8     // Catch:{ all -> 0x0048 }
            java.lang.Throwable r8 = r8.rootCause     // Catch:{ all -> 0x0048 }
            r1 = r3 ^ 1
            if (r1 == 0) goto L_0x003a
            goto L_0x003b
        L_0x003a:
            r8 = r0
        L_0x003b:
            monitor-exit(r2)
            if (r8 == 0) goto L_0x0047
            i.a.xa$c r2 = (i.a.xa.c) r2
            i.a.Da r0 = r2.b()
            r7.a((i.a.Da) r0, (java.lang.Throwable) r8)
        L_0x0047:
            return r5
        L_0x0048:
            r8 = move-exception
            monitor-exit(r2)
            throw r8
        L_0x004b:
            boolean r3 = r2 instanceof i.a.C1116ma
            if (r3 == 0) goto L_0x009e
            if (r1 == 0) goto L_0x0052
            goto L_0x0056
        L_0x0052:
            java.lang.Throwable r1 = r7.e((java.lang.Object) r8)
        L_0x0056:
            r3 = r2
            i.a.ma r3 = (i.a.C1116ma) r3
            boolean r6 = r3.s()
            if (r6 == 0) goto L_0x0066
            boolean r2 = r7.a((i.a.C1116ma) r3, (java.lang.Throwable) r1)
            if (r2 == 0) goto L_0x0002
            return r5
        L_0x0066:
            i.a.v r3 = new i.a.v
            r6 = 2
            r3.<init>(r1, r4, r6, r0)
            int r3 = r7.a((java.lang.Object) r2, (java.lang.Object) r3, (int) r4)
            if (r3 == 0) goto L_0x0083
            if (r3 == r5) goto L_0x0082
            if (r3 == r6) goto L_0x0082
            r2 = 3
            if (r3 != r2) goto L_0x007a
            goto L_0x0002
        L_0x007a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "unexpected result"
            r8.<init>(r0)
            throw r8
        L_0x0082:
            return r5
        L_0x0083:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Cannot happen in "
            r8.append(r0)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r8 = r8.toString()
            r0.<init>(r8)
            throw r0
        L_0x009e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.xa.g(java.lang.Object):boolean");
    }

    public final int i(Object obj) {
        if (obj instanceof Z) {
            if (((Z) obj).s()) {
                return 0;
            }
            if (!f14872a.compareAndSet(this, obj, za.f14886c)) {
                return -1;
            }
            l();
            return 1;
        } else if (!(obj instanceof C1114la)) {
            return 0;
        } else {
            if (!f14872a.compareAndSet(this, obj, ((C1114la) obj).b())) {
                return -1;
            }
            l();
            return 1;
        }
    }

    public final JobCancellationException e() {
        return new JobCancellationException("Job was cancelled", null, this);
    }

    public final Throwable e(Object obj) {
        if (obj != null ? obj instanceof Throwable : true) {
            return obj != null ? (Throwable) obj : e();
        }
        if (obj != null) {
            return ((Ga) obj).u();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
    }

    public final boolean d(Object obj) {
        int a2;
        do {
            Object h2 = h();
            if ((h2 instanceof C1116ma) && (!(h2 instanceof c) || !((c) h2).isCompleting)) {
                a2 = a(h2, (Object) new C1129v(e(obj), false, 2, null), 0);
                if (a2 != 0) {
                    if (a2 == 1 || a2 == 2) {
                        return true;
                    }
                }
            }
            return false;
        } while (a2 == 3);
        throw new IllegalStateException("unexpected result");
    }

    public final X b(h.f.a.b<? super Throwable, h> bVar) {
        j.b(bVar, "handler");
        return a(false, true, bVar);
    }

    public final boolean b(Throwable th) {
        return a((Object) th);
    }

    public final Da b(C1116ma maVar) {
        Da b2 = maVar.b();
        if (b2 != null) {
            return b2;
        }
        if (maVar instanceof Z) {
            return new Da();
        }
        if (maVar instanceof wa) {
            a((wa<?>) (wa) maVar);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + maVar).toString());
    }

    public final boolean a(c cVar, Object obj, int i2) {
        boolean c2;
        Throwable a2;
        boolean z = false;
        if (!(h() == cVar)) {
            throw new IllegalArgumentException("Failed requirement.");
        } else if (!(!cVar.d())) {
            throw new IllegalArgumentException("Failed requirement.");
        } else if (cVar.isCompleting) {
            C1129v vVar = (C1129v) (!(obj instanceof C1129v) ? null : obj);
            Throwable th = vVar != null ? vVar.f14867b : null;
            synchronized (cVar) {
                c2 = cVar.c();
                List<Throwable> b2 = cVar.b(th);
                a2 = a(cVar, (List<? extends Throwable>) b2);
                if (a2 != null) {
                    a(a2, (List<? extends Throwable>) b2);
                }
            }
            if (!(a2 == null || a2 == th)) {
                obj = new C1129v(a2, false, 2, null);
            }
            if (a2 != null) {
                if (d(a2) || f(a2)) {
                    z = true;
                }
                if (z) {
                    if (obj != null) {
                        ((C1129v) obj).b();
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                    }
                }
            }
            if (!c2) {
                h(a2);
            }
            h(obj);
            if (f14872a.compareAndSet(this, cVar, za.a(obj))) {
                a((C1116ma) cVar, obj, i2);
                return true;
            }
            throw new IllegalArgumentException(("Unexpected state: " + this._state + ", expected: " + cVar + ", update: " + obj).toString());
        } else {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final boolean b(c cVar, C1121p pVar, Object obj) {
        while (C1125ra.a.a(pVar.f14854e, false, false, new b(this, cVar, pVar, obj), 1, null) == Ea.f14634a) {
            pVar = a((k) pVar);
            if (pVar == null) {
                return false;
            }
        }
        return true;
    }

    public final Object b(h.c.b<Object> bVar) {
        Object h2;
        do {
            h2 = h();
            if (!(h2 instanceof C1116ma)) {
                if (!(h2 instanceof C1129v)) {
                    return za.b(h2);
                }
                Throwable th = ((C1129v) h2).f14867b;
                if (K.d()) {
                    i.a(0);
                    if (!(bVar instanceof h.c.b.a.c)) {
                        throw th;
                    }
                    throw u.b(th, (h.c.b.a.c) bVar);
                }
                throw th;
            }
        } while (i(h2) < 0);
        return c(bVar);
    }

    public final /* synthetic */ Object c(h.c.b<Object> bVar) {
        a aVar = new a(h.c.a.a.a(bVar), this);
        C1113l.a((C1109j<?>) aVar, b((h.f.a.b<? super Throwable, h>) new Ia(this, aVar)));
        Object h2 = aVar.h();
        if (h2 == h.c.a.b.a()) {
            f.c(bVar);
        }
        return h2;
    }

    public final void b(Da da, Throwable th) {
        Object e2 = da.e();
        if (e2 != null) {
            CompletionHandlerException completionHandlerException = null;
            for (k kVar = (k) e2; !j.a((Object) kVar, (Object) da); kVar = kVar.g()) {
                if (kVar instanceof wa) {
                    wa waVar = (wa) kVar;
                    try {
                        waVar.b(th);
                    } catch (Throwable th2) {
                        if (completionHandlerException != null) {
                            h.a.a(completionHandlerException, th2);
                            if (completionHandlerException != null) {
                            }
                        }
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + waVar + " for " + this, th2);
                        h hVar = h.f14579a;
                    }
                }
            }
            if (completionHandlerException != null) {
                g((Throwable) completionHandlerException);
                return;
            }
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    public final Throwable a(c cVar, List<? extends Throwable> list) {
        T t;
        boolean z;
        if (!list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    t = null;
                    break;
                }
                t = it.next();
                if (!(((Throwable) t) instanceof CancellationException)) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    break;
                }
            }
            Throwable th = (Throwable) t;
            if (th == null) {
                th = (Throwable) list.get(0);
            }
            return th;
        } else if (cVar.c()) {
            return e();
        } else {
            return null;
        }
    }

    public final void a(Throwable th, List<? extends Throwable> list) {
        if (list.size() > 1) {
            Set a2 = i.a.c.d.a(list.size());
            Throwable d2 = u.d(th);
            for (Throwable d3 : list) {
                Throwable d4 = u.d(d3);
                if (d4 != th && d4 != d2 && !(d4 instanceof CancellationException) && a2.add(d4)) {
                    h.a.a(th, d4);
                }
            }
        }
    }

    public final void b(wa<?> waVar) {
        Object h2;
        j.b(waVar, "node");
        do {
            h2 = h();
            if (!(h2 instanceof wa)) {
                if ((h2 instanceof C1116ma) && ((C1116ma) h2).b() != null) {
                    waVar.n();
                }
                return;
            } else if (h2 != waVar) {
                return;
            }
        } while (!f14872a.compareAndSet(this, h2, za.f14886c));
    }

    public final void a(C1116ma maVar, Object obj, int i2) {
        C1119o oVar = this.parentHandle;
        if (oVar != null) {
            oVar.f();
            this.parentHandle = Ea.f14634a;
        }
        Throwable th = null;
        C1129v vVar = (C1129v) (!(obj instanceof C1129v) ? null : obj);
        if (vVar != null) {
            th = vVar.f14867b;
        }
        if (maVar instanceof wa) {
            try {
                ((wa) maVar).b(th);
            } catch (Throwable th2) {
                g((Throwable) new CompletionHandlerException("Exception in completion handler " + maVar + " for " + this, th2));
            }
        } else {
            Da b2 = maVar.b();
            if (b2 != null) {
                b(b2, th);
            }
        }
        a(obj, i2);
    }

    public final boolean b(Object obj, int i2) {
        int a2;
        do {
            a2 = a(h(), obj, i2);
            if (a2 == 0) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, " + "but is being completed with " + obj, f(obj));
            } else if (a2 == 1) {
                return true;
            } else {
                if (a2 == 2) {
                    return false;
                }
            }
        } while (a2 == 3);
        throw new IllegalStateException("unexpected result");
    }

    public final void a(Da da, Throwable th) {
        h(th);
        Object e2 = da.e();
        if (e2 != null) {
            CompletionHandlerException completionHandlerException = null;
            for (k kVar = (k) e2; !j.a((Object) kVar, (Object) da); kVar = kVar.g()) {
                if (kVar instanceof sa) {
                    wa waVar = (wa) kVar;
                    try {
                        waVar.b(th);
                    } catch (Throwable th2) {
                        if (completionHandlerException != null) {
                            h.a.a(completionHandlerException, th2);
                            if (completionHandlerException != null) {
                            }
                        }
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + waVar + " for " + this, th2);
                        h hVar = h.f14579a;
                    }
                }
            }
            if (completionHandlerException != null) {
                g((Throwable) completionHandlerException);
            }
            d(th);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    public static /* synthetic */ CancellationException a(xa xaVar, Throwable th, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            return xaVar.a(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    public final CancellationException a(Throwable th, String str) {
        j.b(th, "$this$toCancellationException");
        CancellationException cancellationException = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        if (cancellationException == null) {
            if (str == null) {
                str = L.a((Object) th) + " was cancelled";
            }
            new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    public final wa<?> a(h.f.a.b<? super Throwable, h> bVar, boolean z) {
        boolean z2 = true;
        sa saVar = null;
        if (z) {
            if (bVar instanceof sa) {
                saVar = bVar;
            }
            sa saVar2 = saVar;
            if (saVar2 != null) {
                if (saVar2.f14868d != this) {
                    z2 = false;
                }
                if (!z2) {
                    throw new IllegalArgumentException("Failed requirement.");
                } else if (saVar2 != null) {
                    return saVar2;
                }
            }
            return new C1122pa(this, bVar);
        }
        if (bVar instanceof wa) {
            saVar = bVar;
        }
        wa<?> waVar = saVar;
        if (waVar != null) {
            if (waVar.f14868d != this || (waVar instanceof sa)) {
                z2 = false;
            }
            if (!z2) {
                throw new IllegalArgumentException("Failed requirement.");
            } else if (waVar != null) {
                return waVar;
            }
        }
        return new C1124qa(this, bVar);
    }

    /* JADX WARNING: type inference failed for: r1v2, types: [i.a.la] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(i.a.Z r3) {
        /*
            r2 = this;
            i.a.Da r0 = new i.a.Da
            r0.<init>()
            boolean r1 = r3.s()
            if (r1 == 0) goto L_0x000c
            goto L_0x0012
        L_0x000c:
            i.a.la r1 = new i.a.la
            r1.<init>(r0)
            r0 = r1
        L_0x0012:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = f14872a
            r1.compareAndSet(r2, r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.xa.a(i.a.Z):void");
    }

    public final void a(wa<?> waVar) {
        waVar.a(new Da());
        f14872a.compareAndSet(this, waVar, waVar.g());
    }

    public void a(CancellationException cancellationException) {
        c((Throwable) cancellationException);
    }

    public final void a(Ga ga) {
        j.b(ga, "parentJob");
        a((Object) ga);
    }

    public final boolean a(Object obj) {
        if (!g() || !d(obj)) {
            return g(obj);
        }
        return true;
    }

    public final boolean a(C1116ma maVar, Throwable th) {
        if (K.a()) {
            if (!(!(maVar instanceof c))) {
                throw new AssertionError();
            }
        }
        if (!K.a() || maVar.s()) {
            Da b2 = b(maVar);
            if (b2 == null) {
                return false;
            }
            if (!f14872a.compareAndSet(this, maVar, new c(b2, false, th))) {
                return false;
            }
            a(b2, th);
            return true;
        }
        throw new AssertionError();
    }

    public final int a(Object obj, Object obj2, int i2) {
        if (!(obj instanceof C1116ma)) {
            return 0;
        }
        if (((obj instanceof Z) || (obj instanceof wa)) && !(obj instanceof C1121p) && !(obj2 instanceof C1129v)) {
            return !b((C1116ma) obj, obj2, i2) ? 3 : 1;
        }
        return c((C1116ma) obj, obj2, i2);
    }

    public final C1121p a(C1116ma maVar) {
        C1121p pVar = (C1121p) (!(maVar instanceof C1121p) ? null : maVar);
        if (pVar != null) {
            return pVar;
        }
        Da b2 = maVar.b();
        if (b2 != null) {
            return a((k) b2);
        }
        return null;
    }

    public final void a(c cVar, C1121p pVar, Object obj) {
        if (h() == cVar) {
            C1121p a2 = a((k) pVar);
            if ((a2 == null || !b(cVar, a2, obj)) && a(cVar, obj, 0)) {
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final C1121p a(k kVar) {
        while (kVar.l()) {
            kVar = kVar.i();
        }
        while (true) {
            kVar = kVar.g();
            if (!kVar.l()) {
                if (kVar instanceof C1121p) {
                    return (C1121p) kVar;
                }
                if (kVar instanceof Da) {
                    return null;
                }
            }
        }
    }

    public final C1119o a(C1123q qVar) {
        j.b(qVar, "child");
        X a2 = C1125ra.a.a(this, true, false, new C1121p(this, qVar), 2, null);
        if (a2 != null) {
            return (C1119o) a2;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
    }

    public final X a(boolean z, boolean z2, h.f.a.b<? super Throwable, h> bVar) {
        Throwable th;
        j.b(bVar, "handler");
        Throwable th2 = null;
        wa<?> waVar = null;
        while (true) {
            Object h2 = h();
            if (h2 instanceof Z) {
                Z z3 = (Z) h2;
                if (z3.s()) {
                    if (waVar == null) {
                        waVar = a(bVar, z);
                    }
                    if (f14872a.compareAndSet(this, h2, waVar)) {
                        return waVar;
                    }
                } else {
                    a(z3);
                }
            } else if (h2 instanceof C1116ma) {
                Da b2 = ((C1116ma) h2).b();
                if (b2 != null) {
                    X x = Ea.f14634a;
                    if (!z || !(h2 instanceof c)) {
                        th = null;
                    } else {
                        synchronized (h2) {
                            th = ((c) h2).rootCause;
                            if (th == null || ((bVar instanceof C1121p) && !((c) h2).isCompleting)) {
                                if (waVar == null) {
                                    waVar = a(bVar, z);
                                }
                                if (a(h2, b2, waVar)) {
                                    if (th == null) {
                                        return waVar;
                                    }
                                    x = waVar;
                                }
                            }
                            h hVar = h.f14579a;
                        }
                    }
                    if (th != null) {
                        if (z2) {
                            bVar.a(th);
                        }
                        return x;
                    }
                    if (waVar == null) {
                        waVar = a(bVar, z);
                    }
                    if (a(h2, b2, waVar)) {
                        return waVar;
                    }
                } else if (h2 != null) {
                    a((wa<?>) (wa) h2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>");
                }
            } else {
                if (z2) {
                    if (!(h2 instanceof C1129v)) {
                        h2 = null;
                    }
                    C1129v vVar = (C1129v) h2;
                    if (vVar != null) {
                        th2 = vVar.f14867b;
                    }
                    bVar.a(th2);
                }
                return Ea.f14634a;
            }
        }
    }

    public final boolean a(Object obj, Da da, wa<?> waVar) {
        int a2;
        ya yaVar = new ya(waVar, waVar, this, obj);
        do {
            Object h2 = da.h();
            if (h2 != null) {
                a2 = ((k) h2).a(waVar, da, yaVar);
                if (a2 == 1) {
                    return true;
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (a2 != 2);
        return false;
    }
}
