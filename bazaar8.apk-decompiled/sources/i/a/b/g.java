package i.a.b;

import h.f.b.j;
import h.h;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: ArrayChannel.kt */
public class g<E> extends a<E> {

    /* renamed from: c  reason: collision with root package name */
    public final ReentrantLock f14709c;

    /* renamed from: d  reason: collision with root package name */
    public Object[] f14710d;

    /* renamed from: e  reason: collision with root package name */
    public int f14711e;

    /* renamed from: f  reason: collision with root package name */
    public final int f14712f;
    public volatile int size;

    public g(int i2) {
        this.f14712f = i2;
        if (this.f14712f < 1 ? false : true) {
            this.f14709c = new ReentrantLock();
            this.f14710d = new Object[Math.min(this.f14712f, 8)];
            return;
        }
        throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + this.f14712f + " was specified").toString());
    }

    public final void a(int i2) {
        Object[] objArr = this.f14710d;
        if (i2 >= objArr.length) {
            Object[] objArr2 = new Object[Math.min(objArr.length * 2, this.f14712f)];
            for (int i3 = 0; i3 < i2; i3++) {
                Object[] objArr3 = this.f14710d;
                objArr2[i3] = objArr3[(this.f14711e + i3) % objArr3.length];
            }
            this.f14710d = objArr2;
            this.f14711e = 0;
        }
    }

    public Object b(E e2) {
        u l2;
        Object a2;
        ReentrantLock reentrantLock = this.f14709c;
        reentrantLock.lock();
        try {
            int i2 = this.size;
            o<?> f2 = f();
            if (f2 != null) {
                return f2;
            }
            if (i2 < this.f14712f) {
                this.size = i2 + 1;
                if (i2 == 0) {
                    do {
                        l2 = l();
                        if (l2 != null) {
                            if (l2 instanceof o) {
                                this.size = i2;
                                if (l2 != null) {
                                    reentrantLock.unlock();
                                    return l2;
                                }
                                j.a();
                                throw null;
                            } else if (l2 != null) {
                                a2 = l2.a(e2, null);
                            } else {
                                j.a();
                                throw null;
                            }
                        }
                    } while (a2 == null);
                    this.size = i2;
                    h hVar = h.f14579a;
                    reentrantLock.unlock();
                    if (l2 != null) {
                        l2.b(a2);
                        if (l2 != null) {
                            return l2.c();
                        }
                        j.a();
                        throw null;
                    }
                    j.a();
                    throw null;
                }
                a(i2);
                this.f14710d[(this.f14711e + i2) % this.f14710d.length] = e2;
                Object obj = c.f14689a;
                reentrantLock.unlock();
                return obj;
            }
            Object obj2 = c.f14690b;
            reentrantLock.unlock();
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }

    public String d() {
        return "(buffer:capacity=" + this.f14712f + ",size=" + this.size + ')';
    }

    public final boolean j() {
        return false;
    }

    public final boolean k() {
        return this.size == this.f14712f;
    }

    /* JADX INFO: finally extract failed */
    public void n() {
        ReentrantLock reentrantLock = this.f14709c;
        reentrantLock.lock();
        try {
            int i2 = this.size;
            for (int i3 = 0; i3 < i2; i3++) {
                this.f14710d[this.f14711e] = 0;
                this.f14711e = (this.f14711e + 1) % this.f14710d.length;
            }
            this.size = 0;
            h hVar = h.f14579a;
            reentrantLock.unlock();
            super.n();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final boolean o() {
        return false;
    }

    public final boolean p() {
        return this.size == 0;
    }

    public Object s() {
        Object obj;
        w wVar;
        ReentrantLock reentrantLock = this.f14709c;
        reentrantLock.lock();
        try {
            int i2 = this.size;
            if (i2 == 0) {
                Object f2 = f();
                if (f2 == null) {
                    f2 = c.f14691c;
                }
                return f2;
            }
            Object obj2 = this.f14710d[this.f14711e];
            this.f14710d[this.f14711e] = null;
            this.size = i2 - 1;
            Object obj3 = c.f14691c;
            if (i2 == this.f14712f) {
                wVar = null;
                obj = null;
                while (true) {
                    w m = m();
                    if (m != null) {
                        if (m != null) {
                            obj = m.d(null);
                            if (obj == null) {
                                wVar = m;
                            } else if (m != null) {
                                obj3 = m.q();
                                wVar = m;
                            } else {
                                j.a();
                                throw null;
                            }
                        } else {
                            j.a();
                            throw null;
                        }
                    }
                }
            } else {
                wVar = null;
                obj = null;
            }
            if (obj3 != c.f14691c && !(obj3 instanceof o)) {
                this.size = i2;
                this.f14710d[(this.f14711e + i2) % this.f14710d.length] = obj3;
            }
            this.f14711e = (this.f14711e + 1) % this.f14710d.length;
            h hVar = h.f14579a;
            reentrantLock.unlock();
            if (obj != null) {
                if (wVar != null) {
                    wVar.c(obj);
                } else {
                    j.a();
                    throw null;
                }
            }
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }
}
