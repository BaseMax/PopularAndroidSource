package io.reactivex.internal.f;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public abstract class t<T, R> extends AtomicLong implements o<T>, d {
    protected final c<? super R> d;
    protected d e;
    protected R f;
    protected long g;

    /* access modifiers changed from: protected */
    public void onDrop(R r) {
    }

    public t(c<? super R> cVar) {
        this.d = cVar;
    }

    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.e, dVar)) {
            this.e = dVar;
            this.d.onSubscribe(this);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(R r) {
        long j = this.g;
        if (j != 0) {
            io.reactivex.internal.util.c.produced(this, j);
        }
        while (true) {
            long j2 = get();
            if ((j2 & Long.MIN_VALUE) != 0) {
                onDrop(r);
                return;
            } else if ((j2 & Long.MAX_VALUE) != 0) {
                lazySet(-9223372036854775807L);
                this.d.onNext(r);
                this.d.onComplete();
                return;
            } else {
                this.f = r;
                if (!compareAndSet(0, Long.MIN_VALUE)) {
                    this.f = null;
                } else {
                    return;
                }
            }
        }
    }

    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            while (true) {
                long j2 = get();
                if ((j2 & Long.MIN_VALUE) == 0) {
                    if (compareAndSet(j2, io.reactivex.internal.util.c.addCap(j2, j))) {
                        this.e.request(j);
                        break;
                    }
                } else if (compareAndSet(Long.MIN_VALUE, -9223372036854775807L)) {
                    this.d.onNext(this.f);
                    this.d.onComplete();
                    return;
                }
            }
        }
    }

    public void cancel() {
        this.e.cancel();
    }
}
