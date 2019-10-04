package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public final class m implements ag {

    /* renamed from: a  reason: collision with root package name */
    final ah f2864a;

    /* renamed from: b  reason: collision with root package name */
    final Lock f2865b;
    final Context c;
    final j d;
    ob e;
    boolean f;
    boolean g;
    o h;
    boolean i;
    boolean j;
    final bl k;
    private ConnectionResult l;
    private int m;
    private int n = 0;
    private int o;
    private final Bundle p = new Bundle();
    private final Set<a.d> q = new HashSet();
    private boolean r;
    private final Map<a<?>, Boolean> s;
    private final a.b<? extends ob, oc> t;
    private ArrayList<Future<?>> u = new ArrayList<>();

    public m(ah ahVar, bl blVar, Map<a<?>, Boolean> map, j jVar, a.b<? extends ob, oc> bVar, Lock lock, Context context) {
        this.f2864a = ahVar;
        this.k = blVar;
        this.s = map;
        this.d = jVar;
        this.t = bVar;
        this.f2865b = lock;
        this.c = context;
    }

    private final void a(boolean z) {
        ob obVar = this.e;
        if (obVar != null) {
            if (obVar.isConnected() && z) {
                this.e.zzbdb();
            }
            this.e.disconnect();
            this.h = null;
        }
    }

    private static String b(int i2) {
        return i2 != 0 ? i2 != 1 ? "UNKNOWN" : "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    private final void d() {
        this.f2864a.a();
        ak.zzaip().execute(new n(this));
        ob obVar = this.e;
        if (obVar != null) {
            if (this.i) {
                obVar.zza(this.h, this.j);
            }
            a(false);
        }
        for (a.d<?> dVar : this.f2864a.g.keySet()) {
            this.f2864a.f.get(dVar).disconnect();
        }
        this.f2864a.n.zzj(this.p.isEmpty() ? null : this.p);
    }

    private final void e() {
        ArrayList arrayList = this.u;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((Future) obj).cancel(true);
        }
        this.u.clear();
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0022, code lost:
        if ((r5.hasResolution() || r4.d.zzbp(r5.getErrorCode()) != null) != false) goto L_0x0024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(com.google.android.gms.common.ConnectionResult r5, com.google.android.gms.common.api.a<?> r6, boolean r7) {
        /*
            r4 = this;
            com.google.android.gms.common.api.a$e r0 = r6.zzagd()
            int r0 = r0.getPriority()
            r1 = 0
            r2 = 1
            if (r7 == 0) goto L_0x0024
            boolean r7 = r5.hasResolution()
            if (r7 == 0) goto L_0x0014
        L_0x0012:
            r7 = 1
            goto L_0x0022
        L_0x0014:
            com.google.android.gms.common.j r7 = r4.d
            int r3 = r5.getErrorCode()
            android.content.Intent r7 = r7.zzbp(r3)
            if (r7 == 0) goto L_0x0021
            goto L_0x0012
        L_0x0021:
            r7 = 0
        L_0x0022:
            if (r7 == 0) goto L_0x002d
        L_0x0024:
            com.google.android.gms.common.ConnectionResult r7 = r4.l
            if (r7 == 0) goto L_0x002c
            int r7 = r4.m
            if (r0 >= r7) goto L_0x002d
        L_0x002c:
            r1 = 1
        L_0x002d:
            if (r1 == 0) goto L_0x0033
            r4.l = r5
            r4.m = r0
        L_0x0033:
            com.google.android.gms.common.api.internal.ah r7 = r4.f2864a
            java.util.Map<com.google.android.gms.common.api.a$d<?>, com.google.android.gms.common.ConnectionResult> r7 = r7.g
            com.google.android.gms.common.api.a$d r6 = r6.zzagf()
            r7.put(r6, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.m.a(com.google.android.gms.common.ConnectionResult, com.google.android.gms.common.api.a, boolean):void");
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        ConnectionResult connectionResult;
        this.o--;
        int i2 = this.o;
        if (i2 > 0) {
            return false;
        }
        if (i2 < 0) {
            this.f2864a.m.d();
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            connectionResult = new ConnectionResult(8, null);
        } else {
            connectionResult = this.l;
            if (connectionResult == null) {
                return true;
            }
            this.f2864a.l = this.m;
        }
        b(connectionResult);
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int i2) {
        if (this.n == i2) {
            return true;
        }
        this.f2864a.m.d();
        String valueOf = String.valueOf(this);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
        sb.append("Unexpected callback in ");
        sb.append(valueOf);
        int i3 = this.o;
        StringBuilder sb2 = new StringBuilder(33);
        sb2.append("mRemainingConnections=");
        sb2.append(i3);
        String b2 = b(this.n);
        String b3 = b(i2);
        StringBuilder sb3 = new StringBuilder(String.valueOf(b2).length() + 70 + String.valueOf(b3).length());
        sb3.append("GoogleApiClient connecting is in step ");
        sb3.append(b2);
        sb3.append(" but received callback for step ");
        sb3.append(b3);
        Log.wtf("GoogleApiClientConnecting", sb3.toString(), new Exception());
        b(new ConnectionResult(8, null));
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(ConnectionResult connectionResult) {
        return this.r && !connectionResult.hasResolution();
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (this.o == 0) {
            if (!this.f || this.g) {
                ArrayList arrayList = new ArrayList();
                this.n = 1;
                this.o = this.f2864a.f.size();
                for (a.d next : this.f2864a.f.keySet()) {
                    if (!this.f2864a.g.containsKey(next)) {
                        arrayList.add(this.f2864a.f.get(next));
                    } else if (a()) {
                        d();
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.u.add(ak.zzaip().submit(new s(this, arrayList)));
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(ConnectionResult connectionResult) {
        e();
        a(!connectionResult.hasResolution());
        this.f2864a.a(connectionResult);
        this.f2864a.n.zzc(connectionResult);
    }

    public final void begin() {
        this.f2864a.g.clear();
        this.f = false;
        this.l = null;
        this.n = 0;
        this.r = true;
        this.g = false;
        this.i = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (a next : this.s.keySet()) {
            a.f fVar = this.f2864a.f.get(next.zzagf());
            z |= next.zzagd().getPriority() == 1;
            boolean booleanValue = this.s.get(next).booleanValue();
            if (fVar.zzaay()) {
                this.f = true;
                if (booleanValue) {
                    this.q.add(next.zzagf());
                } else {
                    this.r = false;
                }
            }
            hashMap.put(fVar, new o(this, next, booleanValue));
        }
        if (z) {
            this.f = false;
        }
        if (this.f) {
            this.k.zzc(Integer.valueOf(System.identityHashCode(this.f2864a.m)));
            v vVar = new v(this, (byte) 0);
            a.b<? extends ob, oc> bVar = this.t;
            Context context = this.c;
            Looper looper = this.f2864a.m.getLooper();
            bl blVar = this.k;
            this.e = (ob) bVar.zza(context, looper, blVar, blVar.zzalb(), vVar, vVar);
        }
        this.o = this.f2864a.f.size();
        this.u.add(ak.zzaip().submit(new p(this, hashMap)));
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        this.f = false;
        this.f2864a.m.c = Collections.emptySet();
        for (a.d next : this.q) {
            if (!this.f2864a.g.containsKey(next)) {
                this.f2864a.g.put(next, new ConnectionResult(17, null));
            }
        }
    }

    public final void connect() {
    }

    public final boolean disconnect() {
        e();
        a(true);
        this.f2864a.a((ConnectionResult) null);
        return true;
    }

    public final void onConnected(Bundle bundle) {
        if (a(1)) {
            if (bundle != null) {
                this.p.putAll(bundle);
            }
            if (a()) {
                d();
            }
        }
    }

    public final void onConnectionSuspended(int i2) {
        b(new ConnectionResult(8, null));
    }

    public final void zza(ConnectionResult connectionResult, a<?> aVar, boolean z) {
        if (a(1)) {
            a(connectionResult, aVar, z);
            if (a()) {
                d();
            }
        }
    }

    public final <A extends a.c, R extends com.google.android.gms.common.api.m, T extends cu<R, A>> T zzd(T t2) {
        this.f2864a.m.f2883a.add(t2);
        return t2;
    }

    public final <A extends a.c, T extends cu<? extends com.google.android.gms.common.api.m, A>> T zze(T t2) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
