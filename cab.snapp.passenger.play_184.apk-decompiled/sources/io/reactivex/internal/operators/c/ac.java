package io.reactivex.internal.operators.c;

import io.reactivex.ab;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ac<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.ac<T> f7097a;

    static final class a<T> extends AtomicReference<c> implements ab<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7098a;

        a(ag<? super T> agVar) {
            this.f7098a = agVar;
        }

        public final void onNext(T t) {
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (!isDisposed()) {
                this.f7098a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            if (!tryOnError(th)) {
                io.reactivex.g.a.onError(th);
            }
        }

        /* JADX INFO: finally extract failed */
        public final boolean tryOnError(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.f7098a.onError(th);
                dispose();
                return true;
            } catch (Throwable th2) {
                dispose();
                throw th2;
            }
        }

        public final void onComplete() {
            if (!isDisposed()) {
                try {
                    this.f7098a.onComplete();
                } finally {
                    dispose();
                }
            }
        }

        public final void setDisposable(c cVar) {
            DisposableHelper.set(this, cVar);
        }

        public final void setCancellable(f fVar) {
            setDisposable(new io.reactivex.internal.disposables.b(fVar));
        }

        public final ab<T> serialize() {
            return new b(this);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final String toString() {
            return String.format("%s{%s}", new Object[]{getClass().getSimpleName(), super.toString()});
        }
    }

    static final class b<T> extends AtomicInteger implements ab<T> {

        /* renamed from: a  reason: collision with root package name */
        final ab<T> f7099a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.util.b f7100b = new io.reactivex.internal.util.b();
        final io.reactivex.internal.d.c<T> c = new io.reactivex.internal.d.c<>(16);
        volatile boolean d;

        public final ab<T> serialize() {
            return this;
        }

        b(ab<T> abVar) {
            this.f7099a = abVar;
        }

        public final void onNext(T t) {
            if (!this.f7099a.isDisposed() && !this.d) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    io.reactivex.internal.d.c<T> cVar = this.c;
                    synchronized (cVar) {
                        cVar.offer(t);
                    }
                    if (getAndIncrement() != 0) {
                        return;
                    }
                } else {
                    this.f7099a.onNext(t);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                b();
            }
        }

        public final void onError(Throwable th) {
            if (!tryOnError(th)) {
                io.reactivex.g.a.onError(th);
            }
        }

        public final boolean tryOnError(Throwable th) {
            if (!this.f7099a.isDisposed() && !this.d) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f7100b.addThrowable(th)) {
                    this.d = true;
                    a();
                    return true;
                }
            }
            return false;
        }

        public final void onComplete() {
            if (!this.f7099a.isDisposed() && !this.d) {
                this.d = true;
                a();
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        private void b() {
            ab<T> abVar = this.f7099a;
            io.reactivex.internal.d.c<T> cVar = this.c;
            io.reactivex.internal.util.b bVar = this.f7100b;
            int i = 1;
            while (!abVar.isDisposed()) {
                if (bVar.get() != null) {
                    cVar.clear();
                    abVar.onError(bVar.terminate());
                    return;
                }
                boolean z = this.d;
                T poll = cVar.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    abVar.onComplete();
                    return;
                } else if (!z2) {
                    abVar.onNext(poll);
                } else {
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
            cVar.clear();
        }

        public final void setDisposable(c cVar) {
            this.f7099a.setDisposable(cVar);
        }

        public final void setCancellable(f fVar) {
            this.f7099a.setCancellable(fVar);
        }

        public final boolean isDisposed() {
            return this.f7099a.isDisposed();
        }

        public final String toString() {
            return this.f7099a.toString();
        }
    }

    public ac(io.reactivex.ac<T> acVar) {
        this.f7097a = acVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar);
        agVar.onSubscribe(aVar);
        try {
            this.f7097a.subscribe(aVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            aVar.onError(th);
        }
    }
}
