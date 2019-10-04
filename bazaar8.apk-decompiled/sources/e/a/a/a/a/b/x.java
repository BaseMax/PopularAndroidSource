package e.a.a.a.a.b;

import android.content.Context;
import e.a.a.a.a.a.b;
import e.a.a.a.a.a.d;
import e.a.a.a.f;

/* compiled from: InstallerPackageNameProvider */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public final d<String> f13703a = new w(this);

    /* renamed from: b  reason: collision with root package name */
    public final b<String> f13704b = new b<>();

    public String a(Context context) {
        try {
            String a2 = this.f13704b.a(context, this.f13703a);
            if ("".equals(a2)) {
                a2 = null;
            }
            return a2;
        } catch (Exception e2) {
            f.e().b("Fabric", "Failed to determine installer package name", e2);
            return null;
        }
    }
}
