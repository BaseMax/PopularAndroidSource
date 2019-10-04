package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.bc;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bs;
import com.google.android.gms.common.api.internal.ce;
import com.google.android.gms.common.api.internal.cq;
import com.google.android.gms.common.api.internal.cu;
import com.google.android.gms.common.api.internal.db;
import com.google.android.gms.common.api.internal.z;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.internal.ny;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public abstract class f {
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final Set<f> f2740a = Collections.newSetFromMap(new WeakHashMap());

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Account f2741a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<Scope> f2742b;
        private final Set<Scope> c;
        private int d;
        private View e;
        private String f;
        private String g;
        private final Map<a<?>, bn> h;
        private final Context i;
        private final Map<a<?>, a.C0065a> j;
        private bc k;
        private int l;
        private c m;
        private Looper n;
        private com.google.android.gms.common.b o;
        private a.b<? extends ob, oc> p;
        private final ArrayList<b> q;
        private final ArrayList<c> r;
        private boolean s;

        public a(Context context) {
            this.f2742b = new HashSet();
            this.c = new HashSet();
            this.h = new ArrayMap();
            this.j = new ArrayMap();
            this.l = -1;
            this.o = com.google.android.gms.common.b.getInstance();
            this.p = ny.zzebg;
            this.q = new ArrayList<>();
            this.r = new ArrayList<>();
            this.s = false;
            this.i = context;
            this.n = context.getMainLooper();
            this.f = context.getPackageName();
            this.g = context.getClass().getName();
        }

        public a(Context context, b bVar, c cVar) {
            this(context);
            ap.checkNotNull(bVar, "Must provide a connected listener");
            this.q.add(bVar);
            ap.checkNotNull(cVar, "Must provide a connection failed listener");
            this.r.add(cVar);
        }

        private final <O extends a.C0065a> void a(a<O> aVar, O o2, Scope... scopeArr) {
            HashSet hashSet = new HashSet(aVar.zzagd().zzr(o2));
            for (Scope add : scopeArr) {
                hashSet.add(add);
            }
            this.h.put(aVar, new bn(hashSet));
        }

        public final a addApi(a<? extends a.C0065a.d> aVar) {
            ap.checkNotNull(aVar, "Api must not be null");
            this.j.put(aVar, null);
            List<Scope> zzr = aVar.zzagd().zzr(null);
            this.c.addAll(zzr);
            this.f2742b.addAll(zzr);
            return this;
        }

        public final <O extends a.C0065a.c> a addApi(a<O> aVar, O o2) {
            ap.checkNotNull(aVar, "Api must not be null");
            ap.checkNotNull(o2, "Null options are not permitted for this Api");
            this.j.put(aVar, o2);
            List<Scope> zzr = aVar.zzagd().zzr(o2);
            this.c.addAll(zzr);
            this.f2742b.addAll(zzr);
            return this;
        }

        public final <O extends a.C0065a.c> a addApiIfAvailable(a<O> aVar, O o2, Scope... scopeArr) {
            ap.checkNotNull(aVar, "Api must not be null");
            ap.checkNotNull(o2, "Null options are not permitted for this Api");
            this.j.put(aVar, o2);
            a(aVar, o2, scopeArr);
            return this;
        }

        public final a addApiIfAvailable(a<? extends a.C0065a.d> aVar, Scope... scopeArr) {
            ap.checkNotNull(aVar, "Api must not be null");
            this.j.put(aVar, null);
            a(aVar, null, scopeArr);
            return this;
        }

        public final a addConnectionCallbacks(b bVar) {
            ap.checkNotNull(bVar, "Listener must not be null");
            this.q.add(bVar);
            return this;
        }

        public final a addOnConnectionFailedListener(c cVar) {
            ap.checkNotNull(cVar, "Listener must not be null");
            this.r.add(cVar);
            return this;
        }

        public final a addScope(Scope scope) {
            ap.checkNotNull(scope, "Scope must not be null");
            this.f2742b.add(scope);
            return this;
        }

        public final f build() {
            ap.checkArgument(!this.j.isEmpty(), "must call addApi() to add at least one API");
            bl zzagu = zzagu();
            a aVar = null;
            Map<a<?>, bn> zzakx = zzagu.zzakx();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (a next : this.j.keySet()) {
                a.C0065a aVar2 = this.j.get(next);
                boolean z2 = zzakx.get(next) != null;
                arrayMap.put(next, Boolean.valueOf(z2));
                db dbVar = new db(next, z2);
                arrayList.add(dbVar);
                a.b zzage = next.zzage();
                a aVar3 = next;
                a.f zza = zzage.zza(this.i, this.n, zzagu, aVar2, dbVar, dbVar);
                arrayMap2.put(aVar3.zzagf(), zza);
                if (zzage.getPriority() == 1) {
                    z = aVar2 != null;
                }
                if (zza.zzabj()) {
                    if (aVar == null) {
                        aVar = aVar3;
                    } else {
                        String name = aVar3.getName();
                        String name2 = aVar.getName();
                        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21 + String.valueOf(name2).length());
                        sb.append(name);
                        sb.append(" cannot be used with ");
                        sb.append(name2);
                        throw new IllegalStateException(sb.toString());
                    }
                }
            }
            if (aVar != null) {
                if (!z) {
                    ap.zza(this.f2741a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", aVar.getName());
                    ap.zza(this.f2742b.equals(this.c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", aVar.getName());
                } else {
                    String name3 = aVar.getName();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(name3).length() + 82);
                    sb2.append("With using ");
                    sb2.append(name3);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
            }
            z zVar = new z(this.i, new ReentrantLock(), this.n, zzagu, this.o, this.p, arrayMap, this.q, this.r, arrayMap2, this.l, z.zza(arrayMap2.values(), true), arrayList, false);
            synchronized (f.f2740a) {
                f.f2740a.add(zVar);
            }
            if (this.l >= 0) {
                cq.zza(this.k).zza(this.l, zVar, this.m);
            }
            return zVar;
        }

        public final a enableAutoManage(FragmentActivity fragmentActivity, int i2, c cVar) {
            bc bcVar = new bc(fragmentActivity);
            ap.checkArgument(i2 >= 0, "clientId must be non-negative");
            this.l = i2;
            this.m = cVar;
            this.k = bcVar;
            return this;
        }

        public final a enableAutoManage(FragmentActivity fragmentActivity, c cVar) {
            return enableAutoManage(fragmentActivity, 0, cVar);
        }

        public final a setAccountName(String str) {
            this.f2741a = str == null ? null : new Account(str, "com.google");
            return this;
        }

        public final a setGravityForPopups(int i2) {
            this.d = i2;
            return this;
        }

        public final a setHandler(Handler handler) {
            ap.checkNotNull(handler, "Handler must not be null");
            this.n = handler.getLooper();
            return this;
        }

        public final a setViewForPopups(View view) {
            ap.checkNotNull(view, "View must not be null");
            this.e = view;
            return this;
        }

        public final a useDefaultAccount() {
            return setAccountName("<<default account>>");
        }

        public final bl zzagu() {
            oc ocVar = oc.zzkbs;
            if (this.j.containsKey(ny.API)) {
                ocVar = (oc) this.j.get(ny.API);
            }
            bl blVar = new bl(this.f2741a, this.f2742b, this.h, this.d, this.e, this.f, this.g, ocVar);
            return blVar;
        }
    }

    public interface b {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface c {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public static void dumpAll(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (f2740a) {
            int i = 0;
            String concat = String.valueOf(str).concat("  ");
            for (f dump : f2740a) {
                printWriter.append(str).append("GoogleApiClient#").println(i);
                dump.dump(concat, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    public static Set<f> zzagr() {
        Set<f> set;
        synchronized (f2740a) {
            set = f2740a;
        }
        return set;
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    public abstract h<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract ConnectionResult getConnectionResult(a<?> aVar);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(a<?> aVar);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(b bVar);

    public abstract boolean isConnectionFailedListenerRegistered(c cVar);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(b bVar);

    public abstract void registerConnectionFailedListener(c cVar);

    public abstract void stopAutoManage(FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(b bVar);

    public abstract void unregisterConnectionFailedListener(c cVar);

    public <C extends a.f> C zza(a.d<C> dVar) {
        throw new UnsupportedOperationException();
    }

    public void zza(ce ceVar) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(a<?> aVar) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(bs bsVar) {
        throw new UnsupportedOperationException();
    }

    public void zzags() {
        throw new UnsupportedOperationException();
    }

    public void zzb(ce ceVar) {
        throw new UnsupportedOperationException();
    }

    public <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t) {
        throw new UnsupportedOperationException();
    }

    public <A extends a.c, T extends cu<? extends m, A>> T zze(T t) {
        throw new UnsupportedOperationException();
    }

    public <L> bg<L> zzt(L l) {
        throw new UnsupportedOperationException();
    }
}
