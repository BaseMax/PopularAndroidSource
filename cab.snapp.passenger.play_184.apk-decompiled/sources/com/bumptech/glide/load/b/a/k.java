package com.bumptech.glide.load.b.a;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Set;

public final class k implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config f2138a = Bitmap.Config.ARGB_8888;

    /* renamed from: b  reason: collision with root package name */
    private final l f2139b;
    private final Set<Bitmap.Config> c;
    private final long d;
    private final a e;
    private long f;
    private long g;
    private int h;
    private int i;
    private int j;
    private int k;

    interface a {
        void add(Bitmap bitmap);

        void remove(Bitmap bitmap);
    }

    static final class b implements a {
        public final void add(Bitmap bitmap) {
        }

        public final void remove(Bitmap bitmap) {
        }

        b() {
        }
    }

    private k(long j2, l lVar, Set<Bitmap.Config> set) {
        this.d = j2;
        this.f = j2;
        this.f2139b = lVar;
        this.c = set;
        this.e = new b();
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k(long r5) {
        /*
            r4 = this;
            com.bumptech.glide.load.b.a.l r0 = d()
            java.util.HashSet r1 = new java.util.HashSet
            android.graphics.Bitmap$Config[] r2 = android.graphics.Bitmap.Config.values()
            java.util.List r2 = java.util.Arrays.asList(r2)
            r1.<init>(r2)
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 19
            if (r2 < r3) goto L_0x001b
            r2 = 0
            r1.add(r2)
        L_0x001b:
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 26
            if (r2 < r3) goto L_0x0026
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.HARDWARE
            r1.remove(r2)
        L_0x0026:
            java.util.Set r1 = java.util.Collections.unmodifiableSet(r1)
            r4.<init>(r5, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.k.<init>(long):void");
    }

    public k(long j2, Set<Bitmap.Config> set) {
        this(j2, d(), set);
    }

    public final long getMaxSize() {
        return this.f;
    }

    public final synchronized void setSizeMultiplier(float f2) {
        this.f = (long) Math.round(((float) this.d) * f2);
        a();
    }

    public final synchronized void put(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && ((long) this.f2139b.getSize(bitmap)) <= this.f) {
                        if (this.c.contains(bitmap.getConfig())) {
                            int size = this.f2139b.getSize(bitmap);
                            this.f2139b.put(bitmap);
                            this.e.add(bitmap);
                            this.j++;
                            this.g += (long) size;
                            if (Log.isLoggable("LruBitmapPool", 2)) {
                                new StringBuilder("Put bitmap in pool=").append(this.f2139b.logBitmap(bitmap));
                            }
                            b();
                            a();
                            return;
                        }
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        StringBuilder sb = new StringBuilder("Reject bitmap from pool, bitmap: ");
                        sb.append(this.f2139b.logBitmap(bitmap));
                        sb.append(", is mutable: ");
                        sb.append(bitmap.isMutable());
                        sb.append(", is allowed config: ");
                        sb.append(this.c.contains(bitmap.getConfig()));
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            } catch (Throwable th) {
                throw th;
            }
        } else {
            throw new NullPointerException("Bitmap must not be null");
        }
    }

    private void a() {
        a(this.f);
    }

    public final Bitmap get(int i2, int i3, Bitmap.Config config) {
        Bitmap b2 = b(i2, i3, config);
        if (b2 == null) {
            return a(i2, i3, config);
        }
        b2.eraseColor(0);
        return b2;
    }

    public final Bitmap getDirty(int i2, int i3, Bitmap.Config config) {
        Bitmap b2 = b(i2, i3, config);
        return b2 == null ? a(i2, i3, config) : b2;
    }

    private static Bitmap a(int i2, int i3, Bitmap.Config config) {
        if (config == null) {
            config = f2138a;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }

    public final void clearMemory() {
        a(0);
    }

    public final void trimMemory(int i2) {
        if (i2 >= 40) {
            clearMemory();
            return;
        }
        if (i2 >= 20 || i2 == 15) {
            a(getMaxSize() / 2);
        }
    }

    private synchronized void a(long j2) {
        while (this.g > j2) {
            Bitmap removeLast = this.f2139b.removeLast();
            if (removeLast == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    c();
                }
                this.g = 0;
                return;
            }
            this.e.remove(removeLast);
            this.g -= (long) this.f2139b.getSize(removeLast);
            this.k++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                new StringBuilder("Evicting bitmap=").append(this.f2139b.logBitmap(removeLast));
            }
            b();
            removeLast.recycle();
        }
    }

    private void b() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            c();
        }
    }

    private void c() {
        StringBuilder sb = new StringBuilder("Hits=");
        sb.append(this.h);
        sb.append(", misses=");
        sb.append(this.i);
        sb.append(", puts=");
        sb.append(this.j);
        sb.append(", evictions=");
        sb.append(this.k);
        sb.append(", currentSize=");
        sb.append(this.g);
        sb.append(", maxSize=");
        sb.append(this.f);
        sb.append("\nStrategy=");
        sb.append(this.f2139b);
    }

    private static l d() {
        if (Build.VERSION.SDK_INT >= 19) {
            return new n();
        }
        return new c();
    }

    private synchronized Bitmap b(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmap;
        if (Build.VERSION.SDK_INT >= 26) {
            if (config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
        }
        bitmap = this.f2139b.get(i2, i3, config != null ? config : f2138a);
        if (bitmap == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                new StringBuilder("Missing bitmap=").append(this.f2139b.logBitmap(i2, i3, config));
            }
            this.i++;
        } else {
            this.h++;
            this.g -= (long) this.f2139b.getSize(bitmap);
            this.e.remove(bitmap);
            bitmap.setHasAlpha(true);
            if (Build.VERSION.SDK_INT >= 19) {
                bitmap.setPremultiplied(true);
            }
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            new StringBuilder("Get bitmap=").append(this.f2139b.logBitmap(i2, i3, config));
        }
        b();
        return bitmap;
    }
}
