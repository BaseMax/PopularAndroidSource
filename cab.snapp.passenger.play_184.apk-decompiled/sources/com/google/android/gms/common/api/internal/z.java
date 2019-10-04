package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.eo;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

public final class z extends f implements bb {

    /* renamed from: a  reason: collision with root package name */
    final Queue<cu<?, ?>> f2883a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    final Map<a.d<?>, a.f> f2884b;
    Set<Scope> c = new HashSet();
    Set<ce> d = null;
    final ch e;
    private final Lock f;
    private boolean g;
    private final com.google.android.gms.common.internal.f h;
    private ba i = null;
    private final int j;
    /* access modifiers changed from: private */
    public final Context k;
    private final Looper l;
    private volatile boolean m;
    private long n = 120000;
    private long o = 5000;
    private final ae p;
    private final b q;
    private aw r;
    private bl s;
    private Map<a<?>, Boolean> t;
    private a.b<? extends ob, oc> u;
    private final bk v = new bk();
    private final ArrayList<db> w;
    private Integer x = null;
    private final g y = new aa(this);

    public z(Context context, Lock lock, Looper looper, bl blVar, b bVar, a.b<? extends ob, oc> bVar2, Map<a<?>, Boolean> map, List<f.b> list, List<f.c> list2, Map<a.d<?>, a.f> map2, int i2, int i3, ArrayList<db> arrayList, boolean z) {
        this.k = context;
        this.f = lock;
        this.g = false;
        this.h = new com.google.android.gms.common.internal.f(looper, this.y);
        this.l = looper;
        this.p = new ae(this, looper);
        this.q = bVar;
        this.j = i2;
        if (this.j >= 0) {
            this.x = Integer.valueOf(i3);
        }
        this.t = map;
        this.f2884b = map2;
        this.w = arrayList;
        this.e = new ch(this.f2884b);
        for (f.b registerConnectionCallbacks : list) {
            this.h.registerConnectionCallbacks(registerConnectionCallbacks);
        }
        for (f.c registerConnectionFailedListener : list2) {
            this.h.registerConnectionFailedListener(registerConnectionFailedListener);
        }
        this.s = blVar;
        this.u = bVar2;
    }

