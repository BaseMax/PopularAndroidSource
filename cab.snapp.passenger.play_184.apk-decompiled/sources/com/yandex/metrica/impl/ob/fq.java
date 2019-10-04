package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.bv;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class fq {

    /* renamed from: a  reason: collision with root package name */
    private static volatile fq f6036a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, fp> f6037b = new HashMap();
    private final Map<String, fr> c = new HashMap();
    private final Map<String, fl> d = new HashMap();
    private final Context e;
    private fp f;
    private fl g;
    private fr h;
    private fr i;
    private fr j;
    private ft k;
    private fs l;
    private fu m;

    public static fq a(Context context) {
        if (f6036a == null) {
            synchronized (fq.class) {
                if (f6036a == null) {
                    f6036a = new fq(context.getApplicationContext());
                }
            }
        }
        return f6036a;
    }

    public fq(Context context) {
        this.e = context;
    }

    public synchronized fp a() {
        if (this.f == null) {
            this.f = a("metrica_data.db", fm.b());
        }
        return this.f;
    }

    public synchronized fr b(z zVar) {
        fr frVar;
        String zVar2 = zVar.toString();
        frVar = this.c.get(zVar2);
        if (frVar == null) {
            frVar = new fr(a(zVar), "preferences");
            this.c.put(zVar2, frVar);
        }
        return frVar;
    }

    public synchronized fl c(z zVar) {
        fl flVar;
        String zVar2 = zVar.toString();
        flVar = this.d.get(zVar2);
        if (flVar == null) {
            flVar = new fl(new ga(a(zVar)), "binary_data");
            this.d.put(zVar2, flVar);
        }
        return flVar;
    }

    public synchronized fl b() {
        if (this.g == null) {
            this.g = new fl(new ga(a()), "binary_data");
        }
        return this.g;
    }

    public synchronized fr c() {
        if (this.h == null) {
            this.h = new fr(a(), "preferences");
        }
        return this.h;
    }

    public synchronized fu d() {
        if (this.m == null) {
            this.m = new fu(a(), "permissions");
        }
        return this.m;
    }

    public synchronized fr e() {
        if (this.i == null) {
            this.i = new fr(a(), "startup");
        }
        return this.i;
    }

    public synchronized fr f() {
        if (this.j == null) {
            this.j = new fr("preferences", (fy) new fz(this.e, a("metrica_client_data.db")));
        }
        return this.j;
    }

    public synchronized ft g() {
        if (this.k == null) {
            this.k = new ft(this.e, a());
        }
        return this.k;
    }

    public synchronized fs h() {
        if (this.l == null) {
            this.l = new fs(this.e, a());
        }
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public fp a(String str, fv fvVar) {
        return new fp(this.e, a(str), fvVar);
    }

    private String a(String str) {
        return bv.a(21) ? b(str) : str;
    }

    private String b(String str) {
        try {
            File noBackupFilesDir = this.e.getNoBackupFilesDir();
            File file = new File(noBackupFilesDir, str);
            if (!file.exists()) {
                File databasePath = this.e.getDatabasePath(str);
                if (databasePath.exists() && databasePath.renameTo(file)) {
                    String str2 = str + "-journal";
                    this.e.getDatabasePath(str2).renameTo(new File(noBackupFilesDir, str2));
                }
            }
            return file.getAbsolutePath();
        } catch (Exception unused) {
            return str;
        }
    }

    public synchronized fp a(z zVar) {
        fp fpVar;
        String concat = "db_metrica_".concat(String.valueOf(zVar));
        fpVar = this.f6037b.get(concat);
        if (fpVar == null) {
            fpVar = a(concat, fm.a());
            this.f6037b.put(concat, fpVar);
        }
        return fpVar;
    }
}
