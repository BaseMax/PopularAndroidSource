package b.H.a.c;

/* renamed from: b.H.a.c.e  reason: case insensitive filesystem */
/* compiled from: SystemIdInfo */
public class C0184e {

    /* renamed from: a  reason: collision with root package name */
    public final String f1452a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1453b;

    public C0184e(String str, int i2) {
        this.f1452a = str;
        this.f1453b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0184e.class != obj.getClass()) {
            return false;
        }
        C0184e eVar = (C0184e) obj;
        if (this.f1453b != eVar.f1453b) {
            return false;
        }
        return this.f1452a.equals(eVar.f1452a);
    }

    public int hashCode() {
        return (this.f1452a.hashCode() * 31) + this.f1453b;
    }
}