    private final void a(int i2) {
        Integer num = this.x;
        if (num == null) {
            this.x = Integer.valueOf(i2);
        } else if (num.intValue() != i2) {
            String b2 = b(i2);
            String b3 = b(this.x.intValue());
            StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 51 + String.valueOf(b3).length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(b2);
            sb.append(". Mode was already set to ");
            sb.append(b3);
            throw new IllegalStateException(sb.toString());
        }
        if (this.i == null) {
            boolean z = false;
            boolean z2 = false;
            for (a.f next : this.f2884b.values()) {
                if (next.zzaay()) {
                    z = true;
                }
                if (next.zzabj()) {
                    z2 = true;
                }
            }
            int intValue = this.x.intValue();
            if (intValue != 1) {
                if (intValue == 2) {
                    if (z) {
                        if (this.g) {
                            b bVar = new b(this.k, this.f, this.l, this.q, this.f2884b, this.s, this.t, this.u, this.w, this, true);
                            this.i = bVar;
                            return;
                        }
                        this.i = dd.zza(this.k, this, this.f, this.l, this.q, this.f2884b, this.s, this.t, this.u, this.w);
                        return;
                    }
                }
            } else if (!z) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            } else if (z2) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            if (!this.g || z2) {
                ah ahVar = new ah(this.k, this, this.f, this.l, this.q, this.f2884b, this.s, this.t, this.u, this.w, this);
                this.i = ahVar;
                return;
            }
            b bVar2 = new b(this.k, this.f, this.l, this.q, this.f2884b, this.s, this.t, this.u, this.w, this, false);
            this.i = bVar2;
        }
    }

    /* access modifiers changed from: private */
    public final void a(f fVar, bz bzVar, boolean z) {
        eo.zzgbv.zzd(fVar).setResultCallback(new ad(this, bzVar, z, fVar));
    }

    private static String b(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    private final void e() {
        this.h.zzalj();
        this.i.connect();
    }

    public static int zza(Iterable<a.f> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (a.f next : iterable) {
            if (next.zzaay()) {
                z2 = true;
            }
            if (next.zzabj()) {
                z3 = true;
            }
        }
        if (z2) {
            return (!z3 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        if (!this.m) {
            return false;
        }
        this.m = false;
        this.p.removeMessages(2);
        this.p.removeMessages(1);
        aw awVar = this.r;
        if (awVar != null) {
            awVar.unregister();
            this.r = null;
        }
        return true;
    }

    public final ConnectionResult blockingConnect() {
        boolean z = true;
        ap.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "blockingConnect must not be called on the UI thread");
        this.f.lock();
        try {
            if (this.j >= 0) {
                if (this.x == null) {
                    z = false;
                }
                ap.zza(z, (Object) "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.x == null) {
                this.x = Integer.valueOf(zza(this.f2884b.values(), false));
            } else if (this.x.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            a(this.x.intValue());
            this.h.zzalj();
            return this.i.blockingConnect();
        } finally {
            this.f.unlock();
        }
    }

    public final ConnectionResult blockingConnect(long j2, TimeUnit timeUnit) {
        ap.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "blockingConnect must not be called on the UI thread");
        ap.checkNotNull(timeUnit, "TimeUnit must not be null");
        this.f.lock();
        try {
            if (this.x == null) {
                this.x = Integer.valueOf(zza(this.f2884b.values(), false));
            } else if (this.x.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            a(this.x.intValue());
            this.h.zzalj();
            return this.i.blockingConnect(j2, timeUnit);
        } finally {
            this.f.unlock();
        }
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: package-private */
    public final boolean c() {
        this.f.lock();
        try {
            if (this.d == null) {
                this.f.unlock();
                return false;
            }
            boolean z = !this.d.isEmpty();
            this.f.unlock();
            return z;
        } catch (Throwable th) {
            this.f.unlock();
            throw th;
        }
    }

    public final h<Status> clearDefaultAccountAndReconnect() {
        ap.zza(isConnected(), (Object) "GoogleApiClient is not connected yet.");
        ap.zza(this.x.intValue() != 2, (Object) "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        bz bzVar = new bz((f) this);
        if (this.f2884b.containsKey(eo.zzebf)) {
            a((f) this, bzVar, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            f build = new f.a(this.k).addApi(eo.API).addConnectionCallbacks(new ab(this, atomicReference, bzVar)).addOnConnectionFailedListener(new ac(bzVar)).setHandler(this.p).build();
            atomicReference.set(build);
            build.connect();
        }
        return bzVar;
    }

    public final void connect() {
        this.f.lock();
        try {
            boolean z = false;
            if (this.j >= 0) {
                if (this.x != null) {
                    z = true;
                }
                ap.zza(z, (Object) "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.x == null) {
                this.x = Integer.valueOf(zza(this.f2884b.values(), false));
            } else if (this.x.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.x.intValue());
        } finally {
            this.f.unlock();
        }
    }

    public final void connect(int i2) {
        this.f.lock();
        boolean z = true;
        if (!(i2 == 3 || i2 == 1 || i2 == 2)) {
            z = false;
        }
        try {
            StringBuilder sb = new StringBuilder(33);
            sb.append("Illegal sign-in mode: ");
            sb.append(i2);
            ap.checkArgument(z, sb.toString());
            a(i2);
            e();
        } finally {
            this.f.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public final String d() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    public final void disconnect() {
        this.f.lock();
        try {
            this.e.release();
            if (this.i != null) {
                this.i.disconnect();
            }
            this.v.release();
            for (cu cuVar : this.f2883a) {
                cuVar.zza((ck) null);
                cuVar.cancel();
            }
            this.f2883a.clear();
            if (this.i != null) {
                b();
                this.h.zzali();
            }
        } finally {
            this.f.unlock();
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("mContext=").println(this.k);
        printWriter.append(str).append("mResuming=").print(this.m);
        printWriter.append(" mWorkQueue.size()=").print(this.f2883a.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.e.f2817a.size());
        ba baVar = this.i;
        if (baVar != null) {
            baVar.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final ConnectionResult getConnectionResult(a<?> aVar) {
        ConnectionResult connectionResult;
        this.f.lock();
        try {
            if (!isConnected()) {
                if (!this.m) {
                    throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
                }
            }
            if (this.f2884b.containsKey(aVar.zzagf())) {
                ConnectionResult connectionResult2 = this.i.getConnectionResult(aVar);
                if (connectionResult2 == null) {
                    if (this.m) {
                        connectionResult = ConnectionResult.zzfkr;
                    } else {
                        d();
                        Log.wtf("GoogleApiClientImpl", String.valueOf(aVar.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                        connectionResult = new ConnectionResult(8, null);
                    }
                    return connectionResult;
                }
                this.f.unlock();
                return connectionResult2;
            }
            throw new IllegalArgumentException(String.valueOf(aVar.getName()).concat(" was never registered with GoogleApiClient"));
        } finally {
            this.f.unlock();
        }
    }

    public final Context getContext() {
        return this.k;
    }

    public final Looper getLooper() {
        return this.l;
    }

    public final boolean hasConnectedApi(a<?> aVar) {
        if (!isConnected()) {
            return false;
        }
        a.f fVar = this.f2884b.get(aVar.zzagf());
        return fVar != null && fVar.isConnected();
    }

    public final boolean isConnected() {
        ba baVar = this.i;
        return baVar != null && baVar.isConnected();
    }

    public final boolean isConnecting() {
        ba baVar = this.i;
        return baVar != null && baVar.isConnecting();
    }

    public final boolean isConnectionCallbacksRegistered(f.b bVar) {
        return this.h.isConnectionCallbacksRegistered(bVar);
    }

    public final boolean isConnectionFailedListenerRegistered(f.c cVar) {
        return this.h.isConnectionFailedListenerRegistered(cVar);
    }

    public final void reconnect() {
        disconnect();
        connect();
    }

    public final void registerConnectionCallbacks(f.b bVar) {
        this.h.registerConnectionCallbacks(bVar);
    }

    public final void registerConnectionFailedListener(f.c cVar) {
        this.h.registerConnectionFailedListener(cVar);
    }

    public final void stopAutoManage(FragmentActivity fragmentActivity) {
        bc bcVar = new bc(fragmentActivity);
        if (this.j >= 0) {
            cq.zza(bcVar).zzbr(this.j);
            return;
        }
        throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
    }

    public final void unregisterConnectionCallbacks(f.b bVar) {
        this.h.unregisterConnectionCallbacks(bVar);
    }

    public final void unregisterConnectionFailedListener(f.c cVar) {
        this.h.unregisterConnectionFailedListener(cVar);
    }

    public final <C extends a.f> C zza(a.d<C> dVar) {
        C c2 = (a.f) this.f2884b.get(dVar);
        ap.checkNotNull(c2, "Appropriate Api was not requested.");
        return c2;
    }

    public final void zza(ce ceVar) {
        this.f.lock();
        try {
            if (this.d == null) {
                this.d = new HashSet();
            }
            this.d.add(ceVar);
        } finally {
            this.f.unlock();
        }
    }

    public final boolean zza(a<?> aVar) {
        return this.f2884b.containsKey(aVar.zzagf());
    }

    public final boolean zza(bs bsVar) {
        ba baVar = this.i;
        return baVar != null && baVar.zza(bsVar);
    }

    public final void zzags() {
        ba baVar = this.i;
        if (baVar != null) {
            baVar.zzags();
        }
    }

    public final void zzb(ce ceVar) {
        String str;
        Exception exc;
        this.f.lock();
        try {
            if (this.d == null) {
                str = "Attempted to remove pending transform when no transforms are registered.";
                exc = new Exception();
            } else if (!this.d.remove(ceVar)) {
                str = "Failed to remove pending transform - this may lead to memory leaks!";
                exc = new Exception();
            } else {
                if (!c()) {
                    this.i.zzahk();
                }
            }
            Log.wtf("GoogleApiClientImpl", str, exc);
        } finally {
            this.f.unlock();
        }
    }

    public final void zzc(ConnectionResult connectionResult) {
        if (!j.zze(this.k, connectionResult.getErrorCode())) {
            b();
        }
        if (!this.m) {
            this.h.zzk(connectionResult);
            this.h.zzali();
        }
    }

    public final <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t2) {
        ap.checkArgument(t2.zzagf() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.f2884b.containsKey(t2.zzagf());
        String name = t2.zzagl() != null ? t2.zzagl().getName() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(name);
        sb.append(" required for this call.");
        ap.checkArgument(containsKey, sb.toString());
        this.f.lock();
        try {
            if (this.i == null) {
                this.f2883a.add(t2);
            } else {
                t2 = this.i.zzd(t2);
            }
            return t2;
        } finally {
            this.f.unlock();
        }
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zze(T t2) {
        ap.checkArgument(t2.zzagf() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.f2884b.containsKey(t2.zzagf());
        String name = t2.zzagl() != null ? t2.zzagl().getName() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(name);
        sb.append(" required for this call.");
        ap.checkArgument(containsKey, sb.toString());
        this.f.lock();
        try {
            if (this.i != null) {
                if (this.m) {
                    this.f2883a.add(t2);
                    while (!this.f2883a.isEmpty()) {
                        cu remove = this.f2883a.remove();
                        this.e.a(remove);
                        remove.zzu(Status.zzfnk);
                    }
                } else {
                    t2 = this.i.zze(t2);
                }
                return t2;
            }
            throw new IllegalStateException("GoogleApiClient is not connected yet.");
        } finally {
            this.f.unlock();
        }
    }

    public final void zzf(int i2, boolean z) {
        if (i2 == 1 && !z && !this.m) {
            this.m = true;
            if (this.r == null) {
                this.r = b.zza(this.k.getApplicationContext(), (ax) new af(this));
            }
            ae aeVar = this.p;
            aeVar.sendMessageDelayed(aeVar.obtainMessage(1), this.n);
            ae aeVar2 = this.p;
            aeVar2.sendMessageDelayed(aeVar2.obtainMessage(2), this.o);
        }
        this.e.zzaju();
        this.h.zzcg(i2);
        this.h.zzali();
        if (i2 == 2) {
            e();
        }
    }

    public final void zzj(Bundle bundle) {
        while (!this.f2883a.isEmpty()) {
            zze(this.f2883a.remove());
        }
        this.h.zzk(bundle);
    }

    public final <L> bg<L> zzt(L l2) {
        this.f.lock();
        try {
            return this.v.zza(l2, this.l, "NO_TYPE");
        } finally {
            this.f.unlock();
        }
    }

    static /* synthetic */ void a(z zVar) {
        zVar.f.lock();
        try {
            if (zVar.m) {
                zVar.e();
            }
        } finally {
            zVar.f.unlock();
        }
    }

    static /* synthetic */ void b(z zVar) {
        zVar.f.lock();
        try {
            if (zVar.b()) {
                zVar.e();
            }
        } finally {
            zVar.f.unlock();
        }
    }
}
