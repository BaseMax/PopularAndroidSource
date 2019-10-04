package b.H.a.a.b;

import b.H.f;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: WorkTimer */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1372a = f.a("WorkTimer");

    /* renamed from: b  reason: collision with root package name */
    public final ThreadFactory f1373b = new h(this);

    /* renamed from: c  reason: collision with root package name */
    public final ScheduledExecutorService f1374c = Executors.newSingleThreadScheduledExecutor(this.f1373b);

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, b> f1375d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, a> f1376e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    public final Object f1377f = new Object();

    /* compiled from: WorkTimer */
    interface a {
        void a(String str);
    }

    /* compiled from: WorkTimer */
    static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final i f1378a;

        /* renamed from: b  reason: collision with root package name */
        public final String f1379b;

        public b(i iVar, String str) {
            this.f1378a = iVar;
            this.f1379b = str;
        }

        public void run() {
            synchronized (this.f1378a.f1377f) {
                if (this.f1378a.f1375d.remove(this.f1379b) != null) {
                    a remove = this.f1378a.f1376e.remove(this.f1379b);
                    if (remove != null) {
                        remove.a(this.f1379b);
                    }
                } else {
                    f.a().a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", new Object[]{this.f1379b}), new Throwable[0]);
                }
            }
        }
    }

    public void a(String str, long j2, a aVar) {
        synchronized (this.f1377f) {
            f.a().a(f1372a, String.format("Starting timer for %s", new Object[]{str}), new Throwable[0]);
            a(str);
            b bVar = new b(this, str);
            this.f1375d.put(str, bVar);
            this.f1376e.put(str, aVar);
            this.f1374c.schedule(bVar, j2, TimeUnit.MILLISECONDS);
        }
    }

    public void a(String str) {
        synchronized (this.f1377f) {
            if (this.f1375d.remove(str) != null) {
                f.a().a(f1372a, String.format("Stopping timer for %s", new Object[]{str}), new Throwable[0]);
                this.f1376e.remove(str);
            }
        }
    }

    public void a() {
        this.f1374c.shutdownNow();
    }
}
