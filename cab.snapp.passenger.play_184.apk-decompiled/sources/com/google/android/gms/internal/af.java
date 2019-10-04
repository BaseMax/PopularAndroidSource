package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import com.google.android.gms.common.internal.ap;

public final class af implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ad f3052a;

    /* renamed from: b  reason: collision with root package name */
    private volatile bl f3053b;
    private volatile boolean c;

    protected af(ad adVar) {
        this.f3052a = adVar;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:9|10|11|12|13|(1:15)) */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0075, code lost:
        return r0;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x005e */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.bl zzxt() {
        /*
            r6 = this;
            com.google.android.gms.analytics.r.zzve()
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "com.google.android.gms.analytics.service.START"
            r0.<init>(r1)
            android.content.ComponentName r1 = new android.content.ComponentName
            java.lang.String r2 = "com.google.android.gms"
            java.lang.String r3 = "com.google.android.gms.analytics.service.AnalyticsService"
            r1.<init>(r2, r3)
            r0.setComponent(r1)
            com.google.android.gms.internal.ad r1 = r6.f3052a
            com.google.android.gms.internal.z r1 = r1.zzdta
            android.content.Context r1 = r1.getContext()
            java.lang.String r2 = r1.getPackageName()
            java.lang.String r3 = "app_package_name"
            r0.putExtra(r3, r2)
            com.google.android.gms.common.stats.a r2 = com.google.android.gms.common.stats.a.zzamc()
            monitor-enter(r6)
            r3 = 0
            r6.f3053b = r3     // Catch:{ all -> 0x0076 }
            r4 = 1
            r6.c = r4     // Catch:{ all -> 0x0076 }
            com.google.android.gms.internal.ad r4 = r6.f3052a     // Catch:{ all -> 0x0076 }
            com.google.android.gms.internal.af r4 = r4.f3049a     // Catch:{ all -> 0x0076 }
            r5 = 129(0x81, float:1.81E-43)
            boolean r0 = r2.zza(r1, r0, r4, r5)     // Catch:{ all -> 0x0076 }
            com.google.android.gms.internal.ad r1 = r6.f3052a     // Catch:{ all -> 0x0076 }
            java.lang.String r2 = "Bind to service requested"
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r0)     // Catch:{ all -> 0x0076 }
            r1.zza(r2, r4)     // Catch:{ all -> 0x0076 }
            r1 = 0
            if (r0 != 0) goto L_0x004e
            r6.c = r1     // Catch:{ all -> 0x0076 }
            monitor-exit(r6)     // Catch:{ all -> 0x0076 }
            return r3
        L_0x004e:
            com.google.android.gms.internal.bg<java.lang.Long> r0 = com.google.android.gms.internal.bf.zzdxh     // Catch:{ InterruptedException -> 0x005e }
            java.lang.Object r0 = r0.get()     // Catch:{ InterruptedException -> 0x005e }
            java.lang.Long r0 = (java.lang.Long) r0     // Catch:{ InterruptedException -> 0x005e }
            long r4 = r0.longValue()     // Catch:{ InterruptedException -> 0x005e }
            r6.wait(r4)     // Catch:{ InterruptedException -> 0x005e }
            goto L_0x0065
        L_0x005e:
            com.google.android.gms.internal.ad r0 = r6.f3052a     // Catch:{ all -> 0x0076 }
            java.lang.String r2 = "Wait for service connect was interrupted"
            r0.zzdx(r2)     // Catch:{ all -> 0x0076 }
        L_0x0065:
            r6.c = r1     // Catch:{ all -> 0x0076 }
            com.google.android.gms.internal.bl r0 = r6.f3053b     // Catch:{ all -> 0x0076 }
            r6.f3053b = r3     // Catch:{ all -> 0x0076 }
            if (r0 != 0) goto L_0x0074
            com.google.android.gms.internal.ad r1 = r6.f3052a     // Catch:{ all -> 0x0076 }
            java.lang.String r2 = "Successfully bound to service but never got onServiceConnected callback"
            r1.zzdy(r2)     // Catch:{ all -> 0x0076 }
        L_0x0074:
            monitor-exit(r6)     // Catch:{ all -> 0x0076 }
            return r0
        L_0x0076:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0076 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.af.zzxt():com.google.android.gms.internal.bl");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:23|24) */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:10|11|12|(2:(1:15)(3:16|(1:18)(1:19)|20)|21)(1:22)|(2:26|27)(3:28|29|(1:31)(1:32))|33|34|35|36) */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        r2.f3052a.zzdy("Service connect failed to get IAnalyticsService");
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x004a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0084 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onServiceConnected(android.content.ComponentName r3, android.os.IBinder r4) {
        /*
            r2 = this;
            java.lang.String r3 = "AnalyticsServiceConnection.onServiceConnected"
            com.google.android.gms.common.internal.ap.zzge(r3)
            monitor-enter(r2)
            if (r4 != 0) goto L_0x0017
            com.google.android.gms.internal.ad r3 = r2.f3052a     // Catch:{ all -> 0x0014 }
            java.lang.String r4 = "Service connected with null binder"
            r3.zzdy(r4)     // Catch:{ all -> 0x0014 }
            r2.notifyAll()     // Catch:{ all -> 0x008d }
            monitor-exit(r2)     // Catch:{ all -> 0x008d }
            return
        L_0x0014:
            r3 = move-exception
            goto L_0x0089
        L_0x0017:
            r3 = 0
            java.lang.String r0 = r4.getInterfaceDescriptor()     // Catch:{ RemoteException -> 0x004a }
            java.lang.String r1 = "com.google.android.gms.analytics.internal.IAnalyticsService"
            boolean r1 = r1.equals(r0)     // Catch:{ RemoteException -> 0x004a }
            if (r1 == 0) goto L_0x0042
            if (r4 != 0) goto L_0x0027
            goto L_0x003a
        L_0x0027:
            java.lang.String r0 = "com.google.android.gms.analytics.internal.IAnalyticsService"
            android.os.IInterface r0 = r4.queryLocalInterface(r0)     // Catch:{ RemoteException -> 0x004a }
            boolean r1 = r0 instanceof com.google.android.gms.internal.bl     // Catch:{ RemoteException -> 0x004a }
            if (r1 == 0) goto L_0x0034
            com.google.android.gms.internal.bl r0 = (com.google.android.gms.internal.bl) r0     // Catch:{ RemoteException -> 0x004a }
            goto L_0x0039
        L_0x0034:
            com.google.android.gms.internal.bm r0 = new com.google.android.gms.internal.bm     // Catch:{ RemoteException -> 0x004a }
            r0.<init>(r4)     // Catch:{ RemoteException -> 0x004a }
        L_0x0039:
            r3 = r0
        L_0x003a:
            com.google.android.gms.internal.ad r4 = r2.f3052a     // Catch:{ RemoteException -> 0x004a }
            java.lang.String r0 = "Bound to IAnalyticsService interface"
            r4.zzdu(r0)     // Catch:{ RemoteException -> 0x004a }
            goto L_0x0051
        L_0x0042:
            com.google.android.gms.internal.ad r4 = r2.f3052a     // Catch:{ RemoteException -> 0x004a }
            java.lang.String r1 = "Got binder with a wrong descriptor"
            r4.zze(r1, r0)     // Catch:{ RemoteException -> 0x004a }
            goto L_0x0051
        L_0x004a:
            com.google.android.gms.internal.ad r4 = r2.f3052a     // Catch:{ all -> 0x0014 }
            java.lang.String r0 = "Service connect failed to get IAnalyticsService"
            r4.zzdy(r0)     // Catch:{ all -> 0x0014 }
        L_0x0051:
            if (r3 != 0) goto L_0x0066
            com.google.android.gms.common.stats.a.zzamc()     // Catch:{ IllegalArgumentException -> 0x0084 }
            com.google.android.gms.internal.ad r3 = r2.f3052a     // Catch:{ IllegalArgumentException -> 0x0084 }
            com.google.android.gms.internal.z r3 = r3.zzdta     // Catch:{ IllegalArgumentException -> 0x0084 }
            android.content.Context r3 = r3.getContext()     // Catch:{ IllegalArgumentException -> 0x0084 }
            com.google.android.gms.internal.ad r4 = r2.f3052a     // Catch:{ IllegalArgumentException -> 0x0084 }
            com.google.android.gms.internal.af r4 = r4.f3049a     // Catch:{ IllegalArgumentException -> 0x0084 }
            r3.unbindService(r4)     // Catch:{ IllegalArgumentException -> 0x0084 }
            goto L_0x0084
        L_0x0066:
            boolean r4 = r2.c     // Catch:{ all -> 0x0014 }
            if (r4 != 0) goto L_0x0082
            com.google.android.gms.internal.ad r4 = r2.f3052a     // Catch:{ all -> 0x0014 }
            java.lang.String r0 = "onServiceConnected received after the timeout limit"
            r4.zzdx(r0)     // Catch:{ all -> 0x0014 }
            com.google.android.gms.internal.ad r4 = r2.f3052a     // Catch:{ all -> 0x0014 }
            com.google.android.gms.internal.z r4 = r4.zzdta     // Catch:{ all -> 0x0014 }
            com.google.android.gms.analytics.r r4 = r4.zzwv()     // Catch:{ all -> 0x0014 }
            com.google.android.gms.internal.ag r0 = new com.google.android.gms.internal.ag     // Catch:{ all -> 0x0014 }
            r0.<init>(r2, r3)     // Catch:{ all -> 0x0014 }
            r4.zzc(r0)     // Catch:{ all -> 0x0014 }
            goto L_0x0084
        L_0x0082:
            r2.f3053b = r3     // Catch:{ all -> 0x0014 }
        L_0x0084:
            r2.notifyAll()     // Catch:{ all -> 0x008d }
            monitor-exit(r2)     // Catch:{ all -> 0x008d }
            return
        L_0x0089:
            r2.notifyAll()     // Catch:{ all -> 0x008d }
            throw r3     // Catch:{ all -> 0x008d }
        L_0x008d:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x008d }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.af.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        ap.zzge("AnalyticsServiceConnection.onServiceDisconnected");
        this.f3052a.zzdta.zzwv().zzc(new ah(this, componentName));
    }
}
