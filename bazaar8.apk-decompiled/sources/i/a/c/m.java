package i.a.c;

import h.f.b.f;
import h.f.b.j;
import i.a.K;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: LockFreeTaskQueue.kt */
public final class m<E> {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14764a = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_next");

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f14765b = AtomicLongFieldUpdater.newUpdater(m.class, "_state$internal");

    /* renamed from: c  reason: collision with root package name */
    public static final v f14766c = new v("REMOVE_FROZEN");

    /* renamed from: d  reason: collision with root package name */
    public static final a f14767d = new a(null);
    public volatile Object _next = null;
    public volatile /* synthetic */ long _state$internal = 0;

    /* renamed from: e  reason: collision with root package name */
    public final int f14768e;

    /* renamed from: f  reason: collision with root package name */
    public /* synthetic */ AtomicReferenceArray f14769f;

    /* renamed from: g  reason: collision with root package name */
    public final int f14770g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f14771h;

    /* compiled from: LockFreeTaskQueue.kt */
    public static final class a {
        public a() {
        }

        public final int a(long j2) {
            return (j2 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long a(long j2, int i2) {
            return a(j2, 1073741823) | (((long) i2) << 0);
        }

        public final long a(long j2, long j3) {
            return j2 & (j3 ^ -1);
        }

        public final long b(long j2, int i2) {
            return a(j2, 1152921503533105152L) | (((long) i2) << 30);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: LockFreeTaskQueue.kt */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f14772a;

        public b(int i2) {
            this.f14772a = i2;
        }
    }

    public m(int i2, boolean z) {
        this.f14770g = i2;
        this.f14771h = z;
        int i3 = this.f14770g;
        this.f14768e = i3 - 1;
        this.f14769f = new AtomicReferenceArray(i3);
        boolean z2 = false;
        if (this.f14768e <= 1073741823) {
            if (!((this.f14770g & this.f14768e) == 0 ? true : z2)) {
                throw new IllegalStateException("Check failed.");
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final boolean c() {
        a aVar = f14767d;
        long j2 = this._state$internal;
        return ((int) ((1073741823 & j2) >> 0)) == ((int) ((j2 & 1152921503533105152L) >> 30));
    }

    public final long d() {
        long j2;
        long j3;
        do {
            j2 = this._state$internal;
            if ((j2 & 1152921504606846976L) != 0) {
                return j2;
            }
            j3 = j2 | 1152921504606846976L;
        } while (!f14765b.compareAndSet(this, j2, j3));
        return j3;
    }

    public final m<E> e() {
        return b(d());
    }

    public final Object f() {
        Object obj;
        while (true) {
            long j2 = this._state$internal;
            if ((1152921504606846976L & j2) == 0) {
                a aVar = f14767d;
                int i2 = (int) ((1073741823 & j2) >> 0);
                if ((this.f14768e & ((int) ((1152921503533105152L & j2) >> 30))) != (this.f14768e & i2)) {
                    obj = this.f14769f.get(this.f14768e & i2);
                    if (obj != null) {
                        if (!(obj instanceof b)) {
                            int i3 = (i2 + 1) & 1073741823;
                            if (!f14765b.compareAndSet(this, j2, f14767d.a(j2, i3))) {
                                if (this.f14771h) {
                                    m mVar = this;
                                    do {
                                        mVar = mVar.a(i2, i3);
                                    } while (mVar != null);
                                    break;
                                }
                            } else {
                                this.f14769f.set(this.f14768e & i2, null);
                                break;
                            }
                        } else {
                            return null;
                        }
                    } else if (this.f14771h) {
                        return null;
                    }
                } else {
                    return null;
                }
            } else {
                return f14766c;
            }
        }
        return obj;
    }

    public final int b() {
        a aVar = f14767d;
        long j2 = this._state$internal;
        return 1073741823 & (((int) ((j2 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j2) >> 0)));
    }

    public final m<E> a(int i2, E e2) {
        Object obj = this.f14769f.get(this.f14768e & i2);
        if (!(obj instanceof b) || ((b) obj).f14772a != i2) {
            return null;
        }
        this.f14769f.set(i2 & this.f14768e, e2);
        return this;
    }

    public final m<E> b(long j2) {
        while (true) {
            m<E> mVar = (m) this._next;
            if (mVar != null) {
                return mVar;
            }
            f14764a.compareAndSet(this, null, a(j2));
        }
    }

    public final m<E> a(long j2) {
        m<E> mVar = new m<>(this.f14770g * 2, this.f14771h);
        a aVar = f14767d;
        int i2 = (int) ((1073741823 & j2) >> 0);
        int i3 = (int) ((1152921503533105152L & j2) >> 30);
        while (true) {
            int i4 = this.f14768e;
            if ((i2 & i4) != (i3 & i4)) {
                Object obj = this.f14769f.get(i4 & i2);
                if (obj == null) {
                    obj = new b(i2);
                }
                mVar.f14769f.set(mVar.f14768e & i2, obj);
                i2++;
            } else {
                mVar._state$internal = f14767d.a(j2, 1152921504606846976L);
                return mVar;
            }
        }
    }

    public final boolean a() {
        long j2;
        do {
            j2 = this._state$internal;
            if ((j2 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j2) != 0) {
                return false;
            }
        } while (!f14765b.compareAndSet(this, j2, j2 | 2305843009213693952L));
        return true;
    }

    public final int a(E e2) {
        j.b(e2, "element");
        while (true) {
            long j2 = this._state$internal;
            if ((3458764513820540928L & j2) != 0) {
                return f14767d.a(j2);
            }
            a aVar = f14767d;
            int i2 = (int) ((1073741823 & j2) >> 0);
            int i3 = (int) ((1152921503533105152L & j2) >> 30);
            int i4 = this.f14768e;
            if (((i3 + 2) & i4) == (i2 & i4)) {
                return 1;
            }
            if (this.f14771h || this.f14769f.get(i3 & i4) == null) {
                if (f14765b.compareAndSet(this, j2, f14767d.b(j2, (i3 + 1) & 1073741823))) {
                    this.f14769f.set(i3 & i4, e2);
                    m mVar = this;
                    while ((mVar._state$internal & 1152921504606846976L) != 0) {
                        mVar = mVar.e().a(i3, e2);
                        if (mVar == null) {
                            break;
                        }
                    }
                    return 0;
                }
            } else {
                int i5 = this.f14770g;
                if (i5 < 1024 || ((i3 - i2) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            }
        }
        return 1;
    }

    public final m<E> a(int i2, int i3) {
        long j2;
        int i4;
        do {
            j2 = this._state$internal;
            a aVar = f14767d;
            boolean z = false;
            i4 = (int) ((1073741823 & j2) >> 0);
            if (K.a()) {
                if (i4 == i2) {
                    z = true;
                }
                if (!z) {
                    throw new AssertionError();
                }
            }
            if ((1152921504606846976L & j2) != 0) {
                return e();
            }
        } while (!f14765b.compareAndSet(this, j2, f14767d.a(j2, i3)));
        this.f14769f.set(this.f14768e & i4, null);
        return null;
    }
}
