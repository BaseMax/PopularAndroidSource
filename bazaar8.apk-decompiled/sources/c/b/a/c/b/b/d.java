package c.b.a.c.b.b;

import c.b.a.c.b.b.a;
import java.io.File;

/* compiled from: DiskLruCacheFactory */
public class d implements a.C0054a {

    /* renamed from: a  reason: collision with root package name */
    public final long f3896a;

    /* renamed from: b  reason: collision with root package name */
    public final a f3897b;

    /* compiled from: DiskLruCacheFactory */
    public interface a {
        File a();
    }

    public d(a aVar, long j2) {
        this.f3896a = j2;
        this.f3897b = aVar;
    }

    public a build() {
        File a2 = this.f3897b.a();
        if (a2 == null) {
            return null;
        }
        if (a2.mkdirs() || (a2.exists() && a2.isDirectory())) {
            return e.a(a2, this.f3896a);
        }
        return null;
    }
}
