package c.b.a.g;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import c.b.a.g.a.g;
import c.b.a.g.a.h;
import c.b.a.g.b.b;
import c.b.a.i.k;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: RequestFutureTarget */
public class e<R> implements b<R>, f<R>, Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4382a = new a();

    /* renamed from: b  reason: collision with root package name */
    public final Handler f4383b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4384c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4385d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f4386e;

    /* renamed from: f  reason: collision with root package name */
    public final a f4387f;

    /* renamed from: g  reason: collision with root package name */
    public R f4388g;

    /* renamed from: h  reason: collision with root package name */
    public c f4389h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4390i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f4391j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4392k;

    /* renamed from: l  reason: collision with root package name */
    public GlideException f4393l;

    /* compiled from: RequestFutureTarget */
    static class a {
        public void a(Object obj, long j2) {
            obj.wait(j2);
        }

        public void a(Object obj) {
            obj.notifyAll();
        }
    }

    public e(Handler handler, int i2, int i3) {
        this(handler, i2, i3, true, f4382a);
    }

    public void a() {
    }

    public void a(g gVar) {
    }

    public void a(c cVar) {
        this.f4389h = cVar;
    }

    public void b() {
    }

    public void b(Drawable drawable) {
    }

    public void b(g gVar) {
        gVar.a(this.f4384c, this.f4385d);
    }

    public final void c() {
        this.f4383b.post(this);
    }

    public void c(Drawable drawable) {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0018, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean cancel(boolean r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.isDone()     // Catch:{ all -> 0x0019 }
            if (r0 == 0) goto L_0x000a
            r3 = 0
            monitor-exit(r2)
            return r3
        L_0x000a:
            r0 = 1
            r2.f4390i = r0     // Catch:{ all -> 0x0019 }
            c.b.a.g.e$a r1 = r2.f4387f     // Catch:{ all -> 0x0019 }
            r1.a(r2)     // Catch:{ all -> 0x0019 }
            if (r3 == 0) goto L_0x0017
            r2.c()     // Catch:{ all -> 0x0019 }
        L_0x0017:
            monitor-exit(r2)
            return r0
        L_0x0019:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.g.e.cancel(boolean):boolean");
    }

    public R get() {
        try {
            return a((Long) null);
        } catch (TimeoutException e2) {
            throw new AssertionError(e2);
        }
    }

    public c getRequest() {
        return this.f4389h;
    }

    public synchronized boolean isCancelled() {
        return this.f4390i;
    }

    public synchronized boolean isDone() {
        return this.f4390i || this.f4391j || this.f4392k;
    }

    public void onDestroy() {
    }

    public void run() {
        c cVar = this.f4389h;
        if (cVar != null) {
            cVar.clear();
            this.f4389h = null;
        }
    }

    public e(Handler handler, int i2, int i3, boolean z, a aVar) {
        this.f4383b = handler;
        this.f4384c = i2;
        this.f4385d = i3;
        this.f4386e = z;
        this.f4387f = aVar;
    }

    public synchronized void a(Drawable drawable) {
    }

    public synchronized void a(R r, b<? super R> bVar) {
    }

    public R get(long j2, TimeUnit timeUnit) {
        return a(Long.valueOf(timeUnit.toMillis(j2)));
    }

    public final synchronized R a(Long l2) {
        if (this.f4386e && !isDone()) {
            k.a();
        }
        if (this.f4390i) {
            throw new CancellationException();
        } else if (this.f4392k) {
            throw new ExecutionException(this.f4393l);
        } else if (this.f4391j) {
            return this.f4388g;
        } else {
            if (l2 == null) {
                this.f4387f.a(this, 0);
            } else if (l2.longValue() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                long longValue = l2.longValue() + currentTimeMillis;
                while (!isDone() && currentTimeMillis < longValue) {
                    this.f4387f.a(this, longValue - currentTimeMillis);
                    currentTimeMillis = System.currentTimeMillis();
                }
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            } else if (this.f4392k) {
                throw new ExecutionException(this.f4393l);
            } else if (this.f4390i) {
                throw new CancellationException();
            } else if (this.f4391j) {
                return this.f4388g;
            } else {
                throw new TimeoutException();
            }
        }
    }

    public synchronized boolean a(GlideException glideException, Object obj, h<R> hVar, boolean z) {
        this.f4392k = true;
        this.f4393l = glideException;
        this.f4387f.a(this);
        return false;
    }

    public synchronized boolean a(R r, Object obj, h<R> hVar, DataSource dataSource, boolean z) {
        this.f4391j = true;
        this.f4388g = r;
        this.f4387f.a(this);
        return false;
    }
}
