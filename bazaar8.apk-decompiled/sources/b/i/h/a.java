package b.i.h;

import android.util.Base64;
import b.i.j.h;
import java.util.List;

/* compiled from: FontRequest */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f2660a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2661b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2662c;

    /* renamed from: d  reason: collision with root package name */
    public final List<List<byte[]>> f2663d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2664e = 0;

    /* renamed from: f  reason: collision with root package name */
    public final String f2665f = (this.f2660a + "-" + this.f2661b + "-" + this.f2662c);

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        h.a(str);
        this.f2660a = str;
        h.a(str2);
        this.f2661b = str2;
        h.a(str3);
        this.f2662c = str3;
        h.a(list);
        this.f2663d = list;
    }

    public List<List<byte[]>> a() {
        return this.f2663d;
    }

    public int b() {
        return this.f2664e;
    }

    public String c() {
        return this.f2665f;
    }

    public String d() {
        return this.f2660a;
    }

    public String e() {
        return this.f2661b;
    }

    public String f() {
        return this.f2662c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f2660a + ", mProviderPackage: " + this.f2661b + ", mQuery: " + this.f2662c + ", mCertificates:");
        for (int i2 = 0; i2 < this.f2663d.size(); i2++) {
            sb.append(" [");
            List list = this.f2663d.get(i2);
            for (int i3 = 0; i3 < list.size(); i3++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list.get(i3), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f2664e);
        return sb.toString();
    }
}
