package c.b.a.c.b.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LruBitmapPool */
public class k implements e {

    /* renamed from: a  reason: collision with root package name */
    public static final Bitmap.Config f3867a = Bitmap.Config.ARGB_8888;

    /* renamed from: b  reason: collision with root package name */
    public final l f3868b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<Bitmap.Config> f3869c;

    /* renamed from: d  reason: collision with root package name */
    public final long f3870d;

    /* renamed from: e  reason: collision with root package name */
    public final a f3871e;

    /* renamed from: f  reason: collision with root package name */
    public long f3872f;

    /* renamed from: g  reason: collision with root package name */
    public long f3873g;

    /* renamed from: h  reason: collision with root package name */
    public int f3874h;

    /* renamed from: i  reason: collision with root package name */
    public int f3875i;

    /* renamed from: j  reason: collision with root package name */
    public int f3876j;

    /* renamed from: k  reason: collision with root package name */
    public int f3877k;

    /* compiled from: LruBitmapPool */
    private interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    /* compiled from: LruBitmapPool */
    private static final class b implements a {
        public void a(Bitmap bitmap) {
        }

        public void b(Bitmap bitmap) {
        }
    }

    public k(long j2, l lVar, Set<Bitmap.Config> set) {
        this.f3870d = j2;
        this.f3872f = j2;
        this.f3868b = lVar;
        this.f3869c = set;
        this.f3871e = new b();
    }

    public static Bitmap c(int i2, int i3, Bitmap.Config config) {
        if (config == null) {
            config = f3867a;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }

    @TargetApi(26)
    public static Set<Bitmap.Config> e() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static l f() {
        if (Build.VERSION.SDK_INT >= 19) {
            return new o();
        }
        return new c();
    }

    public synchronized void a(float f2) {
        this.f3872f = (long) Math.round(((float) this.f3870d) * f2);
        d();
    }

    public Bitmap b(int i2, int i3, Bitmap.Config config) {
        Bitmap d2 = d(i2, i3, config);
        return d2 == null ? c(i2, i3, config) : d2;
    }

    public final void d() {
        a(this.f3872f);
    }

    public long g() {
        return this.f3872f;
    }

    public static void c(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        b(bitmap);
    }

    public final synchronized Bitmap d(int i2, int i3, Bitmap.Config config) {
        Bitmap a2;
        a(config);
        a2 = this.f3868b.a(i2, i3, config != null ? config : f3867a);
        if (a2 == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Missing bitmap=" + this.f3868b.b(i2, i3, config));
            }
            this.f3875i++;
        } else {
            this.f3874h++;
            this.f3873g -= (long) this.f3868b.b(a2);
            this.f3871e.a(a2);
            c(a2);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Get bitmap=" + this.f3868b.b(i2, i3, config));
        }
        b();
        return a2;
    }

    @TargetApi(19)
    public static void b(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    public synchronized void a(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && ((long) this.f3868b.b(bitmap)) <= this.f3872f) {
                        if (this.f3869c.contains(bitmap.getConfig())) {
                            int b2 = this.f3868b.b(bitmap);
                            this.f3868b.a(bitmap);
                            this.f3871e.b(bitmap);
                            this.f3876j++;
                            this.f3873g += (long) b2;
                            if (Log.isLoggable("LruBitmapPool", 2)) {
                                Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f3868b.c(bitmap));
                            }
                            b();
                            d();
                            return;
                        }
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f3868b.c(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f3869c.contains(bitmap.getConfig()));
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

    public final void c() {
        Log.v("LruBitmapPool", "Hits=" + this.f3874h + ", misses=" + this.f3875i + ", puts=" + this.f3876j + ", evictions=" + this.f3877k + ", currentSize=" + this.f3873g + ", maxSize=" + this.f3872f + "\nStrategy=" + this.f3868b);
    }

    public final void b() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            c();
        }
    }

    public k(long j2) {
        this(j2, f(), e());
    }

    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        Bitmap d2 = d(i2, i3, config);
        if (d2 == null) {
            return c(i2, i3, config);
        }
        d2.eraseColor(0);
        return d2;
    }

    @TargetApi(26)
    public static void a(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    public void a() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        a(0);
    }

    @SuppressLint({"InlinedApi"})
    public void a(int i2) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i2);
        }
        if (i2 >= 40) {
            a();
        } else if (i2 >= 20 || i2 == 15) {
            a(g() / 2);
        }
    }

    public final synchronized void a(long j2) {
        while (this.f3873g > j2) {
            Bitmap removeLast = this.f3868b.removeLast();
            if (removeLast == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    c();
                }
                this.f3873g = 0;
                return;
            }
            this.f3871e.a(removeLast);
            this.f3873g -= (long) this.f3868b.b(removeLast);
            this.f3877k++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Evicting bitmap=" + this.f3868b.c(removeLast));
            }
            b();
            removeLast.recycle();
        }
    }
}
