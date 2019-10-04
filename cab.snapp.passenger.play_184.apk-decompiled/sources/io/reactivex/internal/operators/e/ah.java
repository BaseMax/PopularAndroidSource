package io.reactivex.internal.operators.e;

import io.reactivex.ao;
import io.reactivex.e.h;
import io.reactivex.j;
import io.reactivex.z;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;

public final class ah {

    enum a implements Callable<NoSuchElementException> {
        ;

        private a(String str) {
        }

        public final NoSuchElementException call() throws Exception {
            return new NoSuchElementException();
        }
    }

    enum b implements h<ao, org.b.b> {
        ;

        private b(String str) {
        }

        public final org.b.b apply(ao aoVar) {
            return new au(aoVar);
        }
    }

    static final class c<T> implements Iterable<j<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterable<? extends ao<? extends T>> f7745a;

        c(Iterable<? extends ao<? extends T>> iterable) {
            this.f7745a = iterable;
        }

        public final Iterator<j<T>> iterator() {
            return new d(this.f7745a.iterator());
        }
    }

    static final class d<T> implements Iterator<j<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<? extends ao<? extends T>> f7746a;

        d(Iterator<? extends ao<? extends T>> it) {
            this.f7746a = it;
        }

        public final boolean hasNext() {
            return this.f7746a.hasNext();
        }

        public final j<T> next() {
            return new au((ao) this.f7746a.next());
        }

        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    enum e implements h<ao, z> {
        ;

        private e(String str) {
        }

        public final z apply(ao aoVar) {
            return new av(aoVar);
        }
    }

    private ah() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Callable<NoSuchElementException> emptyThrower() {
        return a.INSTANCE;
    }

    public static <T> h<ao<? extends T>, org.b.b<? extends T>> toFlowable() {
        return b.INSTANCE;
    }

    public static <T> Iterable<? extends j<T>> iterableToFlowable(Iterable<? extends ao<? extends T>> iterable) {
        return new c(iterable);
    }

    public static <T> h<ao<? extends T>, z<? extends T>> toObservable() {
        return e.INSTANCE;
    }
}
