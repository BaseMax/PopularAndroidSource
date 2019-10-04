package c.e.c.h;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static volatile d f11719a;

    /* renamed from: b  reason: collision with root package name */
    public final Set<e> f11720b = new HashSet();

    public static d a() {
        d dVar = f11719a;
        if (dVar == null) {
            synchronized (d.class) {
                dVar = f11719a;
                if (dVar == null) {
                    dVar = new d();
                    f11719a = dVar;
                }
            }
        }
        return dVar;
    }

    public Set<e> b() {
        Set<e> unmodifiableSet;
        synchronized (this.f11720b) {
            unmodifiableSet = Collections.unmodifiableSet(this.f11720b);
        }
        return unmodifiableSet;
    }
}
