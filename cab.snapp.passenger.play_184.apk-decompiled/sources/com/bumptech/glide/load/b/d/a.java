package com.bumptech.glide.load.b.d;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.d;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    static final long f2180a = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private static final C0042a f2181b = new C0042a();
    private final e c;
    private final h d;
    private final c e;
    private final C0042a f;
    private final Set<d> g;
    private final Handler h;
    private long i;
    private boolean j;

    /* renamed from: com.bumptech.glide.load.b.d.a$a  reason: collision with other inner class name */
    static class C0042a {
        C0042a() {
        }
    }

    static final class b implements d {
        b() {
        }

        public final void updateDiskCacheKey(MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public a(e eVar, h hVar, c cVar) {
        this(eVar, hVar, cVar, f2181b, new Handler(Looper.getMainLooper()));
    }

    private a(e eVar, h hVar, c cVar, C0042a aVar, Handler handler) {
        this.g = new HashSet();
        this.i = 40;
        this.c = eVar;
        this.d = hVar;
        this.e = cVar;
        this.f = aVar;
        this.h = handler;
    }

    public final void cancel() {
        this.j = true;
    }

    public final void run() {
        boolean z;
        Bitmap bitmap;
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        while (true) {
            z = true;
            if (!this.e.isEmpty()) {
                if (SystemClock.currentThreadTimeMillis() - currentThreadTimeMillis >= 32) {
                    break;
                }
                d remove = this.e.remove();
                if (!this.g.contains(remove)) {
                    this.g.add(remove);
                    bitmap = this.c.getDirty(remove.f2187b, remove.c, remove.d);
                } else {
                    bitmap = Bitmap.createBitmap(remove.f2187b, remove.c, remove.d);
                }
                int bitmapByteSize = k.getBitmapByteSize(bitmap);
                if (this.d.getMaxSize() - this.d.getCurrentSize() >= ((long) bitmapByteSize)) {
                    this.d.put(new b(), com.bumptech.glide.load.resource.bitmap.d.obtain(bitmap, this.c));
                } else {
                    this.c.put(bitmap);
                }
                if (Log.isLoggable("PreFillRunner", 3)) {
                    StringBuilder sb = new StringBuilder("allocated [");
                    sb.append(remove.f2187b);
                    sb.append("x");
                    sb.append(remove.c);
                    sb.append("] ");
                    sb.append(remove.d);
                    sb.append(" size: ");
                    sb.append(bitmapByteSize);
                }
            } else {
                break;
            }
        }
        if (this.j || this.e.isEmpty()) {
            z = false;
        }
        if (z) {
            Handler handler = this.h;
            long j2 = this.i;
            this.i = Math.min(4 * j2, f2180a);
            handler.postDelayed(this, j2);
        }
    }
}
