package e.a.a.a.a.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import e.a.a.a.a.f.c;
import e.a.a.a.f;

/* compiled from: AdvertisingInfoProvider */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final Context f13676a;

    /* renamed from: b  reason: collision with root package name */
    public final c f13677b;

    public d(Context context) {
        this.f13676a = context.getApplicationContext();
        this.f13677b = new e.a.a.a.a.f.d(context, "TwitterAdvertisingInfoPreferences");
    }

    public final void b(C1047b bVar) {
        new Thread(new C1048c(this, bVar)).start();
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void c(C1047b bVar) {
        if (a(bVar)) {
            c cVar = this.f13677b;
            cVar.a(cVar.edit().putString("advertising_id", bVar.f13672a).putBoolean("limit_ad_tracking_enabled", bVar.f13673b));
            return;
        }
        c cVar2 = this.f13677b;
        cVar2.a(cVar2.edit().remove("advertising_id").remove("limit_ad_tracking_enabled"));
    }

    public h d() {
        return new e(this.f13676a);
    }

    public h e() {
        return new g(this.f13676a);
    }

    public C1047b a() {
        C1047b c2 = c();
        if (a(c2)) {
            f.e().d("Fabric", "Using AdvertisingInfo from Preference Store");
            b(c2);
            return c2;
        }
        C1047b b2 = b();
        c(b2);
        return b2;
    }

    public final C1047b b() {
        C1047b a2 = d().a();
        if (!a(a2)) {
            a2 = e().a();
            if (!a(a2)) {
                f.e().d("Fabric", "AdvertisingInfo not present");
            } else {
                f.e().d("Fabric", "Using AdvertisingInfo from Service Provider");
            }
        } else {
            f.e().d("Fabric", "Using AdvertisingInfo from Reflection Provider");
        }
        return a2;
    }

    public final boolean a(C1047b bVar) {
        return bVar != null && !TextUtils.isEmpty(bVar.f13672a);
    }

    public C1047b c() {
        return new C1047b(this.f13677b.get().getString("advertising_id", ""), this.f13677b.get().getBoolean("limit_ad_tracking_enabled", false));
    }
}
