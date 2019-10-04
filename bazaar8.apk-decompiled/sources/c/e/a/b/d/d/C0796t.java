package c.e.a.b.d.d;

import android.content.Context;
import android.content.res.Resources;
import c.e.a.b.d.g;

/* renamed from: c.e.a.b.d.d.t  reason: case insensitive filesystem */
public class C0796t {

    /* renamed from: a  reason: collision with root package name */
    public final Resources f10029a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10030b = this.f10029a.getResourcePackageName(g.common_google_play_services_unknown_issue);

    public C0796t(Context context) {
        r.a(context);
        this.f10029a = context.getResources();
    }

    public String a(String str) {
        int identifier = this.f10029a.getIdentifier(str, "string", this.f10030b);
        if (identifier == 0) {
            return null;
        }
        return this.f10029a.getString(identifier);
    }
}
