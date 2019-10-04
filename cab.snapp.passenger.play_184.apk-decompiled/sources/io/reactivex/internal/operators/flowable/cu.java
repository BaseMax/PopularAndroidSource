package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;

public final class cu extends j<Integer> {

    /* renamed from: b  reason: collision with root package name */
    final int f8123b;
    final int c;

    static abstract class a extends io.reactivex.internal.subscriptions.b<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final int f8124a;

        /* renamed from: b  reason: collision with root package name */
        int f8125b;
        volatile boolean c;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void a(long j);

        public final int requestFusion(int i) {
            return i & 1;
        }

        a(int i, int i2) {
            this.f8125b = i;
            this.f8124a = i2;
        }

        public final Integer poll() {
            int i = this.f8125b;
            if (i == this.f8124a) {
                return null;
            }
            this.f8125b = i + 1;
            return Integer.valueOf(i);
        }

        public final boolean isEmpty() {
            return this.f8125b == this.f8124a;
        }

        public final void clear() {
            this.f8125b = this.f8124a;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && io.reactivex.internal.util.c.add(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    a();
                    return;
                }
                a(j);
            }
        }

        public final void cancel() {
            this.c = true;
        }
    }

    static final class b extends a {
        final io.reactivex.internal.b.a<? super Integer> d;

        b(io.reactivex.internal.b.a<? super Integer> aVar, int i, int i2) {
            super(i, i2);
            this.d = aVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            int i = this.f8124a;
            io.reactivex.internal.b.a<? super Integer> aVar = this.d;
            int i2 = this.f8125b;
            while (i2 != i) {
                if (!this.c) {
                    aVar.tryOnNext(Integer.valueOf(i2));
                    i2++;
                } else {
                    return;
                }
            }
            if (!this.c) {
                aVar.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            int i = this.f8124a;
            int i2 = this.f8125b;
            io.reactivex.internal.b.a<? super Integer> aVar = this.d;
            long j2 = j;
            do {
                long j3 = 0;
                while (true) {
                    if (j3 == j2 || i2 == i) {
                        if (i2 == i) {
                            if (!this.c) {
                                aVar.onComplete();
                            }
                            return;
                        }
                        j2 = get();
                        if (j3 == j2) {
                            this.f8125b = i2;
                            j2 = addAndGet(-j3);
                        }
                    } else if (!this.c) {
                        if (aVar.tryOnNext(Integer.valueOf(i2))) {
                            j3++;
                        }
                        i2++;
                    } else {
                        return;
                    }
                }
            } while (j2 != 0);
        }
    }

    static final class c extends a {
        final org.b.c<? super Integer> d;

        c(org.b.c<? super Integer> cVar, int i, int i2) {
            super(i, i2);
            this.d = cVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            int i = this.f8124a;
            org.b.c<? super Integer> cVar = this.d;
            int i2 = this.f8125b;
            while (i2 != i) {
                if (!this.c) {
                    cVar.onNext(Integer.valueOf(i2));
                    i2++;
                } else {
                    return;
                }
            }
            if (!this.c) {
                cVar.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            int i = this.f8124a;
            int i2 = this.f8125b;
            org.b.c<? super Integer> cVar = this.d;
            long j2 = j;
            do {
                long j3 = 0;
                while (true) {
                    if (j3 == j2 || i2 == i) {
                        if (i2 == i) {
                            if (!this.c) {
                                cVar.onComplete();
                            }
                            return;
                        }
                        j2 = get();
                        if (j3 == j2) {
                            this.f8125b = i2;
                            j2 = addAndGet(-j3);
                        }
                    } else if (!this.c) {
                        cVar.onNext(Integer.valueOf(i2));
                        j3++;
                        i2++;
                    } else {
                        return;
                    }
                }
            } while (j2 != 0);
        }
    }

    public cu(int i, int i2) {
        this.f8123b = i;
        this.c = i + i2;
    }

    public final void subscribeActual(org.b.c<? super Integer> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            cVar.onSubscribe(new b((io.reactivex.internal.b.a) cVar, this.f8123b, this.c));
        } else {
            cVar.onSubscribe(new c(cVar, this.f8123b, this.c));
        }
    }
}
