package i.a.c;

import h.f.b.j;
import i.a.c.m;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: LockFreeTaskQueue.kt */
public class l<E> {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f14763a = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_cur$internal");
    public volatile /* synthetic */ Object _cur$internal;

    public l(boolean z) {
        this._cur$internal = new m(8, z);
    }

    public final void a() {
        while (true) {
            m mVar = (m) this._cur$internal;
            if (!mVar.a()) {
                f14763a.compareAndSet(this, mVar, mVar.e());
            } else {
                return;
            }
        }
    }

    public final int b() {
        return ((m) this._cur$internal).b();
    }

    public final E c() {
        E e2;
        E e3;
        while (true) {
            m mVar = (m) this._cur$internal;
            while (true) {
                long j2 = mVar._state$internal;
                e2 = null;
                if ((1152921504606846976L & j2) == 0) {
                    m.a aVar = m.f14767d;
                    int i2 = (int) ((1073741823 & j2) >> 0);
                    if ((mVar.f14768e & ((int) ((1152921503533105152L & j2) >> 30))) != (mVar.f14768e & i2)) {
                        e3 = mVar.f14769f.get(mVar.f14768e & i2);
                        if (e3 != null) {
                            if (!(e3 instanceof m.b)) {
                                int i3 = (i2 + 1) & 1073741823;
                                if (!m.f14765b.compareAndSet(mVar, j2, m.f14767d.a(j2, i3))) {
                                    if (mVar.f14771h) {
                                        m mVar2 = mVar;
                                        do {
                                            mVar2 = mVar2.a(i2, i3);
                                        } while (mVar2 != null);
                                        break;
                                    }
                                } else {
                                    mVar.f14769f.set(mVar.f14768e & i2, null);
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else if (mVar.f14771h) {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    e2 = m.f14766c;
                    break;
                }
            }
            e2 = e3;
            if (e2 != m.f14766c) {
                return e2;
            }
            f14763a.compareAndSet(this, mVar, mVar.e());
        }
    }

    public final boolean a(E e2) {
        j.b(e2, "element");
        while (true) {
            m mVar = (m) this._cur$internal;
            int a2 = mVar.a(e2);
            if (a2 == 0) {
                return true;
            }
            if (a2 == 1) {
                f14763a.compareAndSet(this, mVar, mVar.e());
            } else if (a2 == 2) {
                return false;
            }
        }
    }
}
