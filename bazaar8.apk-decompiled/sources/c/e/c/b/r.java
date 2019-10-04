package c.e.c.b;

import c.e.c.c.a;
import c.e.c.c.b;
import java.util.Map;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Map.Entry f11556a;

    /* renamed from: b  reason: collision with root package name */
    public final a f11557b;

    public r(Map.Entry entry, a aVar) {
        this.f11556a = entry;
        this.f11557b = aVar;
    }

    public static Runnable a(Map.Entry entry, a aVar) {
        return new r(entry, aVar);
    }

    public void run() {
        ((b) this.f11556a.getKey()).a(this.f11557b);
    }
}
