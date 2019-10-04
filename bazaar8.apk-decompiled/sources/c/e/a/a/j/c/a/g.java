package c.e.a.a.j.c.a;

import c.e.a.a.o.I;

/* compiled from: ProgramInformation */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f8557a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8558b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8559c;

    /* renamed from: d  reason: collision with root package name */
    public final String f8560d;

    /* renamed from: e  reason: collision with root package name */
    public final String f8561e;

    public g(String str, String str2, String str3, String str4, String str5) {
        this.f8557a = str;
        this.f8558b = str2;
        this.f8559c = str3;
        this.f8560d = str4;
        this.f8561e = str5;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (!I.a((Object) this.f8557a, (Object) gVar.f8557a) || !I.a((Object) this.f8558b, (Object) gVar.f8558b) || !I.a((Object) this.f8559c, (Object) gVar.f8559c) || !I.a((Object) this.f8560d, (Object) gVar.f8560d) || !I.a((Object) this.f8561e, (Object) gVar.f8561e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f8557a;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f8558b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f8559c;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f8560d;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f8561e;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode4 + i2;
    }
}
