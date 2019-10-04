package io.reactivex.internal.util;

import io.reactivex.b.c;
import io.reactivex.g.a;
import io.reactivex.internal.e.j;
import java.util.concurrent.CountDownLatch;

public final class d {
    private d() {
        throw new IllegalStateException("No instances!");
    }

    public static void awaitForComplete(CountDownLatch countDownLatch, c cVar) {
        if (countDownLatch.getCount() != 0) {
            try {
                verifyNonBlocking();
                countDownLatch.await();
            } catch (InterruptedException e) {
                cVar.dispose();
                Thread.currentThread().interrupt();
                throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e);
            }
        }
    }

    public static void verifyNonBlocking() {
        if (!a.isFailOnNonBlockingScheduler()) {
            return;
        }
        if ((Thread.currentThread() instanceof j) || a.onBeforeBlocking()) {
            throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
        }
    }
}
