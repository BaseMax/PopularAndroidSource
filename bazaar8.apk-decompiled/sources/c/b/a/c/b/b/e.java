package c.b.a.c.b.b;

import android.util.Log;
import c.b.a.a.b;
import c.b.a.c.b.b.a;
import c.b.a.c.c;
import java.io.File;
import java.io.IOException;

/* compiled from: DiskLruCacheWrapper */
public class e implements a {

    /* renamed from: a  reason: collision with root package name */
    public final l f3898a;

    /* renamed from: b  reason: collision with root package name */
    public final File f3899b;

    /* renamed from: c  reason: collision with root package name */
    public final long f3900c;

    /* renamed from: d  reason: collision with root package name */
    public final c f3901d = new c();

    /* renamed from: e  reason: collision with root package name */
    public b f3902e;

    @Deprecated
    public e(File file, long j2) {
        this.f3899b = file;
        this.f3900c = j2;
        this.f3898a = new l();
    }

    public static a a(File file, long j2) {
        return new e(file, j2);
    }

    public final synchronized b a() {
        if (this.f3902e == null) {
            this.f3902e = b.a(this.f3899b, 1, 1, this.f3900c);
        }
        return this.f3902e;
    }

    public File a(c cVar) {
        String b2 = this.f3898a.b(cVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + b2 + " for for Key: " + cVar);
        }
        try {
            b.d f2 = a().f(b2);
            if (f2 != null) {
                return f2.a(0);
            }
            return null;
        } catch (IOException e2) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e2);
            return null;
        }
    }

    public void a(c cVar, a.b bVar) {
        b.C0052b e2;
        String b2 = this.f3898a.b(cVar);
        this.f3901d.a(b2);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + b2 + " for for Key: " + cVar);
            }
            try {
                b a2 = a();
                if (a2.f(b2) == null) {
                    e2 = a2.e(b2);
                    if (e2 != null) {
                        if (bVar.a(e2.a(0))) {
                            e2.c();
                        }
                        e2.b();
                        this.f3901d.b(b2);
                        return;
                    }
                    throw new IllegalStateException("Had two simultaneous puts for: " + b2);
                }
            } catch (IOException e3) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e3);
                }
            } catch (Throwable th) {
                e2.b();
                throw th;
            }
        } finally {
            this.f3901d.b(b2);
        }
    }
}
