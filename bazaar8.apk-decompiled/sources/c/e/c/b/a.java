package c.e.c.b;

import java.util.Set;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public abstract class a implements f {
    public <T> T a(Class<T> cls) {
        c.e.c.e.a<T> b2 = b(cls);
        if (b2 == null) {
            return null;
        }
        return b2.get();
    }

    public <T> Set<T> d(Class<T> cls) {
        return c(cls).get();
    }
}
