package com.yandex.metrica.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.am;
import com.yandex.metrica.impl.b;
import com.yandex.metrica.impl.ob.ap;
import com.yandex.metrica.impl.ob.fq;
import com.yandex.metrica.impl.ob.gf;
import com.yandex.metrica.impl.ob.gg;
import com.yandex.metrica.impl.ob.gk;
import com.yandex.metrica.impl.ob.ha;
import com.yandex.metrica.impl.ob.hb;
import com.yandex.metrica.impl.ob.hg;
import com.yandex.metrica.impl.ob.iu;
import com.yandex.metrica.impl.ob.iz;
import com.yandex.metrica.impl.ob.ja;
import com.yandex.metrica.impl.ob.jb;
import com.yandex.metrica.impl.ob.jc;
import com.yandex.metrica.impl.ob.jd;
import com.yandex.metrica.impl.ob.je;
import com.yandex.metrica.impl.ob.jf;
import com.yandex.metrica.impl.ob.lm;
import com.yandex.metrica.impl.ob.ma;
import com.yandex.metrica.impl.ob.nt;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class bn extends am {

    /* renamed from: a  reason: collision with root package name */
    private final gf f5776a;

    static class a implements am.a {
        a() {
        }

        public void a(Context context) {
            ha.a.a(ma.class).a(context).a(new gg(fq.a(context).e(), context.getPackageName()).a());
        }
    }

    static class b implements am.a {
        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        public void a(Context context) {
            String a2 = new jc(context).a((String) null);
            if (!TextUtils.isEmpty(a2) && TextUtils.isEmpty(hg.a().a(context, new hb(a2, null)).f6085a)) {
                jc.a(context);
            }
        }
    }

    static class c implements am.a {
        private c() {
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        public void a(Context context) {
            iz izVar = new iz(context, context.getPackageName());
            SharedPreferences a2 = jf.a(context, "_boundentrypreferences");
            String string = a2.getString(iz.c.a(), null);
            long j = a2.getLong(iz.d.a(), -1);
            if (string != null && j != -1) {
                izVar.a(new b.a(string, j)).j();
                a2.edit().remove(iz.c.a()).remove(iz.d.a()).apply();
            }
        }
    }

    static class d implements am.a {
        d() {
        }

        public void a(Context context) {
            gf gfVar = new gf(fq.a(context).c());
            jd jdVar = new jd(context);
            if (jdVar.a()) {
                gfVar.a(true);
                jdVar.b();
            }
            jb jbVar = new jb(context, context.getPackageName());
            long a2 = jbVar.a(0);
            if (a2 != 0) {
                gfVar.a(a2);
            }
            jbVar.a();
            iz izVar = new iz(context, new ap(context.getPackageName(), null).toString());
            CounterConfiguration.a b2 = izVar.b();
            if (b2 != CounterConfiguration.a.UNDEFINED) {
                gfVar.a(b2);
            }
            String b3 = izVar.b((String) null);
            if (!TextUtils.isEmpty(b3)) {
                gfVar.a(b3);
            }
            izVar.d().c().j();
            gfVar.i();
            iu iuVar = new iu(context);
            iuVar.a();
            iuVar.b();
            hg.a().a(context, new hb(nt.b(new gg(fq.a(context).e(), context.getPackageName()).a().f6417b, ""), null));
        }
    }

    static class e implements am.a {
        e() {
        }

        public void a(Context context) {
            gf gfVar = new gf(fq.a(context).c());
            long j = new gg(fq.a(context).e(), context.getPackageName()).a().r;
            boolean z = true;
            boolean z2 = j > 0;
            if (gfVar.c(-1) <= 0) {
                z = false;
            }
            if (z2 || z) {
                gfVar.c(false).i();
            }
        }
    }

    static class f implements am.a {
        f() {
        }

        public void a(Context context) {
            gg ggVar = new gg(fq.a(context).e(), context.getPackageName());
            String i = ggVar.i(null);
            if (i != null) {
                ggVar.a((List<String>) Collections.singletonList(i));
            }
            String j = ggVar.j(null);
            if (j != null) {
                ggVar.b((List<String>) Collections.singletonList(j));
            }
        }
    }

    static class g implements am.a {

        static class a implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            final Iterable<FilenameFilter> f5777a;

            a(Iterable<FilenameFilter> iterable) {
                this.f5777a = iterable;
            }

            public boolean accept(File file, String str) {
                for (FilenameFilter accept : this.f5777a) {
                    if (accept.accept(file, str)) {
                        return true;
                    }
                }
                return false;
            }
        }

        static class b implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            private final FilenameFilter f5778a;

            b(FilenameFilter filenameFilter) {
                this.f5778a = filenameFilter;
            }

            public boolean accept(File file, String str) {
                if (str.startsWith("db_metrica_")) {
                    try {
                        FilenameFilter filenameFilter = this.f5778a;
                        if (str.endsWith("-journal")) {
                            str = str.replace("-journal", "");
                        }
                        return filenameFilter.accept(file, str);
                    } catch (Exception unused) {
                    }
                }
                return false;
            }
        }

        static class c implements FilenameFilter {
            c() {
            }

            public boolean accept(File file, String str) {
                return str.endsWith("null");
            }
        }

        static class d implements FilenameFilter {
            d() {
            }

            public boolean accept(File file, String str) {
                String[] split = str.split(io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR);
                try {
                    Integer.parseInt(split[split.length - 1]);
                    return true;
                } catch (NumberFormatException unused) {
                    return false;
                }
            }
        }

        static class e implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            private final String f5779a;

            e(String str) {
                this.f5779a = str;
            }

            public boolean accept(File file, String str) {
                String[] split = str.split(io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR);
                if (split.length > 2) {
                    if (!(TextUtils.isEmpty(split[2]) || this.f5779a.equals(split[2]))) {
                        return true;
                    }
                }
                return false;
            }
        }

        g() {
        }

        public void a(Context context) {
            b(context);
            new gg(fq.a(context).e(), context.getPackageName()).p(new je("LAST_STARTUP_CLIDS_SAVE_TIME").b()).i();
        }

        /* access modifiers changed from: package-private */
        public void b(Context context) {
            File c2 = c(context);
            b bVar = new b(new e(context.getPackageName()));
            for (File file : c2.listFiles(new a(Arrays.asList(new FilenameFilter[]{bVar, new b(new d()), new b(new c())})))) {
                try {
                    if (!file.delete()) {
                        lm.a(context).reportEvent("Can not delete file", new org.a.c().put("fileName", (Object) file.getName()).toString());
                    }
                } catch (Exception e2) {
                    lm.a(context).reportError("Can not delete file", e2);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public File c(Context context) {
            if (bv.a(21)) {
                return context.getNoBackupFilesDir();
            }
            return new File(context.getFilesDir().getParentFile(), "databases");
        }
    }

    static class h implements am.a {
        h() {
        }

        public void a(Context context) {
            gk<ma> a2 = ha.a.a(ma.class).a(context);
            ma a3 = a2.a();
            a2.a(a3.a().a(a3.r > 0).a(0).a());
        }
    }

    public bn(Context context) {
        this.f5776a = new gf(fq.a(context).c());
    }

    /* access modifiers changed from: package-private */
    public SparseArray<am.a> a() {
        return new SparseArray<am.a>() {
            {
                put(29, new b((byte) 0));
                put(39, new c((byte) 0));
                put(47, new d());
                put(60, new e());
                put(62, new f());
                put(66, new g());
                put(67, new a());
                put(68, new h());
            }
        };
    }

    /* access modifiers changed from: protected */
    public int a(ja jaVar) {
        int a2 = jaVar.a();
        return a2 == -1 ? this.f5776a.a(-1) : a2;
    }

    /* access modifiers changed from: protected */
    public void a(ja jaVar, int i) {
        this.f5776a.b(i).i();
        jaVar.b().j();
    }
}
