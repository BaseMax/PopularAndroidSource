package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.fr;

public final class af {

    /* renamed from: a  reason: collision with root package name */
    private static Object f2923a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2924b;
    private static String c;
    private static int d;

    private static void a(Context context) {
        synchronized (f2923a) {
            if (!f2924b) {
                f2924b = true;
                try {
                    Bundle bundle = fr.zzdb(context).getApplicationInfo(context.getPackageName(), 128).metaData;
                    if (bundle != null) {
                        c = bundle.getString("com.google.app.id");
                        d = bundle.getInt("com.google.android.gms.version");
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
            }
        }
    }

    public static String zzcp(Context context) {
        a(context);
        return c;
    }

    public static int zzcq(Context context) {
        a(context);
        return d;
    }
}
