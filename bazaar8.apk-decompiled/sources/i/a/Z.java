package i.a;

/* compiled from: JobSupport.kt */
public final class Z implements C1116ma {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f14667a;

    public Z(boolean z) {
        this.f14667a = z;
    }

    public Da b() {
        return null;
    }

    public boolean s() {
        return this.f14667a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(s() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
