package h.a;

import h.f.b.a.a;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.State;

/* renamed from: h.a.c  reason: case insensitive filesystem */
/* compiled from: AbstractIterator.kt */
public abstract class C1086c<T> implements Iterator<T>, a {

    /* renamed from: a  reason: collision with root package name */
    public State f14516a = State.NotReady;

    /* renamed from: b  reason: collision with root package name */
    public T f14517b;

    public abstract void a();

    public final void b(T t) {
        this.f14517b = t;
        this.f14516a = State.Ready;
    }

    public final boolean c() {
        this.f14516a = State.Failed;
        a();
        return this.f14516a == State.Ready;
    }

    public boolean hasNext() {
        if (this.f14516a != State.Failed) {
            int i2 = C1085b.f14515a[this.f14516a.ordinal()];
            if (i2 == 1) {
                return false;
            }
            if (i2 != 2) {
                return c();
            }
            return true;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public T next() {
        if (hasNext()) {
            this.f14516a = State.NotReady;
            return this.f14517b;
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void b() {
        this.f14516a = State.Done;
    }
}
