package io.reactivex.internal.e;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class p {
    public static final boolean PURGE_ENABLED;
    public static final int PURGE_PERIOD_SECONDS;

    /* renamed from: a  reason: collision with root package name */
    static final AtomicReference<ScheduledExecutorService> f6839a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    static final Map<ScheduledThreadPoolExecutor, Object> f6840b = new ConcurrentHashMap();

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f6841a;

        /* renamed from: b  reason: collision with root package name */
        int f6842b;

        a() {
        }
    }

    static final class b implements Runnable {
        b() {
        }

        public final void run() {
            Iterator it = new ArrayList(p.f6840b.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    p.f6840b.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    private p() {
        throw new IllegalStateException("No instances!");
    }

    static {
        Properties properties = System.getProperties();
        a aVar = new a();
        if (properties.containsKey("rx2.purge-enabled")) {
            aVar.f6841a = Boolean.parseBoolean(properties.getProperty("rx2.purge-enabled"));
        } else {
            aVar.f6841a = true;
        }
        if (aVar.f6841a && properties.containsKey("rx2.purge-period-seconds")) {
            try {
                aVar.f6842b = Integer.parseInt(properties.getProperty("rx2.purge-period-seconds"));
            } catch (NumberFormatException unused) {
            }
            PURGE_ENABLED = aVar.f6841a;
            PURGE_PERIOD_SECONDS = aVar.f6842b;
            start();
        }
        aVar.f6842b = 1;
        PURGE_ENABLED = aVar.f6841a;
        PURGE_PERIOD_SECONDS = aVar.f6842b;
        start();
    }

    public static void start() {
        if (PURGE_ENABLED) {
            while (true) {
                ScheduledExecutorService scheduledExecutorService = f6839a.get();
                if (scheduledExecutorService != null) {
                    break;
                }
                ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new k("RxSchedulerPurge"));
                if (f6839a.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                    b bVar = new b();
                    int i = PURGE_PERIOD_SECONDS;
                    newScheduledThreadPool.scheduleAtFixedRate(bVar, (long) i, (long) i, TimeUnit.SECONDS);
                    return;
                }
                newScheduledThreadPool.shutdownNow();
            }
        }
    }

    public static void shutdown() {
        ScheduledExecutorService andSet = f6839a.getAndSet(null);
        if (andSet != null) {
            andSet.shutdownNow();
        }
        f6840b.clear();
    }

    public static ScheduledExecutorService create(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (PURGE_ENABLED && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            f6840b.put((ScheduledThreadPoolExecutor) newScheduledThreadPool, newScheduledThreadPool);
        }
        return newScheduledThreadPool;
    }
}
