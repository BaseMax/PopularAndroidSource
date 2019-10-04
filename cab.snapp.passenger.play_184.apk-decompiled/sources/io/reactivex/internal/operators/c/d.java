package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.h;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7381a;

    /* renamed from: b  reason: collision with root package name */
    final T f7382b;

    static final class a<T> extends io.reactivex.observers.a<T> {

        /* renamed from: a  reason: collision with root package name */
        volatile Object f7383a;

        /* renamed from: io.reactivex.internal.operators.c.d$a$a  reason: collision with other inner class name */
        final class C0167a implements Iterator<T> {

            /* renamed from: b  reason: collision with root package name */
            private Object f7385b;

            C0167a() {
            }

            public final boolean hasNext() {
                this.f7385b = a.this.f7383a;
                return !NotificationLite.isComplete(this.f7385b);
            }

            public final T next() {
                Object obj = null;
                try {
                    if (this.f7385b == null) {
                        obj = a.this.f7383a;
                    }
                    if (NotificationLite.isComplete(this.f7385b)) {
                        throw new NoSuchElementException();
                    } else if (!NotificationLite.isError(this.f7385b)) {
                        T value = NotificationLite.getValue(this.f7385b);
                        this.f7385b = obj;
                        return value;
                    } else {
                        throw h.wrapOrThrow(NotificationLite.getError(this.f7385b));
                    }
                } finally {
                    this.f7385b = obj;
                }
            }

            public final void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t) {
            this.f7383a = NotificationLite.next(t);
        }

        public final void onComplete() {
            this.f7383a = NotificationLite.complete();
        }

        public final void onError(Throwable th) {
            this.f7383a = NotificationLite.error(th);
        }

        public final void onNext(T t) {
            this.f7383a = NotificationLite.next(t);
        }

        public final a<T>.a getIterable() {
            return new C0167a();
        }
    }

    public d(ae<T> aeVar, T t) {
        this.f7381a = aeVar;
        this.f7382b = t;
    }

    public final Iterator<T> iterator() {
        a aVar = new a(this.f7382b);
        this.f7381a.subscribe(aVar);
        return aVar.getIterable();
    }
}
