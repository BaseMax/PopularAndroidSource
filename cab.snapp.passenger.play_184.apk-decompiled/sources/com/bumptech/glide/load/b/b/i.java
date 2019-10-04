package com.bumptech.glide.load.b.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.g.j;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final int f2160a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2161b;
    private final Context c;
    private final int d;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final int f2162a = (Build.VERSION.SDK_INT < 26 ? 4 : 1);

        /* renamed from: b  reason: collision with root package name */
        final Context f2163b;
        ActivityManager c;
        c d;
        float e = 2.0f;
        float f = ((float) f2162a);
        float g = 0.4f;
        float h = 0.33f;
        int i = 4194304;

        public a(Context context) {
            this.f2163b = context;
            this.c = (ActivityManager) context.getSystemService("activity");
            this.d = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && i.a(this.c)) {
                this.f = 0.0f;
            }
        }

        public final a setMemoryCacheScreens(float f2) {
            j.checkArgument(f2 >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.e = f2;
            return this;
        }

        public final a setBitmapPoolScreens(float f2) {
            j.checkArgument(f2 >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.f = f2;
            return this;
        }

        public final a setMaxSizeMultiplier(float f2) {
            j.checkArgument(f2 >= 0.0f && f2 <= 1.0f, "Size multiplier must be between 0 and 1");
            this.g = f2;
            return this;
        }

        public final a setLowMemoryMaxSizeMultiplier(float f2) {
            j.checkArgument(f2 >= 0.0f && f2 <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.h = f2;
            return this;
        }

        public final a setArrayPoolSize(int i2) {
            this.i = i2;
            return this;
        }

        public final i build() {
            return new i(this);
        }
    }

    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayMetrics f2164a;

        b(DisplayMetrics displayMetrics) {
            this.f2164a = displayMetrics;
        }

        public final int getWidthPixels() {
            return this.f2164a.widthPixels;
        }

        public final int getHeightPixels() {
            return this.f2164a.heightPixels;
        }
    }

    interface c {
        int getHeightPixels();

        int getWidthPixels();
    }

    i(a aVar) {
        int i;
        this.c = aVar.f2163b;
        if (a(aVar.c)) {
            i = aVar.i / 2;
        } else {
            i = aVar.i;
        }
        this.d = i;
        ActivityManager activityManager = aVar.c;
        float f = aVar.g;
        int round = Math.round(((float) (activityManager.getMemoryClass() * 1024 * 1024)) * (a(activityManager) ? aVar.h : f));
        float widthPixels = (float) (aVar.d.getWidthPixels() * aVar.d.getHeightPixels() * 4);
        int round2 = Math.round(aVar.f * widthPixels);
        int round3 = Math.round(widthPixels * aVar.e);
        int i2 = round - this.d;
        int i3 = round3 + round2;
        if (i3 <= i2) {
            this.f2161b = round3;
            this.f2160a = round2;
        } else {
            float f2 = ((float) i2) / (aVar.f + aVar.e);
            this.f2161b = Math.round(aVar.e * f2);
            this.f2160a = Math.round(f2 * aVar.f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(a(this.f2161b));
            sb.append(", pool size: ");
            sb.append(a(this.f2160a));
            sb.append(", byte array size: ");
            sb.append(a(this.d));
            sb.append(", memory class limited? ");
            sb.append(i3 > round);
            sb.append(", max size: ");
            sb.append(a(round));
            sb.append(", memoryClass: ");
            sb.append(aVar.c.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(a(aVar.c));
        }
    }

    public final int getMemoryCacheSize() {
        return this.f2161b;
    }

    public final int getBitmapPoolSize() {
        return this.f2160a;
    }

    public final int getArrayPoolSizeInBytes() {
        return this.d;
    }

    private String a(int i) {
        return Formatter.formatFileSize(this.c, (long) i);
    }

    static boolean a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }
}
