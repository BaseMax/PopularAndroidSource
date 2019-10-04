package c.c.a.e.d.a.a;

import c.c.a.e.d.b.I;
import com.crashlytics.android.core.MetaDataStore;
import h.a.u;
import h.f.b.f;
import h.f.b.j;
import h.k.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: AccountLocalDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0078a f4911a = new C0078a(null);

    /* renamed from: b  reason: collision with root package name */
    public final I f4912b;

    /* renamed from: c.c.a.e.d.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: AccountLocalDataSource.kt */
    public static final class C0078a {
        public C0078a() {
        }

        public /* synthetic */ C0078a(f fVar) {
            this();
        }
    }

    public a(I i2) {
        j.b(i2, "sharedDataSource");
        this.f4912b = i2;
    }

    public final void A() {
        I.a(this.f4912b, "forceRegister", false, false, 4, null);
    }

    public final void B() {
        I.a(this.f4912b, "forceRegister", true, false, 4, null);
    }

    public final void a(int i2) {
        I.a(this.f4912b, "bazaarLatestVersionCode", Integer.valueOf(i2), false, 4, null);
    }

    public final void b(int i2) {
        I.a(this.f4912b, "deviceId", Integer.valueOf(i2), false, 4, null);
    }

    public final void c(boolean z) {
        I.a(this.f4912b, "navCategoryVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final void d(String str) {
        j.b(str, "phoneNumber");
        I.a(this.f4912b, "phoneNumber", str, false, 4, null);
    }

    public final void e(String str) {
        j.b(str, MetaDataStore.KEY_USER_NAME);
        I.a(this.f4912b, "username", str, false, 4, null);
    }

    public final void f(String str) {
        j.b(str, "logoUrl");
        I.a(this.f4912b, "bazaarLogoUrl", str, false, 4, null);
    }

    public final void g(String str) {
        j.b(str, "forceUpdateLink");
        I.a(this.f4912b, "forceUpdateLink", str, false, 4, null);
    }

    public final void h(String str) {
        j.b(str, "logoUrl");
        I.a(this.f4912b, "kidsLogoUrl", str, false, 4, null);
    }

    public final void i(String str) {
        j.b(str, "nickName");
        I.a(this.f4912b, "nickName", str, false, 4, null);
    }

    public final String j() {
        return (String) this.f4912b.a("nickName", "");
    }

    public final String k() {
        return (String) this.f4912b.a("phoneNumber", "");
    }

    public final String l() {
        return (String) this.f4912b.a("username", "");
    }

    public final void m(boolean z) {
        I.a(this.f4912b, "isVideoButtonInListVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final boolean n() {
        return ((Boolean) this.f4912b.a("hasForceUpdate", false)).booleanValue();
    }

    public final boolean o() {
        return ((Boolean) this.f4912b.a("navAppHomeVisible", false)).booleanValue();
    }

    public final boolean p() {
        return ((Boolean) this.f4912b.a("navCategoryVisible", true)).booleanValue();
    }

    public final boolean q() {
        return ((Boolean) this.f4912b.a("isDirectLinkForceUpdate", false)).booleanValue();
    }

    public final boolean r() {
        return ((Boolean) this.f4912b.a("forceRegister", false)).booleanValue();
    }

    public final boolean s() {
        return ((Boolean) this.f4912b.a("navGameHomeVisible", false)).booleanValue();
    }

    public final boolean t() {
        return ((Boolean) this.f4912b.a("navHomeVisible", true)).booleanValue();
    }

    public final boolean u() {
        return ((Boolean) this.f4912b.a("kidsOptionVisible", false)).booleanValue();
    }

    public final boolean v() {
        return ((Boolean) this.f4912b.a("navMyBazaarVisible", true)).booleanValue();
    }

    public final boolean w() {
        return ((Boolean) this.f4912b.a("navSearchVisible", true)).booleanValue();
    }

    public final boolean x() {
        return ((Boolean) this.f4912b.a("isUpdateAllEnabled", true)).booleanValue();
    }

    public final boolean y() {
        return ((Boolean) this.f4912b.a("navVideoHomeVisible", true)).booleanValue();
    }

    public final void z() {
        String i2 = i();
        String f2 = f();
        this.f4912b.a();
        b(f2);
        c(i2);
        I.a(this.f4912b, "autoFillPhones", (String) this.f4912b.a("autoFillPhones", ""), false, 4, null);
    }

    public final void a(boolean z) {
        I.a(this.f4912b, "hasForceUpdate", Boolean.valueOf(z), false, 4, null);
    }

    public final void b(boolean z) {
        I.a(this.f4912b, "navAppHomeVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final int c() {
        return ((Number) this.f4912b.a("bazaarLatestVersionCode", 0)).intValue();
    }

    public final void d(boolean z) {
        I.a(this.f4912b, "isDirectLinkForceUpdate", Boolean.valueOf(z), false, 4, null);
    }

    public final void e(boolean z) {
        I.a(this.f4912b, "navGameHomeVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final void f(boolean z) {
        I.a(this.f4912b, "navHomeVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final void g(boolean z) {
        I.a(this.f4912b, "kidsOptionVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final void h(boolean z) {
        I.a(this.f4912b, "navMyBazaarVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final void i(boolean z) {
        I.a(this.f4912b, "navSearchVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final void j(String str) {
        j.b(str, "logoUrl");
        I.a(this.f4912b, "videoLogoUrl", str, false, 4, null);
    }

    public final void k(boolean z) {
        I.a(this.f4912b, "isUpdateAllEnabled", Boolean.valueOf(z), false, 4, null);
    }

    public final void l(boolean z) {
        I.a(this.f4912b, "navVideoHomeVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final String m() {
        return (String) this.f4912b.a("videoLogoUrl", "");
    }

    public final void a(long j2) {
        I.a(this.f4912b, "latestRegisterDevice", Long.valueOf(j2), false, 4, null);
    }

    public final void b(String str) {
        j.b(str, "code");
        this.f4912b.a("emailOtpToken", str, true);
    }

    public final void c(String str) {
        j.b(str, "email");
        this.f4912b.a("mergeAccountEmail", str, true);
    }

    public final String d() {
        return (String) this.f4912b.a("bazaarLogoUrl", "");
    }

    public final int e() {
        return ((Number) this.f4912b.a("deviceId", -1)).intValue();
    }

    public final String f() {
        return (String) this.f4912b.a("emailOtpToken", "");
    }

    public final String g() {
        return (String) this.f4912b.a("kidsLogoUrl", "");
    }

    public final long h() {
        return ((Number) this.f4912b.a("latestRegisterDevice", 0L)).longValue();
    }

    public final String i() {
        return (String) this.f4912b.a("mergeAccountEmail", "");
    }

    public final void j(boolean z) {
        I.a(this.f4912b, "isTopChartsVisible", Boolean.valueOf(z), false, 4, null);
    }

    public final String a() {
        return (String) this.f4912b.a("forceUpdateLink", "");
    }

    public final List<String> b() {
        return n.a((CharSequence) this.f4912b.a("autoFillPhones", ""), new String[]{","}, false, 0, 6, (Object) null);
    }

    public final void a(c.c.a.e.g.f fVar) {
        j.b(fVar, "registerDevice");
        b(fVar.c());
        Integer a2 = fVar.a();
        boolean z = false;
        a(a2 != null ? a2.intValue() : 0);
        Boolean e2 = fVar.e();
        a(e2 != null ? e2.booleanValue() : false);
        Boolean j2 = fVar.j();
        d(j2 != null ? j2.booleanValue() : false);
        String d2 = fVar.d();
        if (d2 == null) {
            d2 = "";
        }
        g(d2);
        String b2 = fVar.b();
        if (b2 == null) {
            b2 = "";
        }
        f(b2);
        String g2 = fVar.g();
        if (g2 == null) {
            g2 = "";
        }
        j(g2);
        String f2 = fVar.f();
        if (f2 == null) {
            f2 = "";
        }
        h(f2);
        Boolean q = fVar.q();
        boolean z2 = true;
        k(q != null ? q.booleanValue() : true);
        Boolean p = fVar.p();
        j(p != null ? p.booleanValue() : true);
        Boolean s = fVar.s();
        m(s != null ? s.booleanValue() : false);
        Boolean h2 = fVar.h();
        b(h2 != null ? h2.booleanValue() : false);
        Boolean l2 = fVar.l();
        f(l2 != null ? l2.booleanValue() : true);
        Boolean i2 = fVar.i();
        c(i2 != null ? i2.booleanValue() : true);
        Boolean k2 = fVar.k();
        e(k2 != null ? k2.booleanValue() : false);
        Boolean r = fVar.r();
        l(r != null ? r.booleanValue() : true);
        Boolean n = fVar.n();
        h(n != null ? n.booleanValue() : true);
        Boolean o = fVar.o();
        if (o != null) {
            z2 = o.booleanValue();
        }
        i(z2);
        Boolean m = fVar.m();
        if (m != null) {
            z = m.booleanValue();
        }
        g(z);
    }

    public final void a(String str) {
        j.b(str, "phoneNumber");
        List<String> b2 = b();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = b2.iterator();
        while (true) {
            boolean z = true;
            if (it.hasNext()) {
                T next = it.next();
                if (((String) next).length() <= 0) {
                    z = false;
                }
                if (z) {
                    arrayList.add(next);
                }
            } else {
                Set j2 = u.j(arrayList);
                j2.add(str);
                this.f4912b.a("autoFillPhones", u.a(j2, ",", null, null, 0, null, null, 62, null), true);
                return;
            }
        }
    }
}
