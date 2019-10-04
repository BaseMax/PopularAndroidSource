package com.yandex.metrica.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.os.SystemClock;
import android.util.Base64;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import org.a.a;
import org.a.b;
import org.a.c;

public final class y {

    /* renamed from: a  reason: collision with root package name */
    private final c f6529a = new c();

    public final y a() {
        try {
            c();
            b();
        } catch (Exception unused) {
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public final y b() throws b {
        ((c) a(this.f6529a, "dfid", new c())).put("boot_time", (System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000);
        return this;
    }

    /* access modifiers changed from: package-private */
    public final y a(Context context, boolean z) throws b, UnsupportedEncodingException {
        c cVar = (c) a((c) a(this.f6529a, "dfid", new c()), "au", new c());
        a aVar = (a) a(cVar, "aun", new a());
        a aVar2 = (a) a(cVar, "ausf", new a());
        a aVar3 = (a) a(cVar, "audf", new a());
        a aVar4 = (a) a(cVar, "aulu", new a());
        a aVar5 = new a();
        if (z) {
            a(cVar, "aufi", aVar5);
        }
        HashSet hashSet = new HashSet();
        for (ResolveInfo resolveInfo : bv.a(context, new String(Base64.decode("YW5kcm9pZC5pbnRlbnQuYWN0aW9uLk1BSU4=", 0), "UTF-8"), new String(Base64.decode("YW5kcm9pZC5pbnRlbnQuY2F0ZWdvcnkuTEFVTkNIRVI=", 0), "UTF-8"))) {
            ApplicationInfo applicationInfo = resolveInfo.activityInfo.applicationInfo;
            if (hashSet.add(applicationInfo.packageName)) {
                aVar.put((Object) applicationInfo.packageName);
                boolean z2 = (applicationInfo.flags & 1) == 1;
                aVar2.put(z2);
                aVar4.put(new File(applicationInfo.sourceDir).lastModified());
                aVar3.put(true ^ applicationInfo.enabled);
                if (z) {
                    if (z2) {
                        aVar5.put(0);
                    } else {
                        PackageInfo d = bv.d(context, applicationInfo.packageName);
                        if (d == null) {
                            aVar5.put(0);
                        } else {
                            aVar5.put(d.firstInstallTime / 1000);
                        }
                    }
                }
            }
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public final y a(Context context) throws b {
        c cVar = (c) a((c) a(this.f6529a, "dfid", new c()), "apps", new c());
        a aVar = (a) a(cVar, "names", new a());
        a aVar2 = (a) a(cVar, "system_flags", new a());
        a aVar3 = (a) a(cVar, "disabled_flags", new a());
        a aVar4 = (a) a(cVar, "first_install_time", new a());
        a aVar5 = (a) a(cVar, "last_update_time", new a());
        cVar.put("version", 0);
        for (PackageInfo next : context.getPackageManager().getInstalledPackages(0)) {
            aVar.put((Object) next.packageName);
            aVar2.put((next.applicationInfo.flags & 1) == 1);
            aVar3.put(!next.applicationInfo.enabled);
            aVar4.put(next.firstInstallTime / 1000);
            aVar5.put(next.lastUpdateTime / 1000);
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public final y c() throws b {
        c cVar = (c) a(this.f6529a, "dfid", new c());
        long a2 = av.a(true);
        long a3 = av.a(false);
        long c = av.c(true);
        long c2 = av.c(false);
        cVar.put("tds", a2 + a3);
        cVar.put("fds", c + c2);
        return this;
    }

    static <T> T a(c cVar, String str, T t) throws b {
        if (!cVar.has(str)) {
            cVar.put(str, (Object) t);
        }
        return cVar.get(str);
    }

    public final String toString() {
        return this.f6529a.toString();
    }

    public final String d() {
        return this.f6529a.toString();
    }
}
