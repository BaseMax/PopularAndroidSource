package e.a.a.a.a.g;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import e.a.a.a.a.b.m;
import e.a.a.a.a.b.n;
import e.a.a.a.a.f.c;
import e.a.a.a.a.f.d;
import e.a.a.a.f;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.SettingsCacheBehavior;
import org.json.JSONObject;

/* compiled from: DefaultSettingsController */
public class k implements t {

    /* renamed from: a  reason: collision with root package name */
    public final x f13809a;

    /* renamed from: b  reason: collision with root package name */
    public final w f13810b;

    /* renamed from: c  reason: collision with root package name */
    public final m f13811c;

    /* renamed from: d  reason: collision with root package name */
    public final h f13812d;

    /* renamed from: e  reason: collision with root package name */
    public final y f13813e;

    /* renamed from: f  reason: collision with root package name */
    public final l f13814f;

    /* renamed from: g  reason: collision with root package name */
    public final c f13815g = new d(this.f13814f);

    /* renamed from: h  reason: collision with root package name */
    public final n f13816h;

    public k(l lVar, x xVar, m mVar, w wVar, h hVar, y yVar, n nVar) {
        this.f13814f = lVar;
        this.f13809a = xVar;
        this.f13811c = mVar;
        this.f13810b = wVar;
        this.f13812d = hVar;
        this.f13813e = yVar;
        this.f13816h = nVar;
    }

    public u a() {
        return a(SettingsCacheBehavior.USE_CACHE);
    }

    public final u b(SettingsCacheBehavior settingsCacheBehavior) {
        u uVar = null;
        try {
            if (SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                return null;
            }
            JSONObject a2 = this.f13812d.a();
            if (a2 != null) {
                u a3 = this.f13810b.a(this.f13811c, a2);
                if (a3 != null) {
                    a(a2, "Loaded cached settings: ");
                    long a4 = this.f13811c.a();
                    if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior)) {
                        if (a3.a(a4)) {
                            f.e().d("Fabric", "Cached settings have expired.");
                            return null;
                        }
                    }
                    try {
                        f.e().d("Fabric", "Returning cached settings.");
                        return a3;
                    } catch (Exception e2) {
                        e = e2;
                        uVar = a3;
                        f.e().b("Fabric", "Failed to get cached settings", e);
                        return uVar;
                    }
                } else {
                    f.e().b("Fabric", "Failed to transform cached settings data.", null);
                    return null;
                }
            } else {
                f.e().d("Fabric", "No cached settings data found.");
                return null;
            }
        } catch (Exception e3) {
            e = e3;
            f.e().b("Fabric", "Failed to get cached settings", e);
            return uVar;
        }
    }

    public String c() {
        return CommonUtils.a(CommonUtils.n(this.f13814f.getContext()));
    }

    public String d() {
        return this.f13815g.get().getString("existing_instance_identifier", "");
    }

    public u a(SettingsCacheBehavior settingsCacheBehavior) {
        u uVar = null;
        if (!this.f13816h.a()) {
            f.e().d("Fabric", "Not fetching settings, because data collection is disabled by Firebase.");
            return null;
        }
        try {
            if (!f.h() && !b()) {
                uVar = b(settingsCacheBehavior);
            }
            if (uVar == null) {
                JSONObject a2 = this.f13813e.a(this.f13809a);
                if (a2 != null) {
                    uVar = this.f13810b.a(this.f13811c, a2);
                    this.f13812d.a(uVar.f13851g, a2);
                    a(a2, "Loaded settings: ");
                    a(c());
                }
            }
            if (uVar == null) {
                uVar = b(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
            }
        } catch (Exception e2) {
            f.e().b("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", e2);
        }
        return uVar;
    }

    public final void a(JSONObject jSONObject, String str) {
        o e2 = f.e();
        e2.d("Fabric", str + jSONObject.toString());
    }

    public boolean b() {
        return !d().equals(c());
    }

    @SuppressLint({"CommitPrefEdits"})
    public boolean a(String str) {
        SharedPreferences.Editor edit = this.f13815g.edit();
        edit.putString("existing_instance_identifier", str);
        return this.f13815g.a(edit);
    }
}
