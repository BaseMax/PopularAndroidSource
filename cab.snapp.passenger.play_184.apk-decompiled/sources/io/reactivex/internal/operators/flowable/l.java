package io.reactivex.internal.operators.flowable;

import io.reactivex.e.g;
import io.reactivex.internal.a.a;
import io.reactivex.internal.f.f;
import io.reactivex.internal.f.m;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.e;
import io.reactivex.internal.util.h;
import java.util.concurrent.LinkedBlockingQueue;
import org.b.b;
import org.b.c;

public final class l {
    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void subscribe(b<? extends T> bVar, c<? super T> cVar) {
        Object poll;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        f fVar = new f(linkedBlockingQueue);
        bVar.subscribe(fVar);
        do {
            try {
                if (fVar.isCancelled()) {
                    break;
                }
                poll = linkedBlockingQueue.poll();
                if (poll == null) {
                    if (fVar.isCancelled()) {
                        break;
                    }
                    d.verifyNonBlocking();
                    poll = linkedBlockingQueue.take();
                }
                if (fVar.isCancelled() || poll == f.TERMINATED) {
                    break;
                }
            } catch (InterruptedException e) {
                fVar.cancel();
                cVar.onError(e);
                return;
            }
        } while (!NotificationLite.acceptFull(poll, cVar));
    }

    public static <T> void subscribe(b<? extends T> bVar) {
        e eVar = new e();
        m mVar = new m(a.emptyConsumer(), eVar, eVar, a.REQUEST_MAX);
        bVar.subscribe(mVar);
        d.awaitForComplete(eVar, mVar);
        Throwable th = eVar.error;
        if (th != null) {
            throw h.wrapOrThrow(th);
        }
    }

    public static <T> void subscribe(b<? extends T> bVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        io.reactivex.internal.a.b.requireNonNull(gVar2, "onError is null");
        io.reactivex.internal.a.b.requireNonNull(aVar, "onComplete is null");
        subscribe(bVar, new m(gVar, gVar2, aVar, a.REQUEST_MAX));
    }

    public static <T> void subscribe(b<? extends T> bVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        io.reactivex.internal.a.b.requireNonNull(gVar2, "onError is null");
        io.reactivex.internal.a.b.requireNonNull(aVar, "onComplete is null");
        io.reactivex.internal.a.b.verifyPositive(i, "number > 0 required");
        io.reactivex.internal.f.g gVar3 = new io.reactivex.internal.f.g(gVar, gVar2, aVar, a.boundedConsumer(i), i);
        subscribe(bVar, gVar3);
    }
}
