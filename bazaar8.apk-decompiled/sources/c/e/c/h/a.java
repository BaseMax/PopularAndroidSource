package c.e.c.h;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    public final String f11714a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11715b;

    public a(String str, String str2) {
        if (str != null) {
            this.f11714a = str;
            if (str2 != null) {
                this.f11715b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }

    public String a() {
        return this.f11714a;
    }

    public String b() {
        return this.f11715b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (!this.f11714a.equals(eVar.a()) || !this.f11715b.equals(eVar.b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f11714a.hashCode() ^ 1000003) * 1000003) ^ this.f11715b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f11714a + ", version=" + this.f11715b + "}";
    }
}
