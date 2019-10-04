package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.g;
import io.reactivex.internal.a.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.c.i;
import io.reactivex.internal.c.t;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.e;
import io.reactivex.internal.util.h;
import java.util.concurrent.LinkedBlockingQueue;

public final class l {
    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void subscribe(ae<? extends T> aeVar, ag<? super T> agVar) {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        i iVar = new i(linkedBlockingQueue);
        agVar.onSubscribe(iVar);
        aeVar.subscribe(iVar);
        while (!iVar.isDisposed()) {
            Object poll = linkedBlockingQueue.poll();
            if (poll == null) {
                try {
                    poll = linkedBlockingQueue.take();
                } catch (InterruptedException e) {
                    iVar.dispose();
                    agVar.onError(e);
                    return;
                }
            }
            if (!iVar.isDisposed() && aeVar != i.TERMINATED) {
                if (NotificationLite.acceptFull(poll, agVar)) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    public static <T> void subscribe(ae<? extends T> aeVar) {
        e eVar = new e();
        t tVar = new t(a.emptyConsumer(), eVar, eVar, a.emptyConsumer());
        aeVar.subscribe(tVar);
        d.awaitForComplete(eVar, tVar);
        Throwable th = eVar.error;
        if (th != null) {
            throw h.wrapOrThrow(th);
        }
    }

    public static <T> void subscribe(ae<? extends T> aeVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar) {
        b.requireNonNull(gVar, "onNext is null");
        b.requireNonNull(gVar2, "onError is null");
        b.requireNonNull(aVar, "onComplete is null");
        subscribe(aeVar, new t(gVar, gVar2, aVar, a.emptyConsumer()));
    }
}
