package com.google.android.gms.internal;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.o;
import com.google.android.gms.common.util.s;
import java.util.HashMap;
import java.util.Map;

public final class on {

    /* renamed from: a  reason: collision with root package name */
    private static String f3419a = "WakeLock";

    /* renamed from: b  reason: collision with root package name */
    private static String f3420b = "*gcore*:";
    private static boolean c = false;
    private final PowerManager.WakeLock d;
    private WorkSource e;
    private final int f;
    private final String g;
    private final String h;
    private final String i;
    private final Context j;
    private boolean k;
    private final Map<String, Integer[]> l;
    private int m;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public on(Context context, int i2, String str) {
        this(context, str, context == null ? null : context.getPackageName());
    }

    private on(Context context, String str, String str2) {
        this(context, str, str2, (byte) 0);
    }

    private on(Context context, String str, String str2, byte b2) {
        this.k = true;
        this.l = new HashMap();
        ap.zzh(str, "Wake lock name can NOT be empty");
        this.f = 1;
        this.h = null;
        this.i = null;
        this.j = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(f3420b);
            String valueOf2 = String.valueOf(str);
            this.g = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            this.g = str;
        }
        this.d = ((PowerManager) context.getSystemService("power")).newWakeLock(1, str);
        if (s.zzcy(this.j)) {
            this.e = s.zzaa(context, o.zzgs(str2) ? context.getPackageName() : str2);
            WorkSource workSource = this.e;
            if (workSource != null && s.zzcy(this.j)) {
                WorkSource workSource2 = this.e;
                if (workSource2 != null) {
                    workSource2.add(workSource);
                } else {
                    this.e = workSource;
                }
                try {
                    this.d.setWorkSource(this.e);
                } catch (IllegalArgumentException e2) {
                    Log.wtf(f3419a, e2.toString());
                }
            }
        }
    }

    private final String a() {
        if (!this.k) {
            return this.h;
        }
        if (!TextUtils.isEmpty(null)) {
            return null;
        }
        return this.h;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (r13 == false) goto L_0x004e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0054, code lost:
        if (r11.m == 0) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0056, code lost:
        com.google.android.gms.common.stats.e.zzamf();
        com.google.android.gms.common.stats.e.zza(r11.j, com.google.android.gms.common.stats.c.zza(r11.d, r4), 7, r11.g, r4, null, r11.f, com.google.android.gms.common.util.s.zzb(r11.e), 1000);
        r11.m++;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void acquire(long r12) {
        /*
            r11 = this;
            java.lang.String r4 = r11.a()
            monitor-enter(r11)
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.l     // Catch:{ all -> 0x0080 }
            boolean r12 = r12.isEmpty()     // Catch:{ all -> 0x0080 }
            r13 = 0
            if (r12 == 0) goto L_0x0012
            int r12 = r11.m     // Catch:{ all -> 0x0080 }
            if (r12 <= 0) goto L_0x0021
        L_0x0012:
            android.os.PowerManager$WakeLock r12 = r11.d     // Catch:{ all -> 0x0080 }
            boolean r12 = r12.isHeld()     // Catch:{ all -> 0x0080 }
            if (r12 != 0) goto L_0x0021
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.l     // Catch:{ all -> 0x0080 }
            r12.clear()     // Catch:{ all -> 0x0080 }
            r11.m = r13     // Catch:{ all -> 0x0080 }
        L_0x0021:
            boolean r12 = r11.k     // Catch:{ all -> 0x0080 }
            r10 = 1
            if (r12 == 0) goto L_0x004e
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.l     // Catch:{ all -> 0x0080 }
            java.lang.Object r12 = r12.get(r4)     // Catch:{ all -> 0x0080 }
            java.lang.Integer[] r12 = (java.lang.Integer[]) r12     // Catch:{ all -> 0x0080 }
            if (r12 != 0) goto L_0x003f
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.l     // Catch:{ all -> 0x0080 }
            java.lang.Integer[] r0 = new java.lang.Integer[r10]     // Catch:{ all -> 0x0080 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r10)     // Catch:{ all -> 0x0080 }
            r0[r13] = r1     // Catch:{ all -> 0x0080 }
            r12.put(r4, r0)     // Catch:{ all -> 0x0080 }
            r13 = 1
            goto L_0x004c
        L_0x003f:
            r0 = r12[r13]     // Catch:{ all -> 0x0080 }
            int r0 = r0.intValue()     // Catch:{ all -> 0x0080 }
            int r0 = r0 + r10
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ all -> 0x0080 }
            r12[r13] = r0     // Catch:{ all -> 0x0080 }
        L_0x004c:
            if (r13 != 0) goto L_0x0056
        L_0x004e:
            boolean r12 = r11.k     // Catch:{ all -> 0x0080 }
            if (r12 != 0) goto L_0x0077
            int r12 = r11.m     // Catch:{ all -> 0x0080 }
            if (r12 != 0) goto L_0x0077
        L_0x0056:
            com.google.android.gms.common.stats.e.zzamf()     // Catch:{ all -> 0x0080 }
            android.content.Context r0 = r11.j     // Catch:{ all -> 0x0080 }
            android.os.PowerManager$WakeLock r12 = r11.d     // Catch:{ all -> 0x0080 }
            java.lang.String r1 = com.google.android.gms.common.stats.c.zza(r12, r4)     // Catch:{ all -> 0x0080 }
            r2 = 7
            java.lang.String r3 = r11.g     // Catch:{ all -> 0x0080 }
            r5 = 0
            int r6 = r11.f     // Catch:{ all -> 0x0080 }
            android.os.WorkSource r12 = r11.e     // Catch:{ all -> 0x0080 }
            java.util.List r7 = com.google.android.gms.common.util.s.zzb(r12)     // Catch:{ all -> 0x0080 }
            r8 = 1000(0x3e8, double:4.94E-321)
            com.google.android.gms.common.stats.e.zza(r0, r1, r2, r3, r4, r5, r6, r7, r8)     // Catch:{ all -> 0x0080 }
            int r12 = r11.m     // Catch:{ all -> 0x0080 }
            int r12 = r12 + r10
            r11.m = r12     // Catch:{ all -> 0x0080 }
        L_0x0077:
            monitor-exit(r11)     // Catch:{ all -> 0x0080 }
            android.os.PowerManager$WakeLock r12 = r11.d
            r0 = 1000(0x3e8, double:4.94E-321)
            r12.acquire(r0)
            return
        L_0x0080:
            r12 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x0080 }
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.on.acquire(long):void");
    }

    public final boolean isHeld() {
        return this.d.isHeld();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0032, code lost:
        if (r1 == false) goto L_0x0034;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003a, code lost:
        if (r9.m == 1) goto L_0x003c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003c, code lost:
        com.google.android.gms.common.stats.e.zzamf();
        com.google.android.gms.common.stats.e.zza(r9.j, com.google.android.gms.common.stats.c.zza(r9.d, r4), 8, r9.g, r4, null, r9.f, com.google.android.gms.common.util.s.zzb(r9.e));
        r9.m--;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void release() {
        /*
            r9 = this;
            java.lang.String r4 = r9.a()
            monitor-enter(r9)
            boolean r0 = r9.k     // Catch:{ all -> 0x0063 }
            r8 = 1
            if (r0 == 0) goto L_0x0034
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r9.l     // Catch:{ all -> 0x0063 }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x0063 }
            java.lang.Integer[] r0 = (java.lang.Integer[]) r0     // Catch:{ all -> 0x0063 }
            r1 = 0
            if (r0 != 0) goto L_0x0016
            goto L_0x0032
        L_0x0016:
            r2 = r0[r1]     // Catch:{ all -> 0x0063 }
            int r2 = r2.intValue()     // Catch:{ all -> 0x0063 }
            if (r2 != r8) goto L_0x0025
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r9.l     // Catch:{ all -> 0x0063 }
            r0.remove(r4)     // Catch:{ all -> 0x0063 }
            r1 = 1
            goto L_0x0032
        L_0x0025:
            r2 = r0[r1]     // Catch:{ all -> 0x0063 }
            int r2 = r2.intValue()     // Catch:{ all -> 0x0063 }
            int r2 = r2 - r8
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ all -> 0x0063 }
            r0[r1] = r2     // Catch:{ all -> 0x0063 }
        L_0x0032:
            if (r1 != 0) goto L_0x003c
        L_0x0034:
            boolean r0 = r9.k     // Catch:{ all -> 0x0063 }
            if (r0 != 0) goto L_0x005c
            int r0 = r9.m     // Catch:{ all -> 0x0063 }
            if (r0 != r8) goto L_0x005c
        L_0x003c:
            com.google.android.gms.common.stats.e.zzamf()     // Catch:{ all -> 0x0063 }
            android.content.Context r0 = r9.j     // Catch:{ all -> 0x0063 }
            android.os.PowerManager$WakeLock r1 = r9.d     // Catch:{ all -> 0x0063 }
            java.lang.String r1 = com.google.android.gms.common.stats.c.zza(r1, r4)     // Catch:{ all -> 0x0063 }
            r2 = 8
            java.lang.String r3 = r9.g     // Catch:{ all -> 0x0063 }
            r5 = 0
            int r6 = r9.f     // Catch:{ all -> 0x0063 }
            android.os.WorkSource r7 = r9.e     // Catch:{ all -> 0x0063 }
            java.util.List r7 = com.google.android.gms.common.util.s.zzb(r7)     // Catch:{ all -> 0x0063 }
            com.google.android.gms.common.stats.e.zza(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch:{ all -> 0x0063 }
            int r0 = r9.m     // Catch:{ all -> 0x0063 }
            int r0 = r0 - r8
            r9.m = r0     // Catch:{ all -> 0x0063 }
        L_0x005c:
            monitor-exit(r9)     // Catch:{ all -> 0x0063 }
            android.os.PowerManager$WakeLock r0 = r9.d     // Catch:{ RuntimeException -> 0x0062 }
            r0.release()     // Catch:{ RuntimeException -> 0x0062 }
        L_0x0062:
            return
        L_0x0063:
            r0 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x0063 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.on.release():void");
    }

    public final void setReferenceCounted(boolean z) {
        this.d.setReferenceCounted(false);
        this.k = false;
    }
}
