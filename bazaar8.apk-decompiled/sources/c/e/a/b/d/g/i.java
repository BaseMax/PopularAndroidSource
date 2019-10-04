package c.e.a.b.d.g;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import com.crashlytics.android.core.MetaDataStore;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static Boolean f10062a;

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f10063b;

    /* renamed from: c  reason: collision with root package name */
    public static Boolean f10064c;

    @TargetApi(21)
    public static boolean a(Context context) {
        if (f10063b == null) {
            f10063b = Boolean.valueOf(n.g() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f10063b.booleanValue();
    }

    @TargetApi(20)
    public static boolean b(Context context) {
        if (f10062a == null) {
            f10062a = Boolean.valueOf(n.f() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f10062a.booleanValue();
    }

    @TargetApi(26)
    public static boolean c(Context context) {
        return b(context) && (!n.h() || (a(context) && !n.i()));
    }

    public static boolean d(Context context) {
        if (f10064c == null) {
            f10064c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f10064c.booleanValue();
    }

    public static boolean a() {
        return MetaDataStore.USERDATA_SUFFIX.equals(Build.TYPE);
    }
}
