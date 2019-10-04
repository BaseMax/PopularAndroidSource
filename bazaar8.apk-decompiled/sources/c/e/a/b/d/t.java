package c.e.a.b.d;

import android.util.Log;
import c.e.a.b.d.g.a;
import c.e.a.b.d.g.j;
import java.util.concurrent.Callable;

public class t {

    /* renamed from: a  reason: collision with root package name */
    public static final t f10088a = new t(true, null, null);

    /* renamed from: b  reason: collision with root package name */
    public final boolean f10089b;

    /* renamed from: c  reason: collision with root package name */
    public final String f10090c;

    /* renamed from: d  reason: collision with root package name */
    public final Throwable f10091d;

    public t(boolean z, String str, Throwable th) {
        this.f10089b = z;
        this.f10090c = str;
        this.f10091d = th;
    }

    public static t a(Callable<String> callable) {
        return new v(callable);
    }

    public static t b() {
        return f10088a;
    }

    public final void c() {
        if (!this.f10089b && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.f10091d != null) {
                Log.d("GoogleCertificatesRslt", a(), this.f10091d);
                return;
            }
            Log.d("GoogleCertificatesRslt", a());
        }
    }

    public static t a(String str) {
        return new t(false, str, null);
    }

    public static t a(String str, Throwable th) {
        return new t(false, str, th);
    }

    public String a() {
        return this.f10090c;
    }

    public static String a(String str, m mVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", new Object[]{z2 ? "debug cert rejected" : "not whitelisted", str, j.a(a.a("SHA-1").digest(mVar.A())), Boolean.valueOf(z), "12451009.false"});
    }
}
