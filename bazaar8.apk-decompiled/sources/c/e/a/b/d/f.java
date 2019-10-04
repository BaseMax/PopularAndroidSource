package c.e.a.b.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import c.e.a.b.d.d.r;
import c.e.a.b.d.h.c;

public class f {

    /* renamed from: a  reason: collision with root package name */
    public static f f10041a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f10042b;

    public f(Context context) {
        this.f10042b = context.getApplicationContext();
    }

    public static f a(Context context) {
        r.a(context);
        synchronized (f.class) {
            if (f10041a == null) {
                k.a(context);
                f10041a = new f(context);
            }
        }
        return f10041a;
    }

    public boolean a(int i2) {
        t tVar;
        String[] a2 = c.a(this.f10042b).a(i2);
        if (a2 != null && a2.length != 0) {
            tVar = null;
            for (String a3 : a2) {
                tVar = a(a3, i2);
                if (tVar.f10089b) {
                    break;
                }
            }
        } else {
            tVar = t.a("no pkgs");
        }
        tVar.c();
        return tVar.f10089b;
    }

    public static boolean a(PackageInfo packageInfo, boolean z) {
        m mVar;
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            if (z) {
                mVar = a(packageInfo, p.f10087a);
            } else {
                mVar = a(packageInfo, p.f10087a[0]);
            }
            if (mVar != null) {
                return true;
            }
        }
        return false;
    }

    public boolean a(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        if (a(packageInfo, true)) {
            if (e.honorsDebugCertificates(this.f10042b)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    public final t a(String str, int i2) {
        try {
            PackageInfo a2 = c.a(this.f10042b).a(str, 64, i2);
            boolean honorsDebugCertificates = e.honorsDebugCertificates(this.f10042b);
            if (a2 == null) {
                return t.a("null pkg");
            }
            if (a2.signatures.length != 1) {
                return t.a("single cert required");
            }
            n nVar = new n(a2.signatures[0].toByteArray());
            String str2 = a2.packageName;
            t a3 = k.a(str2, nVar, honorsDebugCertificates, false);
            return (!a3.f10089b || a2.applicationInfo == null || (a2.applicationInfo.flags & 2) == 0 || !k.a(str2, nVar, false, true).f10089b) ? a3 : t.a("debuggable release cert app rejected");
        } catch (PackageManager.NameNotFoundException unused) {
            String valueOf = String.valueOf(str);
            return t.a(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    public static m a(PackageInfo packageInfo, m... mVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        n nVar = new n(signatureArr[0].toByteArray());
        for (int i2 = 0; i2 < mVarArr.length; i2++) {
            if (mVarArr[i2].equals(nVar)) {
                return mVarArr[i2];
            }
        }
        return null;
    }
}
