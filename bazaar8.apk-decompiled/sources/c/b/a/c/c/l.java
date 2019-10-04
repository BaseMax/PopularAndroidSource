package c.b.a.c.c;

import android.net.Uri;
import android.text.TextUtils;
import c.b.a.c.c;
import c.b.a.i.i;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: GlideUrl */
public class l implements c {

    /* renamed from: a  reason: collision with root package name */
    public final n f4091a;

    /* renamed from: b  reason: collision with root package name */
    public final URL f4092b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4093c;

    /* renamed from: d  reason: collision with root package name */
    public String f4094d;

    /* renamed from: e  reason: collision with root package name */
    public URL f4095e;

    /* renamed from: f  reason: collision with root package name */
    public volatile byte[] f4096f;

    /* renamed from: g  reason: collision with root package name */
    public int f4097g;

    public l(URL url) {
        this(url, n.f4099b);
    }

    public String a() {
        String str = this.f4093c;
        if (str != null) {
            return str;
        }
        URL url = this.f4092b;
        i.a(url);
        return url.toString();
    }

    public final byte[] b() {
        if (this.f4096f == null) {
            this.f4096f = a().getBytes(c.f4046a);
        }
        return this.f4096f;
    }

    public Map<String, String> c() {
        return this.f4091a.a();
    }

    public final String d() {
        if (TextUtils.isEmpty(this.f4094d)) {
            String str = this.f4093c;
            if (TextUtils.isEmpty(str)) {
                URL url = this.f4092b;
                i.a(url);
                str = url.toString();
            }
            this.f4094d = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f4094d;
    }

    public final URL e() {
        if (this.f4095e == null) {
            this.f4095e = new URL(d());
        }
        return this.f4095e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (!a().equals(lVar.a()) || !this.f4091a.equals(lVar.f4091a)) {
            return false;
        }
        return true;
    }

    public URL f() {
        return e();
    }

    public int hashCode() {
        if (this.f4097g == 0) {
            this.f4097g = a().hashCode();
            this.f4097g = (this.f4097g * 31) + this.f4091a.hashCode();
        }
        return this.f4097g;
    }

    public String toString() {
        return a();
    }

    public l(String str) {
        this(str, n.f4099b);
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(b());
    }

    public l(URL url, n nVar) {
        i.a(url);
        this.f4092b = url;
        this.f4093c = null;
        i.a(nVar);
        this.f4091a = nVar;
    }

    public l(String str, n nVar) {
        this.f4092b = null;
        i.a(str);
        this.f4093c = str;
        i.a(nVar);
        this.f4091a = nVar;
    }
}
