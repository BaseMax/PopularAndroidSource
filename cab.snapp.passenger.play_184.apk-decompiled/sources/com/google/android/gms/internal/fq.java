package com.google.android.gms.internal;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.m;

public final class fq {

    /* renamed from: a  reason: collision with root package name */
    private Context f3153a;

    public fq(Context context) {
        this.f3153a = context;
    }

    public final int checkCallingOrSelfPermission(String str) {
        return this.f3153a.checkCallingOrSelfPermission(str);
    }

    public final int checkPermission(String str, String str2) {
        return this.f3153a.getPackageManager().checkPermission(str, str2);
    }

    public final ApplicationInfo getApplicationInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3153a.getPackageManager().getApplicationInfo(str, i);
    }

    public final PackageInfo getPackageInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3153a.getPackageManager().getPackageInfo(str, i);
    }

    public final String[] getPackagesForUid(int i) {
        return this.f3153a.getPackageManager().getPackagesForUid(i);
    }

    public final boolean zzamu() {
        if (Binder.getCallingUid() == Process.myUid()) {
            return fp.zzcz(this.f3153a);
        }
        if (m.isAtLeastO()) {
            String nameForUid = this.f3153a.getPackageManager().getNameForUid(Binder.getCallingUid());
            if (nameForUid != null) {
                return this.f3153a.getPackageManager().isInstantApp(nameForUid);
            }
        }
        return false;
    }

    public final boolean zzf(int i, String str) {
        if (m.zzaml()) {
            try {
                ((AppOpsManager) this.f3153a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f3153a.getPackageManager().getPackagesForUid(i);
            if (!(str == null || packagesForUid == null)) {
                for (String equals : packagesForUid) {
                    if (str.equals(equals)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public final CharSequence zzgt(String str) throws PackageManager.NameNotFoundException {
        return this.f3153a.getPackageManager().getApplicationLabel(this.f3153a.getPackageManager().getApplicationInfo(str, 0));
    }
}
