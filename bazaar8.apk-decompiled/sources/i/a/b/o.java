package i.a.b;

import h.f.b.j;
import i.a.K;
import kotlinx.coroutines.channels.ClosedReceiveChannelException;
import kotlinx.coroutines.channels.ClosedSendChannelException;

/* compiled from: AbstractChannel.kt */
public final class o<E> extends w implements u<E> {

    /* renamed from: d  reason: collision with root package name */
    public final Throwable f14716d;

    public o(Throwable th) {
        this.f14716d = th;
    }

    public Object a(E e2, Object obj) {
        return c.f14695g;
    }

    public void b(Object obj) {
        j.b(obj, "token");
        if (K.a()) {
            if (!(obj == c.f14695g)) {
                throw new AssertionError();
            }
        }
    }

    public o<E> c() {
        return this;
    }

    public Object d(Object obj) {
        return c.f14695g;
    }

    public o<E> q() {
        return this;
    }

    public final Throwable r() {
        Throwable th = this.f14716d;
        return th != null ? th : new ClosedReceiveChannelException("Channel was closed");
    }

    public final Throwable t() {
        Throwable th = this.f14716d;
        return th != null ? th : new ClosedSendChannelException("Channel was closed");
    }

    public String toString() {
        return "Closed[" + this.f14716d + ']';
    }

    public void a(o<?> oVar) {
        j.b(oVar, "closed");
        if (K.a()) {
            throw new AssertionError();
        }
    }

    public void c(Object obj) {
        j.b(obj, "token");
        if (K.a()) {
            if (!(obj == c.f14695g)) {
                throw new AssertionError();
            }
        }
    }
}
