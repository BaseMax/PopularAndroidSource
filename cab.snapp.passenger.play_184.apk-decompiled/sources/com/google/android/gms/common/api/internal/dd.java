package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

final class dd implements ba {

    /* renamed from: a  reason: collision with root package name */
    final ah f2846a;

    /* renamed from: b  reason: collision with root package name */
    final ah f2847b;
    Bundle c;
    ConnectionResult d = null;
    ConnectionResult e = null;
    boolean f = false;
    final Lock g;
    private final Context h;
    private final z i;
    private final Looper j;
    private final Map<a.d<?>, ah> k;
    private final Set<bs> l = Collections.newSetFromMap(new WeakHashMap());
    private final a.f m;
    private int n = 0;

    private dd(Context context, z zVar, Lock lock, Looper looper, j jVar, Map<a.d<?>, a.f> map, Map<a.d<?>, a.f> map2, bl blVar, a.b<? extends ob, oc> bVar, a.f fVar, ArrayList<db> arrayList, ArrayList<db> arrayList2, Map<a<?>, Boolean> map3, Map<a<?>, Boolean> map4) {
        this.h = context;
        this.i = zVar;
        this.g = lock;
        this.j = looper;
        this.m = fVar;
        Context context2 = context;
        Lock lock2 = lock;
        Looper looper2 = looper;
        j jVar2 = jVar;
        ah ahVar = r2;
        ah ahVar2 = new ah(context2, this.i, lock2, looper2, jVar2, map2, null, map4, null, arrayList2, new df(this, (byte) 0));
        this.f2846a = ahVar;
        ah ahVar3 = new ah(context2, this.i, lock2, looper2, jVar2, map, blVar, map3, bVar, arrayList, new dg(this, (byte) 0));
        this.f2847b = ahVar3;
        ArrayMap arrayMap = new ArrayMap();
        for (a.d<?> put : map2.keySet()) {
            arrayMap.put(put, this.f2846a);
        }
        for (a.d<?> put2 : map.keySet()) {
            arrayMap.put(put2, this.f2847b);
        }
        this.k = Collections.unmodifiableMap(arrayMap);
    }

    private final void a() {
        for (bs zzabi : this.l) {
            zzabi.zzabi();
        }
        this.l.clear();
    }

    private final void a(ConnectionResult connectionResult) {
        int i2 = this.n;
        if (i2 != 1) {
            if (i2 != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.n = 0;
            }
            this.i.zzc(connectionResult);
        }
        a();
        this.n = 0;
    }

    private final boolean a(cu<? extends m, ? extends a.c> cuVar) {
        a.d<? extends a.c> zzagf = cuVar.zzagf();
        ap.checkArgument(this.k.containsKey(zzagf), "GoogleApiClient is not configured to use the API required for this call.");
        return this.k.get(zzagf).equals(this.f2847b);
    }

