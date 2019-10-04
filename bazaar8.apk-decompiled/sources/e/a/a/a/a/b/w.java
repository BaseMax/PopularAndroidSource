package e.a.a.a.a.b;

import android.content.Context;
import e.a.a.a.a.a.d;

/* compiled from: InstallerPackageNameProvider */
class w implements d<String> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f13702a;

    public w(x xVar) {
        this.f13702a = xVar;
    }

    public String load(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName == null ? "" : installerPackageName;
    }
}
