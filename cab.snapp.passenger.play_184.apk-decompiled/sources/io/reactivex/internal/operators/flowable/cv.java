package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;

public final class cv extends j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final long f8126b;
    final long c;

    static abstract class a extends io.reactivex.internal.subscriptions.b<Long> {

        /* renamed from: a  reason: collision with root package name */
        final long f8127a;

        /* renamed from: b  reason: collision with root package name */
        long f8128b;
        volatile boolean c;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void a(long j);

        public final int requestFusion(int i) {
            return i & 1;
        }

        a(long j, long j2) {
            this.f8128b = j;
            this.f8127a = j2;
        }

        public final Long poll() {
            long j = this.f8128b;
            if (j == this.f8127a) {
                return null;
            }
            this.f8128b = 1 + j;
            return Long.valueOf(j);
        }

        public final boolean isEmpty() {
            return this.f8128b == this.f8127a;
        }

        public final void clear() {
            this.f8128b = this.f8127a;
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
        final io.reactivex.internal.b.a<? super Long> d;

        b(io.reactivex.internal.b.a<? super Long> aVar, long j, long j2) {
            super(j, j2);
            this.d = aVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            long j = this.f8127a;
            io.reactivex.internal.b.a<? super Long> aVar = this.d;
            long j2 = this.f8128b;
            while (j2 != j) {
                if (!this.c) {
                    aVar.tryOnNext(Long.valueOf(j2));
                    j2++;
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
            long j2 = this.f8127a;
            long j3 = this.f8128b;
            io.reactivex.internal.b.a<? super Long> aVar = this.d;
            long j4 = j3;
            long j5 = j;
            do {
                long j6 = 0;
                while (true) {
                    if (j6 == j5 || j4 == j2) {
                        if (j4 == j2) {
                            if (!this.c) {
                                aVar.onComplete();
                            }
                            return;
                        }
                        j5 = get();
                        if (j6 == j5) {
                            this.f8128b = j4;
                            j5 = addAndGet(-j6);
                        }
                    } else if (!this.c) {
                        if (aVar.tryOnNext(Long.valueOf(j4))) {
                            j6++;
                        }
                        j4++;
                    } else {
                        return;
                    }
                }
            } while (j5 != 0);
        }
    }

    static final class c extends a {
        final org.b.c<? super Long> d;

        c(org.b.c<? super Long> cVar, long j, long j2) {
            super(j, j2);
            this.d = cVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            long j = this.f8127a;
            org.b.c<? super Long> cVar = this.d;
            long j2 = this.f8128b;
            while (j2 != j) {
                if (!this.c) {
                    cVar.onNext(Long.valueOf(j2));
                    j2++;
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
            long j2 = this.f8127a;
            long j3 = this.f8128b;
            org.b.c<? super Long> cVar = this.d;
            long j4 = j3;
            long j5 = j;
            do {
                long j6 = 0;
                while (true) {
                    if (j6 == j5 || j4 == j2) {
                        if (j4 == j2) {
                            if (!this.c) {
                                cVar.onComplete();
                            }
                            return;
                        }
                        j5 = get();
                        if (j6 == j5) {
                            this.f8128b = j4;
                            j5 = addAndGet(-j6);
                        }
                    } else if (!this.c) {
                        cVar.onNext(Long.valueOf(j4));
                        j6++;
                        j4++;
                    } else {
                        return;
                    }
                }
            } while (j5 != 0);
        }
    }

    public cv(long j, long j2) {
        this.f8126b = j;
        this.c = j + j2;
    }

    public final void subscribeActual(org.b.c<? super Long> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            b bVar = new b((io.reactivex.internal.b.a) cVar, this.f8126b, this.c);
            cVar.onSubscribe(bVar);
            return;
        }
        c cVar2 = new c(cVar, this.f8126b, this.c);
        cVar.onSubscribe(cVar2);
    }
}
