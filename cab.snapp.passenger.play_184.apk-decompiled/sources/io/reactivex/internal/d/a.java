package io.reactivex.internal.d;

import io.reactivex.internal.b.i;
import java.util.concurrent.atomic.AtomicReference;

public final class a<T> implements i<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<C0132a<T>> f6794a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<C0132a<T>> f6795b = new AtomicReference<>();

    /* renamed from: io.reactivex.internal.d.a$a  reason: collision with other inner class name */
    static final class C0132a<E> extends AtomicReference<C0132a<E>> {

        /* renamed from: a  reason: collision with root package name */
        private E f6796a;

        C0132a() {
        }

        C0132a(E e) {
            spValue(e);
        }

        public final E getAndNullValue() {
            E lpValue = lpValue();
            spValue(null);
            return lpValue;
        }

        public final E lpValue() {
            return this.f6796a;
        }

        public final void spValue(E e) {
            this.f6796a = e;
        }

        public final void soNext(C0132a<E> aVar) {
            lazySet(aVar);
        }

        public final C0132a<E> lvNext() {
            return (C0132a) get();
        }
    }

    public a() {
        C0132a aVar = new C0132a();
        b(aVar);
        a(aVar);
    }

    public final boolean offer(T t) {
        if (t != null) {
            C0132a aVar = new C0132a(t);
            a(aVar).soNext(aVar);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    public final boolean offer(T t, T t2) {
        offer(t);
        offer(t2);
        return true;
    }

    public final void clear() {
        while (poll() != null) {
            if (isEmpty()) {
                return;
            }
        }
    }

    private C0132a<T> a() {
        return this.f6794a.get();
    }

    private C0132a<T> a(C0132a<T> aVar) {
        return this.f6794a.getAndSet(aVar);
    }

    private void b(C0132a<T> aVar) {
        this.f6795b.lazySet(aVar);
    }

    public final T poll() {
        C0132a lvNext;
        C0132a aVar = this.f6795b.get();
        C0132a lvNext2 = aVar.lvNext();
        if (lvNext2 != null) {
            T andNullValue = lvNext2.getAndNullValue();
            b(lvNext2);
            return andNullValue;
        } else if (aVar == a()) {
            return null;
        } else {
            do {
                lvNext = aVar.lvNext();
            } while (lvNext == null);
            T andNullValue2 = lvNext.getAndNullValue();
            b(lvNext);
            return andNullValue2;
        }
    }

    public final boolean isEmpty() {
        return this.f6795b.get() == a();
    }
}
