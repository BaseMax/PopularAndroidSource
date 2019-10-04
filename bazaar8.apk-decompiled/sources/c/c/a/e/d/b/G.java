package c.c.a.e.d.b;

import android.content.Context;
import h.f.b.f;
import h.f.b.j;
import java.util.Locale;

/* compiled from: SettingsLocalDataSource.kt */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4939a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final Context f4940b;

    /* renamed from: c  reason: collision with root package name */
    public final I f4941c;

    /* compiled from: SettingsLocalDataSource.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public G(Context context, I i2) {
        j.b(context, "context");
        j.b(i2, "sharedDataSource");
        this.f4940b = context;
        this.f4941c = i2;
    }

    public final boolean A() {
        return ((Boolean) this.f4941c.a("bazaar_kids_notify", false)).booleanValue();
    }

    public final boolean B() {
        return ((Boolean) this.f4941c.a("updates_notification", true)).booleanValue();
    }

    public final void a(long j2) {
        I.a(this.f4941c, "last_iab_login_notification", Long.valueOf(j2), false, 4, null);
    }

    public final void b(long j2) {
        I.a(this.f4941c, "version_code", Long.valueOf(j2), false, 4, null);
    }

    public final void c() {
        I.a(this.f4941c, "bazaar_kids_pass", false, 2, null);
    }

    public final void d(String str) {
        j.b(str, "clientId");
        this.f4941c.a("client_id", str, true);
    }

    public final void e(String str) {
        j.b(str, "token");
        I.a(this.f4941c, "fcm_token", str, false, 4, null);
    }

    public final void f(String str) {
        j.b(str, "locale");
        this.f4941c.a("locale", str, true);
    }

    public final void g(String str) {
        j.b(str, "scheduleUpdateTime");
        I.a(this.f4941c, "scheduleUpdateTime", str, false, 4, null);
    }

    public final boolean h() {
        return ((Boolean) this.f4941c.a("advertisingOptOut", false)).booleanValue();
    }

    public final String i() {
        return (String) this.f4941c.a("bazaar_kids_pass", "");
    }

    public final String j() {
        return (String) this.f4941c.a("client_id", "");
    }

    public final String k() {
        return (String) this.f4941c.a("fcm_token", "");
    }

    public final long l() {
        return ((Number) this.f4941c.a("last_iab_login_notification", 0L)).longValue();
    }

    public final Locale m() {
        String str = (String) this.f4941c.a("locale", "");
        if (str.length() == 0) {
            return new Locale("fa");
        }
        return new Locale(str);
    }

    public final String n() {
        return (String) this.f4941c.a("scheduleUpdateTime", "");
    }

    public final String o() {
        return this.f4941c.c();
    }

    public final long p() {
        return ((Number) this.f4941c.a("version_code", 0L)).longValue();
    }

    public final boolean q() {
        return ((Boolean) this.f4941c.a("bandwidth_optimization", true)).booleanValue();
    }

    public final boolean r() {
        return i().length() > 0;
    }

    public final boolean s() {
        return ((Boolean) this.f4941c.a("patch_enable", true)).booleanValue();
    }

    public final boolean t() {
        return ((Boolean) this.f4941c.a("location_base_offer", false)).booleanValue();
    }

    public final boolean u() {
        return ((Boolean) this.f4941c.a("location_permission_denied_once", false)).booleanValue();
    }

    public final boolean v() {
        return ((Boolean) this.f4941c.a("isNotReadyForBazaar8", true)).booleanValue();
    }

    public final boolean w() {
        return j.a((Object) (String) this.f4941c.a("update_network_type", ""), (Object) "wifi");
    }

    public final boolean x() {
        return ((Boolean) this.f4941c.a("update_scheduling", false)).booleanValue();
    }

    public final void y() {
        I.a(this.f4941c, "location_permission_denied_once", true, false, 4, null);
    }

    public final boolean z() {
        return ((Boolean) this.f4941c.a("keep_backup_of_apps", false)).booleanValue();
    }

    public final void a(String str) {
        j.b(str, "pass");
        I.a(this.f4941c, "bazaar_kids_pass", str, false, 4, null);
    }

    public final void b(String str) {
        j.b(str, "nonce");
        I.a(this.f4941c, "action_log_nonce", str, false, 4, null);
    }

    public final void c(String str) {
        j.b(str, "advertisingId");
        I.a(this.f4941c, "advertisingId", str, false, 4, null);
    }

    public final void d() {
        I.a(this.f4941c, "bazaar_kids_notify", false, false, 4, null);
    }

    public final void e() {
        I.a(this.f4941c, "bazaar_kids_notify", true, false, 4, null);
    }

    public final String f() {
        return (String) this.f4941c.a("action_log_nonce", "");
    }

    public final String g() {
        return (String) this.f4941c.a("advertisingId", "");
    }

    public final void a() {
        I.a(this.f4941c, "isNotReadyForBazaar8", false, false, 4, null);
    }

    public final boolean b() {
        return ((Boolean) this.f4941c.a("canShowLocationPermission", true)).booleanValue();
    }

    public final void c(boolean z) {
        I.a(this.f4941c, "location_base_offer", Boolean.valueOf(z), false, 4, null);
    }

    public final void a(boolean z) {
        I.a(this.f4941c, "advertisingOptOut", Boolean.valueOf(z), false, 4, null);
    }

    public final void b(boolean z) {
        I.a(this.f4941c, "canShowLocationPermission", Boolean.valueOf(z), false, 4, null);
    }
}
