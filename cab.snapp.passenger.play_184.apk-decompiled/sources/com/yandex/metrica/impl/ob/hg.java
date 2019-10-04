package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.nf;
import com.yandex.metrica.impl.w;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class hg {

    /* renamed from: a  reason: collision with root package name */
    private final Object f6096a;

    /* renamed from: b  reason: collision with root package name */
    private final a f6097b;
    private final hi c;
    private hf d;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        hg f6098a;

        /* renamed from: b  reason: collision with root package name */
        private nf f6099b;

        /* synthetic */ a(hg hgVar, byte b2) {
            this(hgVar);
        }

        private a(hg hgVar) {
            this(hgVar, new nf("com.yandex.metrica.synchronization.deviceid"));
        }

        a(hg hgVar, nf nfVar) {
            this.f6098a = hgVar;
            this.f6099b = nfVar;
        }

        /* access modifiers changed from: package-private */
        public hg a() {
            return this.f6098a;
        }

        public hb a(Context context, hb hbVar) {
            TextUtils.isEmpty(hbVar.f6085a);
            a().f().a(context);
            try {
                this.f6099b.c();
                hb a2 = a(context, hbVar, a().f().a(context));
                try {
                    this.f6099b.b();
                    return a2;
                } catch (nf.a unused) {
                    return a2;
                }
            } catch (nf.a unused2) {
                return null;
            }
        }

        /* access modifiers changed from: package-private */
        public hb a(Context context, hb hbVar, hb hbVar2) {
            com.yandex.metrica.b a2 = lm.a(context);
            if (hbVar == null || TextUtils.isEmpty(hbVar.f6085a)) {
                if (hbVar2 == null || TextUtils.isEmpty(hbVar2.f6085a)) {
                    return null;
                }
                a().c(context, hbVar2);
                return hbVar2;
            } else if (hbVar.equals(hbVar2)) {
                a().c(context, hbVar);
                a2.reportEvent("update_snapshot", (Map<String, Object>) new c(context, hbVar2.f6085a, hbVar.f6085a));
                return hbVar;
            } else if (hbVar2 == null || TextUtils.isEmpty(hbVar2.f6085a)) {
                a().c(context, hbVar);
                a2.reportEvent("wtf_situation. App has id and elector hasn't", (Map<String, Object>) new c(context, "", hbVar.f6085a));
                return hbVar;
            } else {
                a().c(context, hbVar2);
                a2.reportEvent("overlapping_device_id", (Map<String, Object>) new c(context, hbVar2.f6085a, hbVar.f6085a));
                return hbVar2;
            }
        }
    }

    static class b {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public static final hg f6100a = new hg((byte) 0);
    }

    static class c extends HashMap<String, Object> {
        public c(Context context, String str) {
            String packageName = context.getPackageName();
            put("passed_id", str);
            put("package_name", packageName);
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
                put("version_code", Integer.valueOf(packageInfo.versionCode));
                put("version_name", packageInfo.versionName);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }

        public c(Context context, String str, String str2) {
            this(context, str);
            put("stored_device_id", str2);
        }
    }

    /* synthetic */ hg(byte b2) {
        this();
    }

    public static hg a() {
        return b.f6100a;
    }

    private hg() {
        this.f6096a = new Object();
        this.f6097b = new a(this, (byte) 0);
        this.c = new hi(this);
    }

    /* access modifiers changed from: package-private */
    public a b() {
        return this.f6097b;
    }

    /* access modifiers changed from: package-private */
    public hf c() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public void a(hf hfVar) {
        synchronized (this.f6096a) {
            this.d = hfVar;
            if (this.d != null) {
                h.a().b((j) new o(this.d.c().f6085a));
            }
        }
    }

    public hb d() {
        hf c2 = c();
        if (c2 == null) {
            return null;
        }
        return c2.c();
    }

    /* access modifiers changed from: package-private */
    public hf a(Context context, String str) {
        return a(context, str, context.getFileStreamPath("credentials.dat"));
    }

    /* access modifiers changed from: package-private */
    public hf b(Context context, String str) {
        return a(context, str, new File(context.getNoBackupFilesDir(), "credentials.dat"));
    }

    private hf a(Context context, String str, File file) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return e(context, file.getAbsolutePath().replace(context.getApplicationInfo().dataDir, applicationInfo.dataDir));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private hf e(Context context, String str) {
        String a2;
        try {
            File file = new File(str);
            if (file.exists()) {
                synchronized (this.f6096a) {
                    a2 = w.a(context, file);
                }
                if (a2 == null) {
                    return null;
                }
                return new hf(new org.a.c(a2), file.lastModified());
            }
        } catch (Exception | org.a.b unused) {
        }
        return null;
    }

    public hb a(Context context, hb hbVar) {
        return d(context, hbVar);
    }

    /* access modifiers changed from: package-private */
    public boolean e() {
        return bv.a(21);
    }

    /* access modifiers changed from: package-private */
    public void b(Context context, hb hbVar) {
        try {
            synchronized (this.f6096a) {
                a(new hf(hbVar, new hh(context), System.currentTimeMillis()));
                String a2 = this.d.a();
                if (e()) {
                    c(context, a2);
                }
                synchronized (this.f6096a) {
                    w.a(context, "credentials.dat", a2);
                }
            }
        } catch (org.a.b unused) {
        }
    }

    /* access modifiers changed from: package-private */
    public void c(Context context, String str) {
        synchronized (this.f6096a) {
            w.b(context, "credentials.dat", str);
        }
    }

    /* access modifiers changed from: package-private */
    public void c(Context context, hb hbVar) {
        if (TextUtils.isEmpty(hbVar.f6085a)) {
            lm.a(context).reportEvent("saving_empty_device_id", (Map<String, Object>) new c(context, hbVar.f6085a));
        } else {
            b(context, hbVar);
        }
    }

    public hb a(Context context) {
        return d(context, new hb(null, null));
    }

    private hb d(Context context, hb hbVar) {
        hb hbVar2;
        synchronized (this.f6096a) {
            if (c() == null) {
                hf a2 = a(context, context.getPackageName());
                if (a2 == null) {
                    hbVar2 = b().a(context, hbVar);
                } else if (e()) {
                    hf b2 = b(context, context.getPackageName());
                    if (!a2.a(b2) || !b2.e()) {
                        hbVar2 = b().a(context, a2.c());
                    } else {
                        a(a2);
                        hbVar2 = b2.c();
                    }
                } else if (a2.e()) {
                    a(a2);
                    hbVar2 = a2.c();
                } else {
                    hbVar2 = b().a(context, a2.c());
                }
            } else {
                hbVar2 = c().c();
            }
        }
        if (hbVar2 == null || TextUtils.isEmpty(hbVar.f6086b) || hbVar.f6086b.equals(hbVar2.f6086b) || (!TextUtils.isEmpty(hbVar.f6085a) && !hbVar.f6085a.equals(hbVar2.f6085a))) {
            return hbVar2;
        }
        hb hbVar3 = new hb(hbVar2.f6085a, hbVar.f6086b);
        b(context, hbVar3);
        return hbVar3;
    }

    /* access modifiers changed from: package-private */
    @Deprecated
    public String d(Context context, String str) {
        Cursor cursor;
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str + ".MetricaContentProvider", 0);
        String str2 = null;
        if (resolveContentProvider != null && resolveContentProvider.enabled) {
            try {
                cursor = context.getContentResolver().query(Uri.parse(String.format(Locale.US, "content://%s.MetricaContentProvider/DEVICE_ID", new Object[]{str})), null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            str2 = cursor.getString(cursor.getColumnIndex("DEVICE_ID"));
                        }
                    } catch (Exception unused) {
                    } catch (Throwable th) {
                        th = th;
                        bv.a(cursor);
                        throw th;
                    }
                }
            } catch (Exception unused2) {
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
                bv.a(cursor);
                throw th;
            }
            bv.a(cursor);
        }
        return str2;
    }

    /* access modifiers changed from: package-private */
    public hi f() {
        return this.c;
    }
}
