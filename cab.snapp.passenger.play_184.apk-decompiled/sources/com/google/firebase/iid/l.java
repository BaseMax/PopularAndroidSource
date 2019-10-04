package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.stats.a;
import java.util.ArrayDeque;
import java.util.Queue;

final class l implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    int f4074a;

    /* renamed from: b  reason: collision with root package name */
    final Messenger f4075b;
    q c;
    final Queue<s<?>> d;
    final SparseArray<s<?>> e;
    final /* synthetic */ k f;

    private l(k kVar) {
        this.f = kVar;
        this.f4074a = 0;
        this.f4075b = new Messenger(new Handler(Looper.getMainLooper(), new m(this)));
        this.d = new ArrayDeque();
        this.e = new SparseArray<>();
    }

    /* synthetic */ l(k kVar, byte b2) {
        this(kVar);
    }

    private final void a(t tVar) {
        for (s a2 : this.d) {
            a2.a(tVar);
        }
        this.d.clear();
        for (int i = 0; i < this.e.size(); i++) {
            this.e.valueAt(i).a(tVar);
        }
        this.e.clear();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(int i) {
        s sVar = this.e.get(i);
        if (sVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i);
            this.e.remove(i);
            sVar.a(new t(3, "Timed out waiting for response"));
            a();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0040, code lost:
        r5 = r5.getData();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x004b, code lost:
        if (r5.getBoolean("unsupported", false) == false) goto L_0x0059;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004d, code lost:
        r1.a(new com.google.firebase.iid.t(4, "Not supported by GmsCore"));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0059, code lost:
        r1.a(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x005c, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(android.os.Message r5) {
        /*
            r4 = this;
            int r0 = r5.arg1
            java.lang.String r1 = "MessengerIpcClient"
            r2 = 3
            boolean r1 = android.util.Log.isLoggable(r1, r2)
            if (r1 == 0) goto L_0x001a
            r1 = 41
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r1)
            java.lang.String r1 = "Received response to request: "
            r2.append(r1)
            r2.append(r0)
        L_0x001a:
            monitor-enter(r4)
            android.util.SparseArray<com.google.firebase.iid.s<?>> r1 = r4.e     // Catch:{ all -> 0x005d }
            java.lang.Object r1 = r1.get(r0)     // Catch:{ all -> 0x005d }
            com.google.firebase.iid.s r1 = (com.google.firebase.iid.s) r1     // Catch:{ all -> 0x005d }
            r2 = 1
            if (r1 != 0) goto L_0x0037
            r5 = 50
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x005d }
            r1.<init>(r5)     // Catch:{ all -> 0x005d }
            java.lang.String r5 = "Received response for unknown request: "
            r1.append(r5)     // Catch:{ all -> 0x005d }
            r1.append(r0)     // Catch:{ all -> 0x005d }
            monitor-exit(r4)     // Catch:{ all -> 0x005d }
            return r2
        L_0x0037:
            android.util.SparseArray<com.google.firebase.iid.s<?>> r3 = r4.e     // Catch:{ all -> 0x005d }
            r3.remove(r0)     // Catch:{ all -> 0x005d }
            r4.a()     // Catch:{ all -> 0x005d }
            monitor-exit(r4)     // Catch:{ all -> 0x005d }
            android.os.Bundle r5 = r5.getData()
            r0 = 0
            java.lang.String r3 = "unsupported"
            boolean r0 = r5.getBoolean(r3, r0)
            if (r0 == 0) goto L_0x0059
            com.google.firebase.iid.t r5 = new com.google.firebase.iid.t
            r0 = 4
            java.lang.String r3 = "Not supported by GmsCore"
            r5.<init>(r0, r3)
            r1.a((com.google.firebase.iid.t) r5)
            goto L_0x005c
        L_0x0059:
            r1.a((android.os.Bundle) r5)
        L_0x005c:
            return r2
        L_0x005d:
            r5 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x005d }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.l.a(android.os.Message):boolean");
    }

    /* access modifiers changed from: package-private */
    public final synchronized void b() {
        if (this.f4074a == 1) {
            a(1, "Timed out while binding");
        }
    }

    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            a(0, "Null service connection");
            return;
        }
        try {
            this.c = new q(iBinder);
            this.f4074a = 2;
            c();
        } catch (RemoteException e2) {
            a(0, e2.getMessage());
        }
    }

    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        a(2, "Service disconnected");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002f, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0083, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized boolean a(com.google.firebase.iid.s r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            int r0 = r5.f4074a     // Catch:{ all -> 0x0084 }
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x0041
            if (r0 == r2) goto L_0x003a
            r3 = 2
            if (r0 == r3) goto L_0x0030
            r6 = 3
            if (r0 == r6) goto L_0x002e
            r6 = 4
            if (r0 != r6) goto L_0x0013
            goto L_0x002e
        L_0x0013:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0084 }
            int r0 = r5.f4074a     // Catch:{ all -> 0x0084 }
            r1 = 26
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0084 }
            r2.<init>(r1)     // Catch:{ all -> 0x0084 }
            java.lang.String r1 = "Unknown state: "
            r2.append(r1)     // Catch:{ all -> 0x0084 }
            r2.append(r0)     // Catch:{ all -> 0x0084 }
            java.lang.String r0 = r2.toString()     // Catch:{ all -> 0x0084 }
            r6.<init>(r0)     // Catch:{ all -> 0x0084 }
            throw r6     // Catch:{ all -> 0x0084 }
        L_0x002e:
            monitor-exit(r5)
            return r1
        L_0x0030:
            java.util.Queue<com.google.firebase.iid.s<?>> r0 = r5.d     // Catch:{ all -> 0x0084 }
            r0.add(r6)     // Catch:{ all -> 0x0084 }
            r5.c()     // Catch:{ all -> 0x0084 }
            monitor-exit(r5)
            return r2
        L_0x003a:
            java.util.Queue<com.google.firebase.iid.s<?>> r0 = r5.d     // Catch:{ all -> 0x0084 }
            r0.add(r6)     // Catch:{ all -> 0x0084 }
            monitor-exit(r5)
            return r2
        L_0x0041:
            java.util.Queue<com.google.firebase.iid.s<?>> r0 = r5.d     // Catch:{ all -> 0x0084 }
            r0.add(r6)     // Catch:{ all -> 0x0084 }
            int r6 = r5.f4074a     // Catch:{ all -> 0x0084 }
            if (r6 != 0) goto L_0x004c
            r6 = 1
            goto L_0x004d
        L_0x004c:
            r6 = 0
        L_0x004d:
            com.google.android.gms.common.internal.ap.checkState(r6)     // Catch:{ all -> 0x0084 }
            r5.f4074a = r2     // Catch:{ all -> 0x0084 }
            android.content.Intent r6 = new android.content.Intent     // Catch:{ all -> 0x0084 }
            java.lang.String r0 = "com.google.android.c2dm.intent.REGISTER"
            r6.<init>(r0)     // Catch:{ all -> 0x0084 }
            java.lang.String r0 = "com.google.android.gms"
            r6.setPackage(r0)     // Catch:{ all -> 0x0084 }
            com.google.android.gms.common.stats.a r0 = com.google.android.gms.common.stats.a.zzamc()     // Catch:{ all -> 0x0084 }
            com.google.firebase.iid.k r3 = r5.f     // Catch:{ all -> 0x0084 }
            android.content.Context r3 = r3.f4072a     // Catch:{ all -> 0x0084 }
            boolean r6 = r0.zza(r3, r6, r5, r2)     // Catch:{ all -> 0x0084 }
            if (r6 != 0) goto L_0x0072
            java.lang.String r6 = "Unable to bind to service"
            r5.a(r1, r6)     // Catch:{ all -> 0x0084 }
            goto L_0x0082
        L_0x0072:
            com.google.firebase.iid.k r6 = r5.f     // Catch:{ all -> 0x0084 }
            java.util.concurrent.ScheduledExecutorService r6 = r6.f4073b     // Catch:{ all -> 0x0084 }
            com.google.firebase.iid.n r0 = new com.google.firebase.iid.n     // Catch:{ all -> 0x0084 }
            r0.<init>(r5)     // Catch:{ all -> 0x0084 }
            r3 = 30
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ all -> 0x0084 }
            r6.schedule(r0, r3, r1)     // Catch:{ all -> 0x0084 }
        L_0x0082:
            monitor-exit(r5)
            return r2
        L_0x0084:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.l.a(com.google.firebase.iid.s):boolean");
    }

    private final void c() {
        this.f.f4073b.execute(new o(this));
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(int i, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Disconnected: ".concat(valueOf);
            } else {
                new String("Disconnected: ");
            }
        }
        int i2 = this.f4074a;
        if (i2 == 0) {
            throw new IllegalStateException();
        } else if (i2 == 1 || i2 == 2) {
            this.f4074a = 4;
            a.zzamc();
            this.f.f4072a.unbindService(this);
            a(new t(i, str));
        } else if (i2 == 3) {
            this.f4074a = 4;
        } else if (i2 != 4) {
            int i3 = this.f4074a;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Unknown state: ");
            sb.append(i3);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a() {
        if (this.f4074a == 2 && this.d.isEmpty() && this.e.size() == 0) {
            this.f4074a = 3;
            a.zzamc();
            this.f.f4072a.unbindService(this);
        }
    }
}
