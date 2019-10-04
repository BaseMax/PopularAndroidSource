package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class eu {

    /* renamed from: a  reason: collision with root package name */
    private Context f5986a;

    /* renamed from: b  reason: collision with root package name */
    private ex f5987b;
    private PackageManager c;

    static class a implements Comparable<a> {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public final int f5988a;

        /* renamed from: b  reason: collision with root package name */
        private final long f5989b;
        /* access modifiers changed from: private */
        public final ResolveInfo c;

        a(int i, long j, ResolveInfo resolveInfo) {
            this.f5988a = i;
            this.f5989b = j;
            this.c = resolveInfo;
        }

        /* renamed from: a */
        public int compareTo(a aVar) {
            int i = this.f5988a;
            if (i != aVar.f5988a) {
                return Integer.valueOf(i).compareTo(Integer.valueOf(aVar.f5988a));
            }
            long j = this.f5989b;
            if (j != aVar.f5989b) {
                return Long.valueOf(j).compareTo(Long.valueOf(aVar.f5989b));
            }
            return this.c.serviceInfo.packageName.compareTo(aVar.c.serviceInfo.packageName);
        }

        private static long a(PackageManager packageManager, ResolveInfo resolveInfo) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(resolveInfo.serviceInfo.packageName, 0);
                return Math.max(packageInfo.firstInstallTime, packageInfo.lastUpdateTime);
            } catch (Throwable unused) {
                return -1;
            }
        }

        private static boolean a(PackageManager packageManager, String str, String str2) {
            try {
                return packageManager.checkPermission(str2, str) == 0;
            } catch (Throwable unused) {
                return false;
            }
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        a(android.content.pm.PackageManager r5, android.content.pm.ResolveInfo r6, com.yandex.metrica.impl.ob.ff r7) {
            /*
                r4 = this;
                android.content.pm.ServiceInfo r0 = r6.serviceInfo
                java.lang.String r0 = r0.packageName
                java.lang.String r1 = "android.permission.READ_PHONE_STATE"
                boolean r1 = a(r5, r0, r1)
                int r1 = r1 * 1
                r2 = 0
                int r1 = r1 + r2
                java.lang.String r3 = "android.permission.ACCESS_COARSE_LOCATION"
                boolean r3 = a(r5, r0, r3)
                int r3 = r3 * 2
                int r1 = r1 + r3
                java.lang.String r3 = "android.permission.ACCESS_FINE_LOCATION"
                boolean r3 = a(r5, r0, r3)
                int r3 = r3 * 4
                int r1 = r1 + r3
                java.lang.String r3 = "android.permission.INTERNET"
                boolean r0 = a(r5, r0, r3)
                int r0 = r0 * 8
                int r1 = r1 + r0
                boolean r0 = r7.d
                int r0 = r0 * 16
                int r1 = r1 + r0
                com.yandex.metrica.impl.ob.fi r0 = r7.f6006a
                if (r0 != 0) goto L_0x0034
                r0 = 0
                goto L_0x0038
            L_0x0034:
                com.yandex.metrica.impl.ob.fi r0 = r7.f6006a
                boolean r0 = r0.i
            L_0x0038:
                int r0 = r0 * 32
                int r1 = r1 + r0
                com.yandex.metrica.impl.ob.fe r0 = r7.f6007b
                if (r0 != 0) goto L_0x0040
                goto L_0x0044
            L_0x0040:
                com.yandex.metrica.impl.ob.fe r7 = r7.f6007b
                boolean r2 = r7.i
            L_0x0044:
                int r2 = r2 * 64
                int r1 = r1 + r2
                long r2 = a(r5, r6)
                r4.<init>((int) r1, (long) r2, (android.content.pm.ResolveInfo) r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.eu.a.<init>(android.content.pm.PackageManager, android.content.pm.ResolveInfo, com.yandex.metrica.impl.ob.ff):void");
        }
    }

    public eu(Context context, ex exVar) {
        this(context, exVar, context.getPackageManager());
    }

    public String a() {
        List<ResolveInfo> a2 = this.f5987b.a(this.f5986a);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo next : a2) {
            String str = next.serviceInfo.packageName;
            if (next.serviceInfo.metaData.getInt("metrica:api:level") >= 53 && a(this.c, str)) {
                ff a3 = fg.a(this.f5986a).a(str);
                if (a3 != null) {
                    arrayList.add(new a(this.c, next, a3));
                }
            }
        }
        Collections.sort(arrayList);
        if (arrayList.size() > 0) {
            a aVar = (a) arrayList.get(arrayList.size() - 1);
            if (aVar.f5988a >= 112) {
                return aVar.c.serviceInfo.packageName;
            }
        }
        return null;
    }

    private static boolean a(PackageManager packageManager, String str) {
        try {
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(new Intent().setAction("com.yandex.metrica.configuration.ACTION_START").setPackage(str), 128);
            if (queryIntentServices == null || queryIntentServices.size() != 1) {
                return false;
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    eu(Context context, ex exVar, PackageManager packageManager) {
        this.f5986a = context;
        this.f5987b = exVar;
        this.c = packageManager;
    }
}
