package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;

public final class aa extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final b<? extends g> f6887a;

    /* renamed from: b  reason: collision with root package name */
    final int f6888b;
    final boolean c;

    static final class a extends AtomicInteger implements c, o<g> {

        /* renamed from: a  reason: collision with root package name */
        final d f6889a;

        /* renamed from: b  reason: collision with root package name */
        final int f6890b;
        final boolean c;
        final io.reactivex.internal.util.b d = new io.reactivex.internal.util.b();
        final io.reactivex.b.b e = new io.reactivex.b.b();
        org.b.d f;

        /* renamed from: io.reactivex.internal.operators.a.aa$a$a  reason: collision with other inner class name */
        final class C0137a extends AtomicReference<c> implements c, d {
            C0137a() {
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onError(Throwable th) {
                a aVar = a.this;
                aVar.e.delete(this);
                if (!aVar.c) {
                    aVar.f.cancel();
                    aVar.e.dispose();
                    if (!aVar.d.addThrowable(th)) {
                        io.reactivex.g.a.onError(th);
                    } else if (aVar.getAndSet(0) > 0) {
                        aVar.f6889a.onError(aVar.d.terminate());
                    }
                } else if (!aVar.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                } else if (aVar.decrementAndGet() == 0) {
                    aVar.f6889a.onError(aVar.d.terminate());
                } else if (aVar.f6890b != Integer.MAX_VALUE) {
                    aVar.f.request(1);
                }
            }

            public final void onComplete() {
                a aVar = a.this;
                aVar.e.delete(this);
                if (aVar.decrementAndGet() == 0) {
                    Throwable th = (Throwable) aVar.d.get();
                    if (th != null) {
                        aVar.f6889a.onError(th);
                    } else {
                        aVar.f6889a.onComplete();
                    }
                } else {
                    if (aVar.f6890b != Integer.MAX_VALUE) {
                        aVar.f.request(1);
                    }
                }
            }

            public final boolean isDisposed() {
                return DisposableHelper.isDisposed((c) get());
            }

            public final void dispose() {
                DisposableHelper.dispose(this);
            }
        }

        a(d dVar, int i, boolean z) {
            this.f6889a = dVar;
            this.f6890b = i;
            this.c = z;
            lazySet(1);
        }

        public final void dispose() {
            this.f.cancel();
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.e.isDisposed();
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                this.f6889a.onSubscribe(this);
                int i = this.f6890b;
                if (i == Integer.MAX_VALUE) {
                    dVar.request(Long.MAX_VALUE);
                    return;
                }
                dVar.request((long) i);
            }
        }

        public final void onNext(g gVar) {
            getAndIncrement();
            C0137a aVar = new C0137a();
            this.e.add(aVar);
            gVar.subscribe(aVar);
        }

        public final void onError(Throwable th) {
            if (!this.c) {
                this.e.dispose();
                if (!this.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                } else if (getAndSet(0) > 0) {
                    this.f6889a.onError(this.d.terminate());
                }
            } else if (!this.d.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (decrementAndGet() == 0) {
                this.f6889a.onError(this.d.terminate());
            }
        }

        public final void onComplete() {
            if (decrementAndGet() == 0) {
                if (((Throwable) this.d.get()) != null) {
                    this.f6889a.onError(this.d.terminate());
                    return;
                }
                this.f6889a.onComplete();
            }
        }
    }

    public aa(b<? extends g> bVar, int i, boolean z) {
        this.f6887a = bVar;
        this.f6888b = i;
        this.c = z;
    }

    public final void subscribeActual(d dVar) {
        this.f6887a.subscribe(new a(dVar, this.f6888b, this.c));
    }
}
