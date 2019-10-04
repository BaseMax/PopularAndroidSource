package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.b.b;
import org.b.c;
import org.b.d;

public final class v<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final b<? extends T>[] f8395b;
    final boolean c;

    static final class a<T> extends e implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8396a;

        /* renamed from: b  reason: collision with root package name */
        final b<? extends T>[] f8397b;
        final boolean c;
        final AtomicInteger d = new AtomicInteger();
        int e;
        List<Throwable> f;
        long g;

        a(b<? extends T>[] bVarArr, boolean z, c<? super T> cVar) {
            super(false);
            this.f8396a = cVar;
            this.f8397b = bVarArr;
            this.c = z;
        }

        public final void onSubscribe(d dVar) {
            setSubscription(dVar);
        }

        public final void onNext(T t) {
            this.g++;
            this.f8396a.onNext(t);
        }

        public final void onError(Throwable th) {
            if (this.c) {
                List list = this.f;
                if (list == null) {
                    list = new ArrayList((this.f8397b.length - this.e) + 1);
                    this.f = list;
                }
                list.add(th);
                onComplete();
                return;
            }
            this.f8396a.onError(th);
        }

        public final void onComplete() {
            if (this.d.getAndIncrement() == 0) {
                b<? extends T>[] bVarArr = this.f8397b;
                int length = bVarArr.length;
                int i = this.e;
                while (i != length) {
                    b<? extends T> bVar = bVarArr[i];
                    if (bVar == null) {
                        NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                        if (this.c) {
                            List list = this.f;
                            if (list == null) {
                                list = new ArrayList((length - i) + 1);
                                this.f = list;
                            }
                            list.add(nullPointerException);
                            i++;
                        } else {
                            this.f8396a.onError(nullPointerException);
                            return;
                        }
                    } else {
                        long j = this.g;
                        if (j != 0) {
                            this.g = 0;
                            produced(j);
                        }
                        bVar.subscribe(this);
                        i++;
                        this.e = i;
                        if (this.d.decrementAndGet() == 0) {
                        }
                    }
                }
                List<Throwable> list2 = this.f;
                if (list2 == null) {
                    this.f8396a.onComplete();
                } else if (list2.size() == 1) {
                    this.f8396a.onError(list2.get(0));
                } else {
                    this.f8396a.onError(new io.reactivex.c.a((Iterable<? extends Throwable>) list2));
                }
            }
        }
    }

    public v(b<? extends T>[] bVarArr, boolean z) {
        this.f8395b = bVarArr;
        this.c = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(this.f8395b, this.c, cVar);
        cVar.onSubscribe(aVar);
        aVar.onComplete();
    }
}
