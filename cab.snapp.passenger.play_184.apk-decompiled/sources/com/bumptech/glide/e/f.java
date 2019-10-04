package com.bumptech.glide.e;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.e.a.h;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.e.b.b;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.b.q;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class f<R> implements c<R>, g<R> {

    /* renamed from: a  reason: collision with root package name */
    private static final a f2044a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final int f2045b;
    private final int c;
    private final boolean d;
    private final a e;
    private R f;
    private d g;
    private boolean h;
    private boolean i;
    private boolean j;
    private q k;

    static class a {
        a() {
        }
    }

    public final void onDestroy() {
    }

    public final void onLoadCleared(Drawable drawable) {
    }

    public final void onLoadStarted(Drawable drawable) {
    }

    public final void onStart() {
    }

    public final void onStop() {
    }

    public final void removeCallback(h hVar) {
    }

    public f(int i2, int i3) {
        this(i2, i3, f2044a);
    }

    private f(int i2, int i3, a aVar) {
        this.f2045b = i2;
        this.c = i3;
        this.d = true;
        this.e = aVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x001f, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized boolean cancel(boolean r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.isDone()     // Catch:{ all -> 0x0020 }
            if (r0 == 0) goto L_0x000a
            r2 = 0
            monitor-exit(r1)
            return r2
        L_0x000a:
            r0 = 1
            r1.h = r0     // Catch:{ all -> 0x0020 }
            r1.notifyAll()     // Catch:{ all -> 0x0020 }
            if (r2 == 0) goto L_0x001e
            com.bumptech.glide.e.d r2 = r1.g     // Catch:{ all -> 0x0020 }
            if (r2 == 0) goto L_0x001e
            com.bumptech.glide.e.d r2 = r1.g     // Catch:{ all -> 0x0020 }
            r2.clear()     // Catch:{ all -> 0x0020 }
            r2 = 0
            r1.g = r2     // Catch:{ all -> 0x0020 }
        L_0x001e:
            monitor-exit(r1)
            return r0
        L_0x0020:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.f.cancel(boolean):boolean");
    }

    public final synchronized boolean isCancelled() {
        return this.h;
    }

    public final synchronized boolean isDone() {
        return this.h || this.i || this.j;
    }

    public final R get() throws InterruptedException, ExecutionException {
        try {
            return a(null);
        } catch (TimeoutException e2) {
            throw new AssertionError(e2);
        }
    }

    public final R get(long j2, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return a(Long.valueOf(timeUnit.toMillis(j2)));
    }

    public final void getSize(h hVar) {
        hVar.onSizeReady(this.f2045b, this.c);
    }

    public final synchronized void setRequest(d dVar) {
        this.g = dVar;
    }

    public final synchronized d getRequest() {
        return this.g;
    }

    public final synchronized void onLoadFailed(Drawable drawable) {
    }

    public final synchronized void onResourceReady(R r, b<? super R> bVar) {
    }

    private synchronized R a(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.d && !isDone()) {
            k.assertBackgroundThread();
        }
        if (this.h) {
            throw new CancellationException();
        } else if (this.j) {
            throw new ExecutionException(this.k);
        } else if (this.i) {
            return this.f;
        } else {
            if (l == null) {
                wait(0);
            } else if (l.longValue() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                long longValue = l.longValue() + currentTimeMillis;
                while (!isDone() && currentTimeMillis < longValue) {
                    wait(longValue - currentTimeMillis);
                    currentTimeMillis = System.currentTimeMillis();
                }
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            } else if (this.j) {
                throw new ExecutionException(this.k);
            } else if (this.h) {
                throw new CancellationException();
            } else if (this.i) {
                return this.f;
            } else {
                throw new TimeoutException();
            }
        }
    }

    public final synchronized boolean onLoadFailed(q qVar, Object obj, i<R> iVar, boolean z) {
        this.j = true;
        this.k = qVar;
        notifyAll();
        return false;
    }

    public final synchronized boolean onResourceReady(R r, Object obj, i<R> iVar, DataSource dataSource, boolean z) {
        this.i = true;
        this.f = r;
        notifyAll();
        return false;
    }
}
