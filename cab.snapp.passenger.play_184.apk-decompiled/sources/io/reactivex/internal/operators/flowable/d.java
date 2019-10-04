package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.h;
import io.reactivex.j;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8141a;

    /* renamed from: b  reason: collision with root package name */
    final T f8142b;

    static final class a<T> extends io.reactivex.k.a<T> {

        /* renamed from: a  reason: collision with root package name */
        volatile Object f8143a;

        /* renamed from: io.reactivex.internal.operators.flowable.d$a$a  reason: collision with other inner class name */
        final class C0189a implements Iterator<T> {

            /* renamed from: b  reason: collision with root package name */
            private Object f8145b;

            C0189a() {
            }

            public final boolean hasNext() {
                this.f8145b = a.this.f8143a;
                return !NotificationLite.isComplete(this.f8145b);
            }

            public final T next() {
                Object obj = null;
                try {
                    if (this.f8145b == null) {
                        obj = a.this.f8143a;
                    }
                    if (NotificationLite.isComplete(this.f8145b)) {
                        throw new NoSuchElementException();
                    } else if (!NotificationLite.isError(this.f8145b)) {
                        T value = NotificationLite.getValue(this.f8145b);
                        this.f8145b = obj;
                        return value;
                    } else {
                        throw h.wrapOrThrow(NotificationLite.getError(this.f8145b));
                    }
                } finally {
                    this.f8145b = obj;
                }
            }

            public final void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t) {
            this.f8143a = NotificationLite.next(t);
        }

        public final void onComplete() {
            this.f8143a = NotificationLite.complete();
        }

        public final void onError(Throwable th) {
            this.f8143a = NotificationLite.error(th);
        }

        public final void onNext(T t) {
            this.f8143a = NotificationLite.next(t);
        }

        public final a<T>.a getIterable() {
            return new C0189a();
        }
    }

    public d(j<T> jVar, T t) {
        this.f8141a = jVar;
        this.f8142b = t;
    }

    public final Iterator<T> iterator() {
        a aVar = new a(this.f8142b);
        this.f8141a.subscribe(aVar);
        return aVar.getIterable();
    }
}
