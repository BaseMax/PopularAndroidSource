package c.e.a.b.g.f;

public final class Kb implements Rb {

    /* renamed from: a  reason: collision with root package name */
    public Rb[] f10187a;

    public Kb(Rb... rbArr) {
        this.f10187a = rbArr;
    }

    public final boolean a(Class<?> cls) {
        for (Rb a2 : this.f10187a) {
            if (a2.a(cls)) {
                return true;
            }
        }
        return false;
    }

    public final Qb b(Class<?> cls) {
        for (Rb rb : this.f10187a) {
            if (rb.a(cls)) {
                return rb.b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
