package com.bumptech.glide.load.b.b;

import android.util.Log;
import com.bumptech.glide.a.a;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.c;
import com.bumptech.glide.load.d;
import java.io.File;
import java.io.IOException;

public final class e implements a {

    /* renamed from: a  reason: collision with root package name */
    private static e f2155a;

    /* renamed from: b  reason: collision with root package name */
    private final j f2156b;
    private final File c;
    private final long d;
    private final c e = new c();
    private a f;

    @Deprecated
    public static synchronized a get(File file, long j) {
        e eVar;
        synchronized (e.class) {
            if (f2155a == null) {
                f2155a = new e(file, j);
            }
            eVar = f2155a;
        }
        return eVar;
    }

    public static a create(File file, long j) {
        return new e(file, j);
    }

    @Deprecated
    private e(File file, long j) {
        this.c = file;
        this.d = j;
        this.f2156b = new j();
    }

    private synchronized a a() throws IOException {
        if (this.f == null) {
            this.f = a.open(this.c, 1, 1, this.d);
        }
        return this.f;
    }

    public final File get(d dVar) {
        String safeKey = this.f2156b.getSafeKey(dVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            StringBuilder sb = new StringBuilder("Get: Obtained: ");
            sb.append(safeKey);
            sb.append(" for for Key: ");
            sb.append(dVar);
        }
        try {
            a.d dVar2 = a().get(safeKey);
            if (dVar2 != null) {
                return dVar2.getFile(0);
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    public final void put(d dVar, a.b bVar) {
        c.a aVar;
        a.b edit;
        String safeKey = this.f2156b.getSafeKey(dVar);
        c cVar = this.e;
        synchronized (cVar) {
            aVar = cVar.f2145a.get(safeKey);
            if (aVar == null) {
                aVar = cVar.f2146b.a();
                cVar.f2145a.put(safeKey, aVar);
            }
            aVar.f2148b++;
        }
        aVar.f2147a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                StringBuilder sb = new StringBuilder("Put: Obtained: ");
                sb.append(safeKey);
                sb.append(" for for Key: ");
                sb.append(dVar);
            }
            try {
                com.bumptech.glide.a.a a2 = a();
                if (a2.get(safeKey) == null) {
                    edit = a2.edit(safeKey);
                    if (edit != null) {
                        if (bVar.write(edit.getFile(0))) {
                            edit.commit();
                        }
                        edit.abortUnlessCommitted();
                    } else {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(String.valueOf(safeKey)));
                    }
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                edit.abortUnlessCommitted();
                throw th;
            }
        } finally {
            this.e.a(safeKey);
        }
    }

    public final void delete(d dVar) {
        try {
            a().remove(this.f2156b.getSafeKey(dVar));
        } catch (IOException unused) {
        }
    }

    public final synchronized void clear() {
        try {
            a().delete();
            b();
        } catch (IOException unused) {
            b();
        } catch (Throwable th) {
            b();
            throw th;
        }
    }

    private synchronized void b() {
        this.f = null;
    }
}
