package c.e.a.a.j.c.a;

import c.e.a.a.o.I;

/* compiled from: Descriptor */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f8545a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8546b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8547c;

    public d(String str, String str2, String str3) {
        this.f8545a = str;
        this.f8546b = str2;
        this.f8547c = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (!I.a((Object) this.f8545a, (Object) dVar.f8545a) || !I.a((Object) this.f8546b, (Object) dVar.f8546b) || !I.a((Object) this.f8547c, (Object) dVar.f8547c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f8545a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f8546b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f8547c;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }
}
