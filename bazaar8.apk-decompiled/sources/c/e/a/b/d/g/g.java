package c.e.a.b.d.g;

import android.content.Context;
import android.os.DropBoxManager;
import android.util.Log;
import c.e.a.b.d.d.r;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f10055a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    /* renamed from: b  reason: collision with root package name */
    public static DropBoxManager f10056b = null;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f10057c = false;

    /* renamed from: d  reason: collision with root package name */
    public static int f10058d = -1;

    /* renamed from: e  reason: collision with root package name */
    public static int f10059e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static int f10060f = 0;

    public static boolean a(Context context, Throwable th) {
        return a(context, th, 536870912);
    }

    public static boolean a(Context context, Throwable th, int i2) {
        try {
            r.a(context);
            r.a(th);
            return false;
        } catch (Exception e2) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e2);
            return false;
        }
    }
}
