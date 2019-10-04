package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.b.i;
import io.reactivex.internal.d.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class cj<T> extends a<T, T> {
    final int c;
    final boolean d;
    final boolean e;
    final io.reactivex.e.a f;

    static final class a<T> extends io.reactivex.internal.subscriptions.a<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8092a;

        /* renamed from: b  reason: collision with root package name */
        final i<T> f8093b;
        final boolean c;
        final io.reactivex.e.a d;
        d e;
        volatile boolean f;
        volatile boolean g;
        Throwable h;
        final AtomicLong i = new AtomicLong();
        boolean j;

        a(c<? super T> cVar, int i2, boolean z, boolean z2, io.reactivex.e.a aVar) {
            i<T> iVar;
            this.f8092a = cVar;
            this.d = aVar;
            this.c = z2;
            if (z) {
                iVar = new io.reactivex.internal.d.c<>(i2);
            } else {
                iVar = new b<>(i2);
            }
            this.f8093b = iVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.f8092a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.f8093b.offer(t)) {
                this.e.cancel();
                io.reactivex.c.c cVar = new io.reactivex.c.c("Buffer is full");
                try {
                    this.d.run();
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cVar.initCause(th);
                }
                onError(cVar);
            } else if (this.j) {
                this.f8092a.onNext(null);
            } else {
                a();
            }
        }

        public final void onError(Throwable th) {
            this.h = th;
            this.g = true;
            if (this.j) {
                this.f8092a.onError(th);
            } else {
                a();
            }
        }

        public final void onComplete() {
            this.g = true;
            if (this.j) {
                this.f8092a.onComplete();
            } else {
                a();
            }
        }

        public final void request(long j2) {
            if (!this.j && SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.i, j2);
                a();
            }
        }

        public final void cancel() {
            if (!this.f) {
                this.f = true;
                this.e.cancel();
                if (getAndIncrement() == 0) {
                    this.f8093b.clear();
                }
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                i<T> iVar = this.f8093b;
                c<? super T> cVar = this.f8092a;
                int i2 = 1;
                while (!a(this.g, iVar.isEmpty(), cVar)) {
                    long j2 = this.i.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        boolean z = this.g;
                        T poll = iVar.poll();
                        boolean z2 = poll == null;
                        if (!a(z, z2, cVar)) {
                            if (z2) {
                                break;
                            }
                            cVar.onNext(poll);
                            j3++;
                        } else {
                            return;
                        }
                    }
                    if (j3 != j2 || !a(this.g, iVar.isEmpty(), cVar)) {
                        if (!(j3 == 0 || j2 == Long.MAX_VALUE)) {
                            this.i.addAndGet(-j3);
                        }
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        private boolean a(boolean z, boolean z2, c<? super T> cVar) {
            if (this.f) {
                this.f8093b.clear();
                return true;
            }
            if (z) {
                if (!this.c) {
                    Throwable th = this.h;
                    if (th != null) {
                        this.f8093b.clear();
                        cVar.onError(th);
                        return true;
                    } else if (z2) {
                        cVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    Throwable th2 = this.h;
                    if (th2 != null) {
                        cVar.onError(th2);
                    } else {
                        cVar.onComplete();
                    }
                    return true;
                }
            }
            return false;
        }

        public final int requestFusion(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.j = true;
            return 2;
        }

        public final T poll() throws Exception {
            return this.f8093b.poll();
        }

        public final void clear() {
            this.f8093b.clear();
        }

        public final boolean isEmpty() {
            return this.f8093b.isEmpty();
        }
    }

    public cj(j<T> jVar, int i, boolean z, boolean z2, io.reactivex.e.a aVar) {
        super(jVar);
        this.c = i;
        this.d = z;
        this.e = z2;
        this.f = aVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(cVar, this.c, this.d, this.e, this.f);
        jVar.subscribe(aVar);
    }
}
