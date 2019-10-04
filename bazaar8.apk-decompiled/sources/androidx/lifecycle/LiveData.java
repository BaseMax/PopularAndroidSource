package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import b.c.a.a.C0237c;
import b.r.C0301g;
import b.r.k;
import b.r.u;
import java.util.Iterator;
import java.util.Map;

public abstract class LiveData<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f707a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final Object f708b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public b.c.a.b.b<u<? super T>, LiveData<T>.defpackage.b> f709c = new b.c.a.b.b<>();

    /* renamed from: d  reason: collision with root package name */
    public int f710d = 0;

    /* renamed from: e  reason: collision with root package name */
    public volatile Object f711e;

    /* renamed from: f  reason: collision with root package name */
    public volatile Object f712f;

    /* renamed from: g  reason: collision with root package name */
    public int f713g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f714h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f715i;

    /* renamed from: j  reason: collision with root package name */
    public final Runnable f716j;

    class LifecycleBoundObserver extends LiveData<T>.defpackage.b implements C0301g {

        /* renamed from: e  reason: collision with root package name */
        public final k f717e;

        public LifecycleBoundObserver(k kVar, u<? super T> uVar) {
            super(uVar);
            this.f717e = kVar;
        }

        public void a(k kVar, Lifecycle.Event event) {
            if (this.f717e.b().a() == Lifecycle.State.DESTROYED) {
                LiveData.this.b(this.f720a);
            } else {
                a(b());
            }
        }

        public boolean b() {
            return this.f717e.b().a().a(Lifecycle.State.STARTED);
        }

        public boolean a(k kVar) {
            return this.f717e == kVar;
        }

        public void a() {
            this.f717e.b().b(this);
        }
    }

    private class a extends LiveData<T>.defpackage.b {
        public a(u<? super T> uVar) {
            super(uVar);
        }

        public boolean b() {
            return true;
        }
    }

    private abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public final u<? super T> f720a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f721b;

        /* renamed from: c  reason: collision with root package name */
        public int f722c = -1;

        public b(u<? super T> uVar) {
            this.f720a = uVar;
        }

        public void a() {
        }

        public void a(boolean z) {
            if (z != this.f721b) {
                this.f721b = z;
                int i2 = 1;
                boolean z2 = LiveData.this.f710d == 0;
                LiveData liveData = LiveData.this;
                int i3 = liveData.f710d;
                if (!this.f721b) {
                    i2 = -1;
                }
                liveData.f710d = i3 + i2;
                if (z2 && this.f721b) {
                    LiveData.this.d();
                }
                LiveData liveData2 = LiveData.this;
                if (liveData2.f710d == 0 && !this.f721b) {
                    liveData2.e();
                }
                if (this.f721b) {
                    LiveData.this.b((LiveData<T>.defpackage.b) this);
                }
            }
        }

        public boolean a(k kVar) {
            return false;
        }

        public abstract boolean b();
    }

    public LiveData() {
        Object obj = f707a;
        this.f711e = obj;
        this.f712f = obj;
        this.f713g = -1;
        this.f716j = new q(this);
    }

    public final void a(LiveData<T>.defpackage.b bVar) {
        if (bVar.f721b) {
            if (!bVar.b()) {
                bVar.a(false);
                return;
            }
            int i2 = bVar.f722c;
            int i3 = this.f713g;
            if (i2 < i3) {
                bVar.f722c = i3;
                bVar.f720a.a(this.f711e);
            }
        }
    }

    public void b(LiveData<T>.defpackage.b bVar) {
        if (this.f714h) {
            this.f715i = true;
            return;
        }
        this.f714h = true;
        do {
            this.f715i = false;
            if (bVar == null) {
                b.c.a.b.b<K, V>.d b2 = this.f709c.b();
                while (b2.hasNext()) {
                    a((LiveData<T>.defpackage.b) (b) ((Map.Entry) b2.next()).getValue());
                    if (this.f715i) {
                        break;
                    }
                }
            } else {
                a(bVar);
                bVar = null;
            }
        } while (this.f715i);
        this.f714h = false;
    }

    public boolean c() {
        return this.f710d > 0;
    }

    public void d() {
    }

    public void e() {
    }

    public void a(k kVar, u<? super T> uVar) {
        a("observe");
        if (kVar.b().a() != Lifecycle.State.DESTROYED) {
            LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(kVar, uVar);
            b b2 = this.f709c.b(uVar, lifecycleBoundObserver);
            if (b2 != null && !b2.a(kVar)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            } else if (b2 == null) {
                kVar.b().a(lifecycleBoundObserver);
            }
        }
    }

    public void b(u<? super T> uVar) {
        a("removeObserver");
        b remove = this.f709c.remove(uVar);
        if (remove != null) {
            remove.a();
            remove.a(false);
        }
    }

    public void a(u<? super T> uVar) {
        a("observeForever");
        a aVar = new a(uVar);
        b b2 = this.f709c.b(uVar, aVar);
        if (b2 != null && (b2 instanceof LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        } else if (b2 == null) {
            aVar.a(true);
        }
    }

    public void b(T t) {
        a("setValue");
        this.f713g++;
        this.f711e = t;
        b((LiveData<T>.defpackage.b) null);
    }

    public void a(k kVar) {
        a("removeObservers");
        Iterator<Map.Entry<u<? super T>, LiveData<T>.defpackage.b>> it = this.f709c.iterator();
        while (it.hasNext()) {
            Map.Entry next = it.next();
            if (((b) next.getValue()).a(kVar)) {
                b((u) next.getKey());
            }
        }
    }

    public int b() {
        return this.f713g;
    }

    public void a(T t) {
        boolean z;
        synchronized (this.f708b) {
            z = this.f712f == f707a;
            this.f712f = t;
        }
        if (z) {
            C0237c.c().c(this.f716j);
        }
    }

    public T a() {
        T t = this.f711e;
        if (t != f707a) {
            return t;
        }
        return null;
    }

    public static void a(String str) {
        if (!C0237c.c().a()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background" + " thread");
        }
    }
}