    private final boolean b() {
        ConnectionResult connectionResult = this.e;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    private static boolean b(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    private final PendingIntent c() {
        if (this.m == null) {
            return null;
        }
        return PendingIntent.getActivity(this.h, System.identityHashCode(this.i), this.m.getSignInIntent(), 134217728);
    }

    public static dd zza(Context context, z zVar, Lock lock, Looper looper, j jVar, Map<a.d<?>, a.f> map, bl blVar, Map<a<?>, Boolean> map2, a.b<? extends ob, oc> bVar, ArrayList<db> arrayList) {
        Map<a<?>, Boolean> map3 = map2;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        a.f fVar = null;
        for (Map.Entry next : map.entrySet()) {
            a.f fVar2 = (a.f) next.getValue();
            if (fVar2.zzabj()) {
                fVar = fVar2;
            }
            boolean zzaay = fVar2.zzaay();
            a.d dVar = (a.d) next.getKey();
            if (zzaay) {
                arrayMap.put(dVar, fVar2);
            } else {
                arrayMap2.put(dVar, fVar2);
            }
        }
        ap.zza(!arrayMap.isEmpty(), (Object) "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (a next2 : map2.keySet()) {
            a.d<?> zzagf = next2.zzagf();
            if (arrayMap.containsKey(zzagf)) {
                arrayMap3.put(next2, map3.get(next2));
            } else if (arrayMap2.containsKey(zzagf)) {
                arrayMap4.put(next2, map3.get(next2));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = arrayList;
        int size = arrayList4.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList4.get(i2);
            i2++;
            db dbVar = (db) obj;
            if (arrayMap3.containsKey(dbVar.zzfin)) {
                arrayList2.add(dbVar);
            } else if (arrayMap4.containsKey(dbVar.zzfin)) {
                arrayList3.add(dbVar);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        dd ddVar = new dd(context, zVar, lock, looper, jVar, arrayMap, arrayMap2, blVar, bVar, fVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
        return ddVar;
    }

    public final ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    public final ConnectionResult blockingConnect(long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public final void connect() {
        this.n = 2;
        this.f = false;
        this.e = null;
        this.d = null;
        this.f2846a.connect();
        this.f2847b.connect();
    }

    public final void disconnect() {
        this.e = null;
        this.d = null;
        this.n = 0;
        this.f2846a.disconnect();
        this.f2847b.disconnect();
        a();
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("authClient").println(":");
        this.f2847b.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append(str).append("anonClient").println(":");
        this.f2846a.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    public final ConnectionResult getConnectionResult(a<?> aVar) {
        return this.k.get(aVar.zzagf()).equals(this.f2847b) ? b() ? new ConnectionResult(4, c()) : this.f2847b.getConnectionResult(aVar) : this.f2846a.getConnectionResult(aVar);
    }

    public final boolean isConnected() {
        this.g.lock();
        try {
            boolean z = true;
            if (!this.f2846a.isConnected() || (!this.f2847b.isConnected() && !b() && this.n != 1)) {
                z = false;
            }
            return z;
        } finally {
            this.g.unlock();
        }
    }

    public final boolean isConnecting() {
        this.g.lock();
        try {
            return this.n == 2;
        } finally {
            this.g.unlock();
        }
    }

    public final boolean zza(bs bsVar) {
        this.g.lock();
        try {
            if ((isConnecting() || isConnected()) && !this.f2847b.isConnected()) {
                this.l.add(bsVar);
                if (this.n == 0) {
                    this.n = 1;
                }
                this.e = null;
                this.f2847b.connect();
                return true;
            }
            this.g.unlock();
            return false;
        } finally {
            this.g.unlock();
        }
    }

    public final void zzags() {
        this.g.lock();
        try {
            boolean isConnecting = isConnecting();
            this.f2847b.disconnect();
            this.e = new ConnectionResult(4);
            if (isConnecting) {
                new Handler(this.j).post(new de(this));
            } else {
                a();
            }
        } finally {
            this.g.unlock();
        }
    }

    public final void zzahk() {
        this.f2846a.zzahk();
        this.f2847b.zzahk();
    }

    public final <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t) {
        if (!a((cu<? extends m, ? extends a.c>) t)) {
            return this.f2846a.zzd(t);
        }
        if (!b()) {
            return this.f2847b.zzd(t);
        }
        t.zzu(new Status(4, null, c()));
        return t;
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zze(T t) {
        if (!a((cu<? extends m, ? extends a.c>) t)) {
            return this.f2846a.zze(t);
        }
        if (!b()) {
            return this.f2847b.zze(t);
        }
        t.zzu(new Status(4, null, c()));
        return t;
    }

    static /* synthetic */ void a(dd ddVar) {
        if (b(ddVar.d)) {
            if (b(ddVar.e) || ddVar.b()) {
                int i2 = ddVar.n;
                if (i2 != 1) {
                    if (i2 != 2) {
                        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                        ddVar.n = 0;
                        return;
                    }
                    ddVar.i.zzj(ddVar.c);
                }
                ddVar.a();
                ddVar.n = 0;
                return;
            }
            ConnectionResult connectionResult = ddVar.e;
            if (connectionResult != null) {
                if (ddVar.n == 1) {
                    ddVar.a();
                    return;
                }
                ddVar.a(connectionResult);
                ddVar.f2846a.disconnect();
            }
        } else if (ddVar.d == null || !b(ddVar.e)) {
            ConnectionResult connectionResult2 = ddVar.d;
            if (!(connectionResult2 == null || ddVar.e == null)) {
                if (ddVar.f2847b.l < ddVar.f2846a.l) {
                    connectionResult2 = ddVar.e;
                }
                ddVar.a(connectionResult2);
            }
        } else {
            ddVar.f2847b.disconnect();
            ddVar.a(ddVar.d);
        }
    }

    static /* synthetic */ void a(dd ddVar, int i2, boolean z) {
        ddVar.i.zzf(i2, z);
        ddVar.e = null;
        ddVar.d = null;
    }
}
