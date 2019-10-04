package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.b.e;
import io.reactivex.internal.b.j;
import io.reactivex.internal.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.e.s;

public final class cd<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ah f7281b;
    final boolean c;
    final int d;

    static final class a<T> extends b<T> implements ag<T>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7282a;

        /* renamed from: b  reason: collision with root package name */
        final ah.c f7283b;
        final boolean c;
        final int d;
        j<T> e;
        c f;
        Throwable g;
        volatile boolean h;
        volatile boolean i;
        int j;
        boolean k;

        a(ag<? super T> agVar, ah.c cVar, boolean z, int i2) {
            this.f7282a = agVar;
            this.f7283b = cVar;
            this.c = z;
            this.d = i2;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                if (cVar instanceof e) {
                    e eVar = (e) cVar;
                    int requestFusion = eVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.j = requestFusion;
                        this.e = eVar;
                        this.h = true;
                        this.f7282a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.j = requestFusion;
                        this.e = eVar;
                        this.f7282a.onSubscribe(this);
                        return;
                    }
                }
                this.e = new io.reactivex.internal.d.c(this.d);
                this.f7282a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.h) {
                if (this.j != 2) {
                    this.e.offer(t);
                }
                a();
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.g = th;
            this.h = true;
            a();
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                a();
            }
        }

        public final void dispose() {
            if (!this.i) {
                this.i = true;
                this.f.dispose();
                this.f7283b.dispose();
                if (getAndIncrement() == 0) {
                    this.e.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.i;
        }

        private void a() {
            if (getAndIncrement() == 0) {
                this.f7283b.schedule(this);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:35:0x0072, code lost:
            r3 = addAndGet(-r3);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:36:0x0077, code lost:
            if (r3 != 0) goto L_0x004f;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
                r7 = this;
                boolean r0 = r7.k
                r1 = 1
                if (r0 == 0) goto L_0x004a
                r0 = 1
            L_0x0006:
                boolean r2 = r7.i
                if (r2 != 0) goto L_0x0049
                boolean r2 = r7.h
                java.lang.Throwable r3 = r7.g
                boolean r4 = r7.c
                if (r4 != 0) goto L_0x0023
                if (r2 == 0) goto L_0x0023
                if (r3 == 0) goto L_0x0023
                r7.i = r1
                io.reactivex.ag<? super T> r0 = r7.f7282a
                r0.onError(r3)
                io.reactivex.ah$c r0 = r7.f7283b
                r0.dispose()
                return
            L_0x0023:
                io.reactivex.ag<? super T> r3 = r7.f7282a
                r4 = 0
                r3.onNext(r4)
                if (r2 == 0) goto L_0x0042
                r7.i = r1
                java.lang.Throwable r0 = r7.g
                if (r0 == 0) goto L_0x0037
                io.reactivex.ag<? super T> r1 = r7.f7282a
                r1.onError(r0)
                goto L_0x003c
            L_0x0037:
                io.reactivex.ag<? super T> r0 = r7.f7282a
                r0.onComplete()
            L_0x003c:
                io.reactivex.ah$c r0 = r7.f7283b
                r0.dispose()
                return
            L_0x0042:
                int r0 = -r0
                int r0 = r7.addAndGet(r0)
                if (r0 != 0) goto L_0x0006
            L_0x0049:
                return
            L_0x004a:
                io.reactivex.internal.b.j<T> r0 = r7.e
                io.reactivex.ag<? super T> r2 = r7.f7282a
                r3 = 1
            L_0x004f:
                boolean r4 = r7.h
                boolean r5 = r0.isEmpty()
                boolean r4 = r7.a(r4, r5, r2)
                if (r4 != 0) goto L_0x0090
            L_0x005b:
                boolean r4 = r7.h
                java.lang.Object r5 = r0.poll()     // Catch:{ all -> 0x007a }
                if (r5 != 0) goto L_0x0065
                r6 = 1
                goto L_0x0066
            L_0x0065:
                r6 = 0
            L_0x0066:
                boolean r4 = r7.a(r4, r6, r2)
                if (r4 != 0) goto L_0x0090
                if (r6 != 0) goto L_0x0072
                r2.onNext(r5)
                goto L_0x005b
            L_0x0072:
                int r3 = -r3
                int r3 = r7.addAndGet(r3)
                if (r3 != 0) goto L_0x004f
                goto L_0x0090
            L_0x007a:
                r3 = move-exception
                io.reactivex.c.b.throwIfFatal(r3)
                r7.i = r1
                io.reactivex.b.c r1 = r7.f
                r1.dispose()
                r0.clear()
                r2.onError(r3)
                io.reactivex.ah$c r0 = r7.f7283b
                r0.dispose()
            L_0x0090:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.cd.a.run():void");
        }

        private boolean a(boolean z, boolean z2, ag<? super T> agVar) {
            if (this.i) {
                this.e.clear();
                return true;
            }
            if (z) {
                Throwable th = this.g;
                if (this.c) {
                    if (z2) {
                        this.i = true;
                        if (th != null) {
                            agVar.onError(th);
                        } else {
                            agVar.onComplete();
                        }
                        this.f7283b.dispose();
                        return true;
                    }
                } else if (th != null) {
                    this.i = true;
                    this.e.clear();
                    agVar.onError(th);
                    this.f7283b.dispose();
                    return true;
                } else if (z2) {
                    this.i = true;
                    agVar.onComplete();
                    this.f7283b.dispose();
                    return true;
                }
            }
            return false;
        }

        public final int requestFusion(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.k = true;
            return 2;
        }

        public final T poll() throws Exception {
            return this.e.poll();
        }

        public final void clear() {
            this.e.clear();
        }

        public final boolean isEmpty() {
            return this.e.isEmpty();
        }
    }

    public cd(ae<T> aeVar, ah ahVar, boolean z, int i) {
        super(aeVar);
        this.f7281b = ahVar;
        this.c = z;
        this.d = i;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ah ahVar = this.f7281b;
        if (ahVar instanceof s) {
            this.f7091a.subscribe(agVar);
            return;
        }
        this.f7091a.subscribe(new a(agVar, ahVar.createWorker(), this.c, this.d));
    }
}
