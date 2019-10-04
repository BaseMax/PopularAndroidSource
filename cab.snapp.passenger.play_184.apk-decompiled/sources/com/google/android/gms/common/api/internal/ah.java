package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public final class ah implements ba, dc {

    /* renamed from: a  reason: collision with root package name */
    final Lock f2758a;

    /* renamed from: b  reason: collision with root package name */
    final Condition f2759b;
    final Context c;
    final j d;
    final aj e;
    final Map<a.d<?>, a.f> f;
    final Map<a.d<?>, ConnectionResult> g = new HashMap();
    bl h;
    Map<a<?>, Boolean> i;
    a.b<? extends ob, oc> j;
    volatile ag k;
    int l;
    final z m;
    final bb n;
    private ConnectionResult o = null;

    public ah(Context context, z zVar, Lock lock, Looper looper, j jVar, Map<a.d<?>, a.f> map, bl blVar, Map<a<?>, Boolean> map2, a.b<? extends ob, oc> bVar, ArrayList<db> arrayList, bb bbVar) {
        this.c = context;
        this.f2758a = lock;
        this.d = jVar;
        this.f = map;
        this.h = blVar;
        this.i = map2;
        this.j = bVar;
        this.m = zVar;
        this.n = bbVar;
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            ((db) obj).zza(this);
        }
        this.e = new aj(this, looper);
        this.f2759b = lock.newCondition();
        this.k = new x(this);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.f2758a.lock();
        try {
            this.m.b();
            this.k = new j(this);
            this.k.begin();
            this.f2759b.signalAll();
        } finally {
            this.f2758a.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(ConnectionResult connectionResult) {
        this.f2758a.lock();
        try {
            this.o = connectionResult;
            this.k = new x(this);
            this.k.begin();
            this.f2759b.signalAll();
        } finally {
            this.f2758a.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(ai aiVar) {
        this.e.sendMessage(this.e.obtainMessage(1, aiVar));
    }

    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.f2759b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.zzfkr;
        }
        ConnectionResult connectionResult = this.o;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    public final ConnectionResult blockingConnect(long j2, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j2);
        while (isConnecting()) {
            if (nanos <= 0) {
                try {
                    disconnect();
                    return new ConnectionResult(14, null);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return new ConnectionResult(15, null);
                }
            } else {
                nanos = this.f2759b.awaitNanos(nanos);
            }
        }
        if (isConnected()) {
            return ConnectionResult.zzfkr;
        }
        ConnectionResult connectionResult = this.o;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    public final void connect() {
        this.k.connect();
    }

    public final void disconnect() {
        if (this.k.disconnect()) {
            this.g.clear();
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append(str).append("mState=").println(this.k);
        for (a next : this.i.keySet()) {
            printWriter.append(str).append(next.getName()).println(":");
            this.f.get(next.zzagf()).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    public final ConnectionResult getConnectionResult(a<?> aVar) {
        a.d<?> zzagf = aVar.zzagf();
        if (this.f.containsKey(zzagf)) {
            if (this.f.get(zzagf).isConnected()) {
                return ConnectionResult.zzfkr;
            }
            if (this.g.containsKey(zzagf)) {
                return this.g.get(zzagf);
            }
        }
        return null;
    }

    public final boolean isConnected() {
        return this.k instanceof j;
    }

    public final boolean isConnecting() {
        return this.k instanceof m;
    }

    public final void onConnected(Bundle bundle) {
        this.f2758a.lock();
        try {
            this.k.onConnected(bundle);
        } finally {
            this.f2758a.unlock();
        }
    }

    public final void onConnectionSuspended(int i2) {
        this.f2758a.lock();
        try {
            this.k.onConnectionSuspended(i2);
        } finally {
            this.f2758a.unlock();
        }
    }

    public final void zza(ConnectionResult connectionResult, a<?> aVar, boolean z) {
        this.f2758a.lock();
        try {
            this.k.zza(connectionResult, aVar, z);
        } finally {
            this.f2758a.unlock();
        }
    }

    public final boolean zza(bs bsVar) {
        return false;
    }

    public final void zzags() {
    }

    public final <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t) {
        t.zzahi();
        return this.k.zzd(t);
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zze(T t) {
        t.zzahi();
        return this.k.zze(t);
    }

    public final void zzahk() {
        if (isConnected()) {
            j jVar = (j) this.k;
            if (jVar.f2861b) {
                jVar.f2861b = false;
                jVar.f2860a.m.e.release();
                jVar.disconnect();
            }
        }
    }
}
