package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;

public final class j implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4070a;

    /* renamed from: b  reason: collision with root package name */
    private final Intent f4071b;
    private final ScheduledExecutorService c;
    private final Queue<f> d;
    private h e;
    private boolean f;

    public j(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0));
    }

    private j(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.d = new ArrayDeque();
        this.f = false;
        this.f4070a = context.getApplicationContext();
        this.f4071b = new Intent(str).setPackage(this.f4070a.getPackageName());
        this.c = scheduledExecutorService;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0070, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x005b */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0063 A[LOOP:1: B:24:0x005b->B:27:0x0063, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final synchronized void a() {
        /*
            r4 = this;
            monitor-enter(r4)
        L_0x0001:
            java.util.Queue<com.google.firebase.iid.f> r0 = r4.d     // Catch:{ all -> 0x0073 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0073 }
            if (r0 != 0) goto L_0x0071
            com.google.firebase.iid.h r0 = r4.e     // Catch:{ all -> 0x0073 }
            if (r0 == 0) goto L_0x0023
            com.google.firebase.iid.h r0 = r4.e     // Catch:{ all -> 0x0073 }
            boolean r0 = r0.isBinderAlive()     // Catch:{ all -> 0x0073 }
            if (r0 == 0) goto L_0x0023
            java.util.Queue<com.google.firebase.iid.f> r0 = r4.d     // Catch:{ all -> 0x0073 }
            java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x0073 }
            com.google.firebase.iid.f r0 = (com.google.firebase.iid.f) r0     // Catch:{ all -> 0x0073 }
            com.google.firebase.iid.h r1 = r4.e     // Catch:{ all -> 0x0073 }
            r1.zza(r0)     // Catch:{ all -> 0x0073 }
            goto L_0x0001
        L_0x0023:
            java.lang.String r0 = "EnhancedIntentService"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x0073 }
            r1 = 1
            if (r0 == 0) goto L_0x0043
            boolean r0 = r4.f     // Catch:{ all -> 0x0073 }
            if (r0 != 0) goto L_0x0033
            r0 = 1
            goto L_0x0034
        L_0x0033:
            r0 = 0
        L_0x0034:
            r2 = 39
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0073 }
            r3.<init>(r2)     // Catch:{ all -> 0x0073 }
            java.lang.String r2 = "binder is dead. start connection? "
            r3.append(r2)     // Catch:{ all -> 0x0073 }
            r3.append(r0)     // Catch:{ all -> 0x0073 }
        L_0x0043:
            boolean r0 = r4.f     // Catch:{ all -> 0x0073 }
            if (r0 != 0) goto L_0x006f
            r4.f = r1     // Catch:{ all -> 0x0073 }
            com.google.android.gms.common.stats.a r0 = com.google.android.gms.common.stats.a.zzamc()     // Catch:{ SecurityException -> 0x005b }
            android.content.Context r1 = r4.f4070a     // Catch:{ SecurityException -> 0x005b }
            android.content.Intent r2 = r4.f4071b     // Catch:{ SecurityException -> 0x005b }
            r3 = 65
            boolean r0 = r0.zza(r1, r2, r4, r3)     // Catch:{ SecurityException -> 0x005b }
            if (r0 == 0) goto L_0x005b
            monitor-exit(r4)
            return
        L_0x005b:
            java.util.Queue<com.google.firebase.iid.f> r0 = r4.d     // Catch:{ all -> 0x0073 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0073 }
            if (r0 != 0) goto L_0x006f
            java.util.Queue<com.google.firebase.iid.f> r0 = r4.d     // Catch:{ all -> 0x0073 }
            java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x0073 }
            com.google.firebase.iid.f r0 = (com.google.firebase.iid.f) r0     // Catch:{ all -> 0x0073 }
            r0.a()     // Catch:{ all -> 0x0073 }
            goto L_0x005b
        L_0x006f:
            monitor-exit(r4)
            return
        L_0x0071:
            monitor-exit(r4)
            return
        L_0x0073:
            r0 = move-exception
            monitor-exit(r4)
            goto L_0x0077
        L_0x0076:
            throw r0
        L_0x0077:
            goto L_0x0076
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.j.a():void");
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.f = false;
            this.e = (h) iBinder;
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(valueOf);
            }
            a();
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(valueOf);
        }
        a();
    }

    public final synchronized void zza(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        this.d.add(new f(intent, pendingResult, this.c));
        a();
    }
}
