package c.b.a.c.d.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import java.io.File;

/* compiled from: HardwareConfigState */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public static final File f4183a = new File("/proc/self/fd");

    /* renamed from: b  reason: collision with root package name */
    public static volatile q f4184b;

    /* renamed from: c  reason: collision with root package name */
    public volatile int f4185c;

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f4186d = true;

    public static q a() {
        if (f4184b == null) {
            synchronized (q.class) {
                if (f4184b == null) {
                    f4184b = new q();
                }
            }
        }
        return f4184b;
    }

    public final synchronized boolean b() {
        int i2 = this.f4185c + 1;
        this.f4185c = i2;
        if (i2 >= 50) {
            boolean z = false;
            this.f4185c = 0;
            int length = f4183a.list().length;
            if (length < 700) {
                z = true;
            }
            this.f4186d = z;
            if (!this.f4186d && Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + 700);
            }
        }
        return this.f4186d;
    }

    @TargetApi(26)
    public boolean a(int i2, int i3, BitmapFactory.Options options, DecodeFormat decodeFormat, boolean z, boolean z2) {
        if (!z || Build.VERSION.SDK_INT < 26 || z2) {
            return false;
        }
        boolean z3 = i2 >= 128 && i3 >= 128 && b();
        if (z3) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return z3;
    }
}
