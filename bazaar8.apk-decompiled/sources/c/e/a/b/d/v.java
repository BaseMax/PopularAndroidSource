package c.e.a.b.d;

import java.util.concurrent.Callable;

public final class v extends t {

    /* renamed from: e  reason: collision with root package name */
    public final Callable<String> f10092e;

    public v(Callable<String> callable) {
        super(false, null, null);
        this.f10092e = callable;
    }

    public final String a() {
        try {
            return this.f10092e.call();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
