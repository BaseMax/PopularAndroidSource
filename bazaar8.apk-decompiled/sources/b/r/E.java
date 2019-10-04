package b.r;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ViewModel */
public abstract class E {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, Object> f3149a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f3150b = false;

    public static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public final void c() {
        this.f3150b = true;
        Map<String, Object> map = this.f3149a;
        if (map != null) {
            synchronized (map) {
                for (Object a2 : this.f3149a.values()) {
                    a(a2);
                }
            }
        }
        d();
    }

    public void d() {
    }
}
