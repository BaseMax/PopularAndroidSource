package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.f;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public final class f implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final g f2963a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<f.b> f2964b = new ArrayList<>();
    private ArrayList<f.b> c = new ArrayList<>();
    private final ArrayList<f.c> d = new ArrayList<>();
    private volatile boolean e = false;
    private final AtomicInteger f = new AtomicInteger(0);
    private boolean g = false;
    private final Handler h;
    private final Object i = new Object();

    public f(Looper looper, g gVar) {
        this.f2963a = gVar;
        this.h = new Handler(looper, this);
    }

    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            f.b bVar = (f.b) message.obj;
            synchronized (this.i) {
                if (this.e && this.f2963a.isConnected() && this.f2964b.contains(bVar)) {
                    bVar.onConnected(this.f2963a.zzafi());
                }
            }
            return true;
        }
        int i2 = message.what;
        StringBuilder sb = new StringBuilder(45);
        sb.append("Don't know how to handle message: ");
        sb.append(i2);
        Log.wtf("GmsClientEvents", sb.toString(), new Exception());
        return false;
    }

    public final boolean isConnectionCallbacksRegistered(f.b bVar) {
        boolean contains;
        ap.checkNotNull(bVar);
        synchronized (this.i) {
            contains = this.f2964b.contains(bVar);
        }
        return contains;
    }

    public final boolean isConnectionFailedListenerRegistered(f.c cVar) {
        boolean contains;
        ap.checkNotNull(cVar);
        synchronized (this.i) {
            contains = this.d.contains(cVar);
        }
        return contains;
    }

    public final void registerConnectionCallbacks(f.b bVar) {
        ap.checkNotNull(bVar);
        synchronized (this.i) {
            if (this.f2964b.contains(bVar)) {
                String valueOf = String.valueOf(bVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
            } else {
                this.f2964b.add(bVar);
            }
        }
        if (this.f2963a.isConnected()) {
            Handler handler = this.h;
            handler.sendMessage(handler.obtainMessage(1, bVar));
        }
    }

    public final void registerConnectionFailedListener(f.c cVar) {
        ap.checkNotNull(cVar);
        synchronized (this.i) {
            if (this.d.contains(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
            } else {
                this.d.add(cVar);
            }
        }
    }

    public final void unregisterConnectionCallbacks(f.b bVar) {
        ap.checkNotNull(bVar);
        synchronized (this.i) {
            if (!this.f2964b.remove(bVar)) {
                String valueOf = String.valueOf(bVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 52);
                sb.append("unregisterConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
            } else if (this.g) {
                this.c.add(bVar);
            }
        }
    }

    public final void unregisterConnectionFailedListener(f.c cVar) {
        ap.checkNotNull(cVar);
        synchronized (this.i) {
            if (!this.d.remove(cVar)) {
                String valueOf = String.valueOf(cVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
            }
        }
    }

    public final void zzali() {
        this.e = false;
        this.f.incrementAndGet();
    }

    public final void zzalj() {
        this.e = true;
    }

    public final void zzcg(int i2) {
        ap.zza(Looper.myLooper() == this.h.getLooper(), (Object) "onUnintentionalDisconnection must only be called on the Handler thread");
        this.h.removeMessages(1);
        synchronized (this.i) {
            this.g = true;
            ArrayList arrayList = new ArrayList(this.f2964b);
            int i3 = this.f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList2.get(i4);
                i4++;
                f.b bVar = (f.b) obj;
                if (!this.e || this.f.get() != i3) {
                    break;
                } else if (this.f2964b.contains(bVar)) {
                    bVar.onConnectionSuspended(i2);
                }
            }
            this.c.clear();
            this.g = false;
        }
    }

    public final void zzk(Bundle bundle) {
        boolean z = true;
        ap.zza(Looper.myLooper() == this.h.getLooper(), (Object) "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.i) {
            ap.checkState(!this.g);
            this.h.removeMessages(1);
            this.g = true;
            if (this.c.size() != 0) {
                z = false;
            }
            ap.checkState(z);
            ArrayList arrayList = new ArrayList(this.f2964b);
            int i2 = this.f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                f.b bVar = (f.b) obj;
                if (!this.e || !this.f2963a.isConnected() || this.f.get() != i2) {
                    break;
                } else if (!this.c.contains(bVar)) {
                    bVar.onConnected(bundle);
                }
            }
            this.c.clear();
            this.g = false;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0055, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzk(com.google.android.gms.common.ConnectionResult r8) {
        /*
            r7 = this;
            android.os.Looper r0 = android.os.Looper.myLooper()
            android.os.Handler r1 = r7.h
            android.os.Looper r1 = r1.getLooper()
            r2 = 0
            r3 = 1
            if (r0 != r1) goto L_0x0010
            r0 = 1
            goto L_0x0011
        L_0x0010:
            r0 = 0
        L_0x0011:
            java.lang.String r1 = "onConnectionFailure must only be called on the Handler thread"
            com.google.android.gms.common.internal.ap.zza((boolean) r0, (java.lang.Object) r1)
            android.os.Handler r0 = r7.h
            r0.removeMessages(r3)
            java.lang.Object r0 = r7.i
            monitor-enter(r0)
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch:{ all -> 0x0058 }
            java.util.ArrayList<com.google.android.gms.common.api.f$c> r3 = r7.d     // Catch:{ all -> 0x0058 }
            r1.<init>(r3)     // Catch:{ all -> 0x0058 }
            java.util.concurrent.atomic.AtomicInteger r3 = r7.f     // Catch:{ all -> 0x0058 }
            int r3 = r3.get()     // Catch:{ all -> 0x0058 }
            java.util.ArrayList r1 = (java.util.ArrayList) r1     // Catch:{ all -> 0x0058 }
            int r4 = r1.size()     // Catch:{ all -> 0x0058 }
        L_0x0031:
            if (r2 >= r4) goto L_0x0056
            java.lang.Object r5 = r1.get(r2)     // Catch:{ all -> 0x0058 }
            int r2 = r2 + 1
            com.google.android.gms.common.api.f$c r5 = (com.google.android.gms.common.api.f.c) r5     // Catch:{ all -> 0x0058 }
            boolean r6 = r7.e     // Catch:{ all -> 0x0058 }
            if (r6 == 0) goto L_0x0054
            java.util.concurrent.atomic.AtomicInteger r6 = r7.f     // Catch:{ all -> 0x0058 }
            int r6 = r6.get()     // Catch:{ all -> 0x0058 }
            if (r6 == r3) goto L_0x0048
            goto L_0x0054
        L_0x0048:
            java.util.ArrayList<com.google.android.gms.common.api.f$c> r6 = r7.d     // Catch:{ all -> 0x0058 }
            boolean r6 = r6.contains(r5)     // Catch:{ all -> 0x0058 }
            if (r6 == 0) goto L_0x0031
            r5.onConnectionFailed(r8)     // Catch:{ all -> 0x0058 }
            goto L_0x0031
        L_0x0054:
            monitor-exit(r0)     // Catch:{ all -> 0x0058 }
            return
        L_0x0056:
            monitor-exit(r0)     // Catch:{ all -> 0x0058 }
            return
        L_0x0058:
            r8 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0058 }
            goto L_0x005c
        L_0x005b:
            throw r8
        L_0x005c:
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.f.zzk(com.google.android.gms.common.ConnectionResult):void");
    }
}
