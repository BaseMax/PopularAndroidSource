package c.c.a.e.d.u;

import c.c.a.e.d.b.G;
import h.f.b.j;
import h.f.b.n;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Currency;
import java.util.List;
import java.util.Locale;

/* compiled from: SettingsRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final G f5425a;

    public a(G g2) {
        j.b(g2, "settingsLocalDataSource");
        this.f5425a = g2;
    }

    public final boolean A() {
        return this.f5425a.w();
    }

    public final boolean B() {
        return this.f5425a.x();
    }

    public final void C() {
        this.f5425a.a();
    }

    public final void D() {
        this.f5425a.y();
    }

    public final boolean E() {
        return this.f5425a.z();
    }

    public final boolean F() {
        return this.f5425a.A();
    }

    public final boolean G() {
        return this.f5425a.B();
    }

    public final void a(int i2, int i3, int i4, int i5) {
        n nVar = n.f14575a;
        Locale locale = Locale.getDefault();
        j.a((Object) locale, "Locale.getDefault()");
        Object[] objArr = {Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)};
        String format = String.format(locale, "%d:%d-%d:%d", Arrays.copyOf(objArr, objArr.length));
        j.a((Object) format, "java.lang.String.format(locale, format, *args)");
        this.f5425a.g(format);
    }

    public final void b(long j2) {
        this.f5425a.b(j2);
    }

    public final void c() {
        this.f5425a.d();
    }

    public final void d(String str) {
        j.b(str, "clientId");
        this.f5425a.d(str);
    }

    public final String e() {
        return this.f5425a.f();
    }

    public final void f(String str) {
        j.b(str, "locale");
        this.f5425a.f(str);
    }

    public final boolean g() {
        return this.f5425a.h();
    }

    public final String h() {
        return this.f5425a.i();
    }

    public final String i() {
        return this.f5425a.j();
    }

    public final String j() {
        Currency instance = Currency.getInstance(new Locale("fa", "ir"));
        j.a((Object) instance, "Currency.getInstance(Locale(\"fa\", \"ir\"))");
        String currencyCode = instance.getCurrencyCode();
        return currencyCode != null ? currencyCode : "";
    }

    public final String k() {
        return this.f5425a.k();
    }

    public final String l() {
        String language = n().getLanguage();
        return language != null ? language : "fa";
    }

    public final long m() {
        return this.f5425a.l();
    }

    public final Locale n() {
        return this.f5425a.m();
    }

    public final String o() {
        return this.f5425a.n();
    }

    public final String p() {
        return this.f5425a.o();
    }

    public final Calendar q() {
        String o = o();
        if (!(o.length() > 0)) {
            return null;
        }
        List a2 = h.k.n.a((CharSequence) h.k.n.a((CharSequence) o, new String[]{"-"}, false, 0, 6, (Object) null).get(0), new String[]{":"}, false, 0, 6, (Object) null);
        Calendar instance = Calendar.getInstance();
        instance.set(11, Integer.parseInt((String) a2.get(0)));
        instance.set(12, Integer.parseInt((String) a2.get(1)));
        instance.set(13, 0);
        return instance;
    }

    public final Calendar r() {
        String o = o();
        if (!(o.length() > 0)) {
            return null;
        }
        List a2 = h.k.n.a((CharSequence) h.k.n.a((CharSequence) o, new String[]{"-"}, false, 0, 6, (Object) null).get(1), new String[]{":"}, false, 0, 6, (Object) null);
        Calendar instance = Calendar.getInstance();
        instance.set(11, Integer.parseInt((String) a2.get(0)));
        instance.set(12, Integer.parseInt((String) a2.get(1)));
        instance.set(13, 0);
        return instance;
    }

    public final long s() {
        return this.f5425a.p();
    }

    public final boolean t() {
        return this.f5425a.q();
    }

    public final boolean u() {
        return this.f5425a.r();
    }

    public final boolean v() {
        return this.f5425a.s();
    }

    public final boolean w() {
        return j.a((Object) n(), (Object) new Locale("fa"));
    }

    public final boolean x() {
        return this.f5425a.t();
    }

    public final boolean y() {
        return this.f5425a.u();
    }

    public final boolean z() {
        return this.f5425a.v();
    }

    public final void b(String str) {
        j.b(str, "nonce");
        this.f5425a.b(str);
    }

    public final void c(String str) {
        j.b(str, "advertisingId");
        this.f5425a.c(str);
    }

    public final void d() {
        this.f5425a.e();
    }

    public final void e(String str) {
        j.b(str, "token");
        this.f5425a.e(str);
    }

    public final String f() {
        return this.f5425a.g();
    }

    public final void b() {
        this.f5425a.c();
    }

    public final void c(boolean z) {
        this.f5425a.c(z);
    }

    public final void b(boolean z) {
        this.f5425a.b(z);
    }

    public final void a(long j2) {
        this.f5425a.a(j2);
    }

    public final void a(String str) {
        j.b(str, "pass");
        this.f5425a.a(str);
    }

    public final void a(boolean z) {
        this.f5425a.a(z);
    }

    public final boolean a() {
        return this.f5425a.b();
    }
}
