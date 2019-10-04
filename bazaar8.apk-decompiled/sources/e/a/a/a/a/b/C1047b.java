package e.a.a.a.a.b;

/* renamed from: e.a.a.a.a.b.b  reason: case insensitive filesystem */
/* compiled from: AdvertisingInfo */
public class C1047b {

    /* renamed from: a  reason: collision with root package name */
    public final String f13672a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f13673b;

    public C1047b(String str, boolean z) {
        this.f13672a = str;
        this.f13673b = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1047b.class != obj.getClass()) {
            return false;
        }
        C1047b bVar = (C1047b) obj;
        if (this.f13673b != bVar.f13673b) {
            return false;
        }
        String str = this.f13672a;
        return str == null ? bVar.f13672a == null : str.equals(bVar.f13672a);
    }

    public int hashCode() {
        String str = this.f13672a;
        return ((str != null ? str.hashCode() : 0) * 31) + (this.f13673b ? 1 : 0);
    }
}
