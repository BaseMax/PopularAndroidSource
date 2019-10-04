package c.e.a.b.d.h;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import c.e.a.b.d.g.n;

public class b {

    /* renamed from: a  reason: collision with root package name */
    public final Context f10074a;

    public b(Context context) {
        this.f10074a = context;
    }

    public ApplicationInfo a(String str, int i2) {
        return this.f10074a.getPackageManager().getApplicationInfo(str, i2);
    }

    public PackageInfo b(String str, int i2) {
        return this.f10074a.getPackageManager().getPackageInfo(str, i2);
    }

    public final PackageInfo a(String str, int i2, int i3) {
        return this.f10074a.getPackageManager().getPackageInfo(str, 64);
    }

    public CharSequence b(String str) {
        return this.f10074a.getPackageManager().getApplicationLabel(this.f10074a.getPackageManager().getApplicationInfo(str, 0));
    }

    public final String[] a(int i2) {
        return this.f10074a.getPackageManager().getPackagesForUid(i2);
    }

    @TargetApi(19)
    public final boolean a(int i2, String str) {
        if (n.e()) {
            try {
                ((AppOpsManager) this.f10074a.getSystemService("appops")).checkPackage(i2, str);
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f10074a.getPackageManager().getPackagesForUid(i2);
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

    public int a(String str) {
        return this.f10074a.checkCallingOrSelfPermission(str);
    }

    public boolean a() {
        if (Binder.getCallingUid() == Process.myUid()) {
            return a.a(this.f10074a);
        }
        if (n.i()) {
            String nameForUid = this.f10074a.getPackageManager().getNameForUid(Binder.getCallingUid());
            if (nameForUid != null) {
                return this.f10074a.getPackageManager().isInstantApp(nameForUid);
            }
        }
        return false;
    }
}
