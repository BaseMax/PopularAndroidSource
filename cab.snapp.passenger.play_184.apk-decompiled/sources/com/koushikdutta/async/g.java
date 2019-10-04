package com.koushikdutta.async;

import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    Semaphore f4534a = new Semaphore(0);

    public final void acquire() throws InterruptedException {
        ae a2 = ae.a(Thread.currentThread());
        g gVar = a2.f4452a;
        a2.f4452a = this;
        Semaphore semaphore = a2.f4453b;
        try {
            if (!this.f4534a.tryAcquire()) {
                while (true) {
                    Runnable remove = a2.remove();
                    if (remove != null) {
                        remove.run();
                    } else {
                        semaphore.acquire(Math.max(1, semaphore.availablePermits()));
                        if (this.f4534a.tryAcquire()) {
                            a2.f4452a = gVar;
                            return;
                        }
                    }
                }
            }
        } finally {
            a2.f4452a = gVar;
        }
    }

    public final boolean tryAcquire(long j, TimeUnit timeUnit) throws InterruptedException {
        long convert = TimeUnit.MILLISECONDS.convert(j, timeUnit);
        ae a2 = ae.a(Thread.currentThread());
        g gVar = a2.f4452a;
        a2.f4452a = this;
        Semaphore semaphore = a2.f4453b;
        try {
            if (this.f4534a.tryAcquire()) {
                return true;
            }
            long currentTimeMillis = System.currentTimeMillis();
            while (true) {
                Runnable remove = a2.remove();
                if (remove != null) {
                    remove.run();
                } else if (!semaphore.tryAcquire(Math.max(1, semaphore.availablePermits()), convert, TimeUnit.MILLISECONDS)) {
                    a2.f4452a = gVar;
                    return false;
                } else if (this.f4534a.tryAcquire()) {
                    a2.f4452a = gVar;
                    return true;
                } else if (System.currentTimeMillis() - currentTimeMillis >= convert) {
                    a2.f4452a = gVar;
                    return false;
                }
            }
        } finally {
            a2.f4452a = gVar;
        }
    }

    public final void release() {
        this.f4534a.release();
        ae.a(this);
    }
}
