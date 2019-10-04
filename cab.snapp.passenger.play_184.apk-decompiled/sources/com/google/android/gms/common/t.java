package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.fr;

public class t {

    /* renamed from: a  reason: collision with root package name */
    private static t f3004a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3005b;

    private t(Context context) {
        this.f3005b = context.getApplicationContext();
    }

    static l a(PackageInfo packageInfo, l... lVarArr) {
        if (packageInfo.signatures == null || packageInfo.signatures.length != 1) {
            return null;
        }
        m mVar = new m(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < lVarArr.length; i++) {
            if (lVarArr[i].equals(mVar)) {
                return lVarArr[i];
            }
        }
        return null;
    }

    private static boolean a(PackageInfo packageInfo, boolean z) {
        l lVar;
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            if (z) {
                lVar = a(packageInfo, o.f2995a);
            } else {
                lVar = a(packageInfo, o.f2995a[0]);
            }
            if (lVar != null) {
                return true;
            }
        }
        return false;
    }

    private final boolean a(String str) {
        try {
            PackageInfo packageInfo = fr.zzdb(this.f3005b).getPackageInfo(str, 64);
            if (packageInfo == null) {
                return false;
            }
            if (s.zzch(this.f3005b)) {
                return b(packageInfo, true);
            }
            boolean b2 = b(packageInfo, false);
            if (!b2) {
                b(packageInfo, true);
            }
            return b2;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private static boolean b(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            return false;
        }
        m mVar = new m(packageInfo.signatures[0].toByteArray());
        String str = packageInfo.packageName;
        boolean b2 = z ? k.b(str, mVar) : k.a(str, mVar);
        if (!b2) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("Cert not in list. atk=");
            sb.append(z);
        }
        return b2;
    }

    public static t zzci(Context context) {
        ap.checkNotNull(context);
        synchronized (t.class) {
            if (f3004a == null) {
                k.a(context);
                f3004a = new t(context);
            }
        }
        return f3004a;
    }

    public final boolean zza(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        return a(packageInfo, true) && s.zzch(this.f3005b);
    }

    public final boolean zzbq(int i) {
        String[] packagesForUid = fr.zzdb(this.f3005b).getPackagesForUid(i);
        if (!(packagesForUid == null || packagesForUid.length == 0)) {
            for (String a2 : packagesForUid) {
                if (a(a2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
