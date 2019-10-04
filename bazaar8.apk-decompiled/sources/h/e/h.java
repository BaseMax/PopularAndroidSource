package h.e;

import h.f.b.j;
import java.io.File;
import java.util.Iterator;

/* compiled from: Utils.kt */
public class h extends g {
    public static final boolean b(File file) {
        j.b(file, "$this$deleteRecursively");
        Iterator it = g.a(file).iterator();
        while (true) {
            boolean z = true;
            while (true) {
                if (!it.hasNext()) {
                    return z;
                }
                File file2 = (File) it.next();
                if (file2.delete() || !file2.exists()) {
                    if (z) {
                    }
                }
                z = false;
            }
        }
    }
}
