package c.e.a.b.g.e;

public final class p extends l {

    /* renamed from: b  reason: collision with root package name */
    public final o f10124b = new o();

    public final void a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f10124b.a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
