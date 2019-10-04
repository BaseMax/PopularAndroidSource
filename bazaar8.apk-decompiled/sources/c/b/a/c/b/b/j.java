package c.b.a.c.b.b;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.crashlytics.android.answers.SessionEvent;

/* compiled from: MemorySizeCalculator */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final int f3906a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3907b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f3908c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3909d;

    /* compiled from: MemorySizeCalculator */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3910a = (Build.VERSION.SDK_INT < 26 ? 4 : 1);

        /* renamed from: b  reason: collision with root package name */
        public final Context f3911b;

        /* renamed from: c  reason: collision with root package name */
        public ActivityManager f3912c;

        /* renamed from: d  reason: collision with root package name */
        public c f3913d;

        /* renamed from: e  reason: collision with root package name */
        public float f3914e = 2.0f;

        /* renamed from: f  reason: collision with root package name */
        public float f3915f = ((float) f3910a);

        /* renamed from: g  reason: collision with root package name */
        public float f3916g = 0.4f;

        /* renamed from: h  reason: collision with root package name */
        public float f3917h = 0.33f;

        /* renamed from: i  reason: collision with root package name */
        public int f3918i = 4194304;

        public a(Context context) {
            this.f3911b = context;
            this.f3912c = (ActivityManager) context.getSystemService(SessionEvent.ACTIVITY_KEY);
            this.f3913d = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && j.a(this.f3912c)) {
                this.f3915f = 0.0f;
            }
        }

        public j a() {
            return new j(this);
        }
    }

    /* compiled from: MemorySizeCalculator */
    private static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        public final DisplayMetrics f3919a;

        public b(DisplayMetrics displayMetrics) {
            this.f3919a = displayMetrics;
        }

        public int a() {
            return this.f3919a.heightPixels;
        }

        public int b() {
            return this.f3919a.widthPixels;
        }
    }

    /* compiled from: MemorySizeCalculator */
    interface c {
        int a();

        int b();
    }

    public j(a aVar) {
        int i2;
        this.f3908c = aVar.f3911b;
        if (a(aVar.f3912c)) {
            i2 = aVar.f3918i / 2;
        } else {
            i2 = aVar.f3918i;
        }
        this.f3909d = i2;
        int a2 = a(aVar.f3912c, aVar.f3916g, aVar.f3917h);
        float b2 = (float) (aVar.f3913d.b() * aVar.f3913d.a() * 4);
        int round = Math.round(aVar.f3915f * b2);
        int round2 = Math.round(b2 * aVar.f3914e);
        int i3 = a2 - this.f3909d;
        int i4 = round2 + round;
        if (i4 <= i3) {
            this.f3907b = round2;
            this.f3906a = round;
        } else {
            float f2 = (float) i3;
            float f3 = aVar.f3915f;
            float f4 = aVar.f3914e;
            float f5 = f2 / (f3 + f4);
            this.f3907b = Math.round(f4 * f5);
            this.f3906a = Math.round(f5 * aVar.f3915f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(a(this.f3907b));
            sb.append(", pool size: ");
            sb.append(a(this.f3906a));
            sb.append(", byte array size: ");
            sb.append(a(this.f3909d));
            sb.append(", memory class limited? ");
            sb.append(i4 > a2);
            sb.append(", max size: ");
            sb.append(a(a2));
            sb.append(", memoryClass: ");
            sb.append(aVar.f3912c.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(a(aVar.f3912c));
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }

    public int a() {
        return this.f3909d;
    }

    public int b() {
        return this.f3906a;
    }

    public int c() {
        return this.f3907b;
    }

    public static int a(ActivityManager activityManager, float f2, float f3) {
        boolean a2 = a(activityManager);
        float memoryClass = (float) (activityManager.getMemoryClass() * 1024 * 1024);
        if (a2) {
            f2 = f3;
        }
        return Math.round(memoryClass * f2);
    }

    public final String a(int i2) {
        return Formatter.formatFileSize(this.f3908c, (long) i2);
    }

    @TargetApi(19)
    public static boolean a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }
}
