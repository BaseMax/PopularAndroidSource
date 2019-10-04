package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.analytics.a.b;
import com.google.android.gms.internal.fr;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f3018a = a();

    /* renamed from: b  reason: collision with root package name */
    private static final Method f3019b = b();
    private static final Method c = c();
    private static final Method d = d();
    private static final Method e = e();

    private static int a(WorkSource workSource) {
        Method method = c;
        if (method != null) {
            try {
                return ((Integer) method.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
        return 0;
    }

    private static WorkSource a(int i, String str) {
        WorkSource workSource = new WorkSource();
        if (f3019b != null) {
            if (str == null) {
                str = "";
            }
            try {
                f3019b.invoke(workSource, new Object[]{Integer.valueOf(i), str});
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        } else {
            Method method = f3018a;
            if (method != null) {
                method.invoke(workSource, new Object[]{Integer.valueOf(i)});
            }
        }
        return workSource;
    }

    private static String a(WorkSource workSource, int i) {
        Method method = e;
        if (method != null) {
            try {
                return (String) method.invoke(workSource, new Object[]{Integer.valueOf(i)});
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
        return null;
    }

    private static Method a() {
        try {
            return WorkSource.class.getMethod(b.ACTION_ADD, new Class[]{Integer.TYPE});
        } catch (Exception unused) {
            return null;
        }
    }

    private static Method b() {
        if (m.zzamk()) {
            try {
                return WorkSource.class.getMethod(b.ACTION_ADD, new Class[]{Integer.TYPE, String.class});
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static Method c() {
        try {
            return WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Method d() {
        try {
            return WorkSource.class.getMethod("get", new Class[]{Integer.TYPE});
        } catch (Exception unused) {
            return null;
        }
    }

    private static Method e() {
        if (m.zzamk()) {
            try {
                return WorkSource.class.getMethod("getName", new Class[]{Integer.TYPE});
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static WorkSource zzaa(Context context, String str) {
        if (!(context == null || context.getPackageManager() == null || str == null)) {
            try {
                ApplicationInfo applicationInfo = fr.zzdb(context).getApplicationInfo(str, 0);
                if (applicationInfo != null) {
                    return a(applicationInfo.uid, str);
                }
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Could not get applicationInfo from package: ".concat(valueOf);
                } else {
                    new String("Could not get applicationInfo from package: ");
                }
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    "Could not find package: ".concat(valueOf2);
                } else {
                    new String("Could not find package: ");
                }
            }
        }
        return null;
    }

    public static List<String> zzb(WorkSource workSource) {
        int a2 = workSource == null ? 0 : a(workSource);
        if (a2 == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < a2; i++) {
            String a3 = a(workSource, i);
            if (!o.zzgs(a3)) {
                arrayList.add(a3);
            }
        }
        return arrayList;
    }

    public static boolean zzcy(Context context) {
        return (context == null || context.getPackageManager() == null || fr.zzdb(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }
}
