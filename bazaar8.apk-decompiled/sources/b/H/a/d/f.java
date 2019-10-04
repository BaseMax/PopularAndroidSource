package b.H.a.d;

import android.content.ComponentName;
import android.content.Context;

/* compiled from: PackageManagerHelper */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1548a = b.H.f.a("PackageManagerHelper");

    public static void a(Context context, Class cls, boolean z) {
        String str;
        String str2 = "enabled";
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            b.H.f a2 = b.H.f.a();
            String str3 = f1548a;
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            if (z) {
                str = str2;
            } else {
                str = "disabled";
            }
            objArr[1] = str;
            a2.a(str3, String.format("%s %s", objArr), new Throwable[0]);
        } catch (Exception e2) {
            b.H.f a3 = b.H.f.a();
            String str4 = f1548a;
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            if (!z) {
                str2 = "disabled";
            }
            objArr2[1] = str2;
            a3.a(str4, String.format("%s could not be %s", objArr2), e2);
        }
    }
}
