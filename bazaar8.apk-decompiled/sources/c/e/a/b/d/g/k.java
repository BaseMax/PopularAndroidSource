package c.e.a.b.d.g;

import java.io.Closeable;
import java.io.IOException;

@Deprecated
public final class k {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
