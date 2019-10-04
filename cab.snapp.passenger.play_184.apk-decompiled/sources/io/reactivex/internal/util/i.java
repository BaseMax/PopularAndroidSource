package io.reactivex.internal.util;

import io.reactivex.ag;
import io.reactivex.g.a;
import java.util.concurrent.atomic.AtomicInteger;
import org.b.c;

public final class i {
    private i() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void onNext(c<? super T> cVar, T t, AtomicInteger atomicInteger, b bVar) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            cVar.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = bVar.terminate();
                if (terminate != null) {
                    cVar.onError(terminate);
                    return;
                }
                cVar.onComplete();
            }
        }
    }

    public static void onError(c<?> cVar, Throwable th, AtomicInteger atomicInteger, b bVar) {
        if (!bVar.addThrowable(th)) {
            a.onError(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            cVar.onError(bVar.terminate());
        }
    }

    public static void onComplete(c<?> cVar, AtomicInteger atomicInteger, b bVar) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = bVar.terminate();
            if (terminate != null) {
                cVar.onError(terminate);
                return;
            }
            cVar.onComplete();
        }
    }

    public static <T> void onNext(ag<? super T> agVar, T t, AtomicInteger atomicInteger, b bVar) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            agVar.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = bVar.terminate();
                if (terminate != null) {
                    agVar.onError(terminate);
                    return;
                }
                agVar.onComplete();
            }
        }
    }

    public static void onError(ag<?> agVar, Throwable th, AtomicInteger atomicInteger, b bVar) {
        if (!bVar.addThrowable(th)) {
            a.onError(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            agVar.onError(bVar.terminate());
        }
    }

    public static void onComplete(ag<?> agVar, AtomicInteger atomicInteger, b bVar) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = bVar.terminate();
            if (terminate != null) {
                agVar.onError(terminate);
                return;
            }
            agVar.onComplete();
        }
    }
}
