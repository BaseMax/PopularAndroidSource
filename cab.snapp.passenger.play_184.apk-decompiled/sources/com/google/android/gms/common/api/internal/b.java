package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public final class b implements ba {

    /* renamed from: a  reason: collision with root package name */
    final Map<a.d<?>, dh<?>> f2784a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final Map<a.d<?>, dh<?>> f2785b = new HashMap();
    final z c;
    final Lock d;
    final Condition e;
    final boolean f;
    boolean g;
    Map<cp<?>, ConnectionResult> h;
    Map<cp<?>, ConnectionResult> i;
    ConnectionResult j;
    private final Map<a<?>, Boolean> k;
    private final al l;
    private final Looper m;
    private final j n;
    private final bl o;
    private final boolean p;
    private final Queue<cu<?, ?>> q = new LinkedList();
    private d r;

    public b(Context context, Lock lock, Looper looper, j jVar, Map<a.d<?>, a.f> map, bl blVar, Map<a<?>, Boolean> map2, a.b<? extends ob, oc> bVar, ArrayList<db> arrayList, z zVar, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        this.d = lock;
        this.m = looper;
        this.e = lock.newCondition();
        this.n = jVar;
        this.c = zVar;
        this.k = map2;
        this.o = blVar;
        this.p = z;
        HashMap hashMap = new HashMap();
        for (a next : map2.keySet()) {
            hashMap.put(next.zzagf(), next);
        }
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            db dbVar = (db) obj;
            hashMap2.put(dbVar.zzfin, dbVar);
        }
        boolean z5 = true;
        boolean z6 = false;
        boolean z7 = true;
        boolean z8 = false;
        for (Map.Entry next2 : map.entrySet()) {
            a aVar = (a) hashMap.get(next2.getKey());
            a.f fVar = (a.f) next2.getValue();
            if (fVar.zzagg()) {
                z3 = z7;
                z4 = !this.k.get(aVar).booleanValue() ? true : z8;
                z2 = true;
            } else {
                z2 = z6;
                z4 = z8;
                z3 = false;
            }
            dh dhVar = r1;
            dh dhVar2 = new dh(context, aVar, looper, fVar, (db) hashMap2.get(aVar), blVar, bVar);
            this.f2784a.put((a.d) next2.getKey(), dhVar);
            if (fVar.zzaay()) {
                this.f2785b.put((a.d) next2.getKey(), dhVar);
            }
            z8 = z4;
            z7 = z3;
            z6 = z2;
        }
        this.f = (!z6 || z7 || z8) ? false : z5;
        this.l = al.zzaiq();
    }

    private final ConnectionResult a(a.d<?> dVar) {
        this.d.lock();
        try {
            dh dhVar = this.f2784a.get(dVar);
            if (this.h != null && dhVar != null) {
                return this.h.get(dhVar.zzagn());
            }
            this.d.unlock();
            return null;
        } finally {
            this.d.unlock();
        }
    }

    private final boolean a() {
        this.d.lock();
        try {
            if (this.g) {
                if (this.p) {
                    for (a.d<?> a2 : this.f2785b.keySet()) {
                        ConnectionResult a3 = a(a2);
                        if (a3 != null) {
                            if (!a3.isSuccess()) {
                            }
                        }
                    }
                    this.d.unlock();
                    return true;
                }
            }
            return false;
        } finally {
            this.d.unlock();
        }
    }

    private final <T extends cu<? extends m, ? extends a.c>> boolean a(T t) {
        a.d zzagf = t.zzagf();
        ConnectionResult a2 = a((a.d<?>) zzagf);
        if (a2 == null || a2.getErrorCode() != 4) {
            return false;
        }
        t.zzu(new Status(4, null, this.l.a((cp<?>) this.f2784a.get(zzagf).zzagn(), System.identityHashCode(this.c))));
        return true;
    }

    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.e.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.zzfkr;
        }
        ConnectionResult connectionResult = this.j;
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
                nanos = this.e.awaitNanos(nanos);
            }
        }
        if (isConnected()) {
            return ConnectionResult.zzfkr;
        }
        ConnectionResult connectionResult = this.j;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    public final void connect() {
        this.d.lock();
        try {
            if (!this.g) {
                this.g = true;
                this.h = null;
                this.i = null;
                this.r = null;
                this.j = null;
                this.l.zzagz();
                this.l.zza((Iterable<? extends e<?>>) this.f2784a.values()).addOnCompleteListener((Executor) new fm(this.m), new c(this, (byte) 0));
            }
        } finally {
            this.d.unlock();
        }
    }

    public final void disconnect() {
        this.d.lock();
        try {
            this.g = false;
            this.h = null;
            this.i = null;
            if (this.r != null) {
                this.r.a();
                this.r = null;
            }
            this.j = null;
            while (!this.q.isEmpty()) {
                cu remove = this.q.remove();
                remove.zza((ck) null);
                remove.cancel();
            }
            this.e.signalAll();
        } finally {
            this.d.unlock();
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public final ConnectionResult getConnectionResult(a<?> aVar) {
        return a(aVar.zzagf());
    }

    public final boolean isConnected() {
        this.d.lock();
        try {
            return this.h != null && this.j == null;
        } finally {
            this.d.unlock();
        }
    }

    public final boolean isConnecting() {
        this.d.lock();
        try {
            return this.h == null && this.g;
        } finally {
            this.d.unlock();
        }
    }

    /* JADX INFO: finally extract failed */
    public final boolean zza(bs bsVar) {
        this.d.lock();
        try {
            if (!this.g || a()) {
                this.d.unlock();
                return false;
            }
            this.l.zzagz();
            this.r = new d(this, bsVar);
            this.l.zza((Iterable<? extends e<?>>) this.f2785b.values()).addOnCompleteListener((Executor) new fm(this.m), this.r);
            this.d.unlock();
            return true;
        } catch (Throwable th) {
            this.d.unlock();
            throw th;
        }
    }

    public final void zzahk() {
    }

    public final <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t) {
        if (this.p && a(t)) {
            return t;
        }
        if (!isConnected()) {
            this.q.add(t);
            return t;
        }
        this.c.e.a(t);
        return this.f2784a.get(t.zzagf()).zza(t);
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zze(T t) {
        a.d zzagf = t.zzagf();
        if (this.p && a(t)) {
            return t;
        }
        this.c.e.a(t);
        return this.f2784a.get(zzagf).zzb(t);
    }

    public final void zzags() {
        this.d.lock();
        try {
            al alVar = this.l;
            alVar.f2764b.incrementAndGet();
            alVar.e.sendMessage(alVar.e.obtainMessage(10));
            if (this.r != null) {
                this.r.a();
                this.r = null;
            }
            if (this.i == null) {
                this.i = new ArrayMap(this.f2785b.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (dh<?> zzagn : this.f2785b.values()) {
                this.i.put(zzagn.zzagn(), connectionResult);
            }
            if (this.h != null) {
                this.h.putAll(this.i);
            }
        } finally {
            this.d.unlock();
        }
    }

    static /* synthetic */ boolean a(b bVar, dh dhVar, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && bVar.k.get(dhVar.zzagl()).booleanValue() && dhVar.zzahp().zzagg() && bVar.n.isUserResolvableError(connectionResult.getErrorCode());
    }

    static /* synthetic */ ConnectionResult a(b bVar) {
        ConnectionResult connectionResult = null;
        ConnectionResult connectionResult2 = null;
        int i2 = 0;
        int i3 = 0;
        for (dh next : bVar.f2784a.values()) {
            a zzagl = next.zzagl();
            ConnectionResult connectionResult3 = bVar.h.get(next.zzagn());
            if (!connectionResult3.isSuccess() && (!bVar.k.get(zzagl).booleanValue() || connectionResult3.hasResolution() || bVar.n.isUserResolvableError(connectionResult3.getErrorCode()))) {
                if (connectionResult3.getErrorCode() != 4 || !bVar.p) {
                    int priority = zzagl.zzagd().getPriority();
                    if (connectionResult == null || i2 > priority) {
                        connectionResult = connectionResult3;
                        i2 = priority;
                    }
                } else {
                    int priority2 = zzagl.zzagd().getPriority();
                    if (connectionResult2 == null || i3 > priority2) {
                        connectionResult2 = connectionResult3;
                        i3 = priority2;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i2 <= i3) ? connectionResult : connectionResult2;
    }

    static /* synthetic */ void b(b bVar) {
        bl blVar = bVar.o;
        if (blVar == null) {
            bVar.c.c = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(blVar.zzakv());
        Map<a<?>, bn> zzakx = bVar.o.zzakx();
        for (a next : zzakx.keySet()) {
            ConnectionResult connectionResult = bVar.getConnectionResult(next);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(zzakx.get(next).zzehs);
            }
        }
        bVar.c.c = hashSet;
    }

    static /* synthetic */ void c(b bVar) {
        while (!bVar.q.isEmpty()) {
            bVar.zze(bVar.q.remove());
        }
        bVar.c.zzj(null);
    }
}
