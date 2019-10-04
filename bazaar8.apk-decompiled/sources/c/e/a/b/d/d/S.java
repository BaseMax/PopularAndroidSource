package c.e.a.b.d.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import c.e.a.b.d.h.c;

public final class S {

    /* renamed from: a  reason: collision with root package name */
    public static Object f9965a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static boolean f9966b;

    /* renamed from: c  reason: collision with root package name */
    public static String f9967c;

    /* renamed from: d  reason: collision with root package name */
    public static int f9968d;

    public static String a(Context context) {
        c(context);
        return f9967c;
    }

    public static int b(Context context) {
        c(context);
        return f9968d;
    }

    public static void c(Context context) {
        synchronized (f9965a) {
            if (!f9966b) {
                f9966b = true;
                try {
                    Bundle bundle = c.a(context).a(context.getPackageName(), 128).metaData;
                    if (bundle != null) {
                        f9967c = bundle.getString("com.google.app.id");
                        f9968d = bundle.getInt("com.google.android.gms.version");
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e2);
                }
            }
        }
    }
}
