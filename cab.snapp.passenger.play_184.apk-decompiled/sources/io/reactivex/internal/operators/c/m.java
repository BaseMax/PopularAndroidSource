package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class m<T, U extends Collection<? super T>> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final int f7583b;
    final int c;
    final Callable<U> d;

    static final class a<T, U extends Collection<? super T>> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super U> f7584a;

        /* renamed from: b  reason: collision with root package name */
        final int f7585b;
        final Callable<U> c;
        U d;
        int e;
        c f;

        a(ag<? super U> agVar, int i, Callable<U> callable) {
            this.f7584a = agVar;
            this.f7585b = i;
            this.c = callable;
        }

        /* access modifiers changed from: package-private */
        public final boolean a() {
            try {
                this.d = (Collection) io.reactivex.internal.a.b.requireNonNull(this.c.call(), "Empty buffer supplied");
                return true;
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.d = null;
                c cVar = this.f;
                if (cVar == null) {
                    EmptyDisposable.error(th, (ag<?>) this.f7584a);
                } else {
                    cVar.dispose();
                    this.f7584a.onError(th);
                }
                return false;
            }
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                this.f7584a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f.dispose();
        }

        public final boolean isDisposed() {
            return this.f.isDisposed();
        }

        public final void onNext(T t) {
            U u = this.d;
            if (u != null) {
                u.add(t);
                int i = this.e + 1;
                this.e = i;
                if (i >= this.f7585b) {
                    this.f7584a.onNext(u);
                    this.e = 0;
                    a();
                }
            }
        }

        public final void onError(Throwable th) {
            this.d = null;
            this.f7584a.onError(th);
        }

        public final void onComplete() {
            U u = this.d;
            if (u != null) {
                this.d = null;
                if (!u.isEmpty()) {
                    this.f7584a.onNext(u);
                }
                this.f7584a.onComplete();
            }
        }
    }

    static final class b<T, U extends Collection<? super T>> extends AtomicBoolean implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super U> f7586a;

        /* renamed from: b  reason: collision with root package name */
        final int f7587b;
        final int c;
        final Callable<U> d;
        c e;
        final ArrayDeque<U> f = new ArrayDeque<>();
        long g;

        b(ag<? super U> agVar, int i, int i2, Callable<U> callable) {
            this.f7586a = agVar;
            this.f7587b = i;
            this.c = i2;
            this.d = callable;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7586a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.e.isDisposed();
        }

        public final void onNext(T t) {
            long j = this.g;
            this.g = 1 + j;
            if (j % ((long) this.c) == 0) {
                try {
                    this.f.offer((Collection) io.reactivex.internal.a.b.requireNonNull(this.d.call(), "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."));
                } catch (Throwable th) {
                    this.f.clear();
                    this.e.dispose();
                    this.f7586a.onError(th);
                    return;
                }
            }
            Iterator<U> it = this.f.iterator();
            while (it.hasNext()) {
                Collection collection = (Collection) it.next();
                collection.add(t);
                if (this.f7587b <= collection.size()) {
                    it.remove();
                    this.f7586a.onNext(collection);
                }
            }
        }

        public final void onError(Throwable th) {
            this.f.clear();
            this.f7586a.onError(th);
        }

        public final void onComplete() {
            while (!this.f.isEmpty()) {
                this.f7586a.onNext(this.f.poll());
            }
            this.f7586a.onComplete();
        }
    }

    public m(ae<T> aeVar, int i, int i2, Callable<U> callable) {
        super(aeVar);
        this.f7583b = i;
        this.c = i2;
        this.d = callable;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        int i = this.c;
        int i2 = this.f7583b;
        if (i == i2) {
            a aVar = new a(agVar, i2, this.d);
            if (aVar.a()) {
                this.f7091a.subscribe(aVar);
            }
            return;
        }
        this.f7091a.subscribe(new b(agVar, this.f7583b, this.c, this.d));
    }
}
