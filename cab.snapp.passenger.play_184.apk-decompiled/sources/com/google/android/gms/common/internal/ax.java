package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.j;
import com.google.android.gms.common.zzc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ax<T extends IInterface> {
    private static String[] A = {"service_esmobile", "service_googleme"};

    /* renamed from: a  reason: collision with root package name */
    private long f2934a;

    /* renamed from: b  reason: collision with root package name */
    int f2935b;
    long c;
    final Handler d;
    protected bd e;
    protected AtomicInteger f;
    private int g;
    private long h;
    private n i;
    private final Context j;
    private final Looper k;
    private final h l;
    private final j m;
    private final Object n;
    /* access modifiers changed from: private */
    public final Object o;
    /* access modifiers changed from: private */
    public x p;
    private T q;
    /* access modifiers changed from: private */
    public final ArrayList<bc<?>> r;
    private bf s;
    private int t;
    /* access modifiers changed from: private */
    public final az u;
    /* access modifiers changed from: private */
    public final ba v;
    private final int w;
    private final String x;
    /* access modifiers changed from: private */
    public ConnectionResult y;
    /* access modifiers changed from: private */
    public boolean z;

    protected ax(Context context, Looper looper, az azVar, ba baVar) {
        this(context, looper, h.zzco(context), j.zzafy(), 93, (az) ap.checkNotNull(azVar), (ba) ap.checkNotNull(baVar), null);
    }

    protected ax(Context context, Looper looper, h hVar, j jVar, int i2, az azVar, ba baVar, String str) {
        this.n = new Object();
        this.o = new Object();
        this.r = new ArrayList<>();
        this.t = 1;
        this.y = null;
        this.z = false;
        this.f = new AtomicInteger(0);
        this.j = (Context) ap.checkNotNull(context, "Context must not be null");
        this.k = (Looper) ap.checkNotNull(looper, "Looper must not be null");
        this.l = (h) ap.checkNotNull(hVar, "Supervisor must not be null");
        this.m = (j) ap.checkNotNull(jVar, "API availability must not be null");
        this.d = new bb(this, looper);
        this.w = i2;
        this.u = azVar;
        this.v = baVar;
        this.x = str;
    }

    /* access modifiers changed from: private */
    public final boolean a(int i2, int i3, T t2) {
        synchronized (this.n) {
            if (this.t != i2) {
                return false;
            }
            a(i3, t2);
            return true;
        }
    }

    private final String b() {
        String str = this.x;
        return str == null ? this.j.getClass().getName() : str;
    }

    private final boolean c() {
        boolean z2;
        synchronized (this.n) {
            z2 = this.t == 3;
        }
        return z2;
    }

    /* access modifiers changed from: private */
    public final boolean d() {
        if (this.z || TextUtils.isEmpty(zzhj()) || TextUtils.isEmpty(null)) {
            return false;
        }
        try {
            Class.forName(zzhj());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public Set<Scope> a() {
        return Collections.EMPTY_SET;
    }

    /* access modifiers changed from: protected */
    public final void a(int i2, int i3) {
        Handler handler = this.d;
        handler.sendMessage(handler.obtainMessage(7, i3, -1, new bi(this, i2, null)));
    }

    /* access modifiers changed from: protected */
    public final void a(int i2, IBinder iBinder, Bundle bundle, int i3) {
        Handler handler = this.d;
        handler.sendMessage(handler.obtainMessage(1, i3, -1, new bh(this, i2, iBinder, bundle)));
    }

    /* access modifiers changed from: protected */
    public final void a(ConnectionResult connectionResult) {
        this.g = connectionResult.getErrorCode();
        this.h = System.currentTimeMillis();
    }

    public void disconnect() {
        this.f.incrementAndGet();
        synchronized (this.r) {
            int size = this.r.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.r.get(i2).removeListener();
            }
            this.r.clear();
        }
        synchronized (this.o) {
            this.p = null;
        }
        a(1, (IInterface) null);
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i2;
        T t2;
        x xVar;
        synchronized (this.n) {
            i2 = this.t;
            t2 = this.q;
        }
        synchronized (this.o) {
            xVar = this.p;
        }
        printWriter.append(str).append("mConnectState=");
        printWriter.print(i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "UNKNOWN" : "DISCONNECTING" : "CONNECTED" : "LOCAL_CONNECTING" : "REMOTE_CONNECTING" : "DISCONNECTED");
        printWriter.append(" mService=");
        if (t2 == null) {
            printWriter.append("null");
        } else {
            printWriter.append(zzhj()).append("@").append(Integer.toHexString(System.identityHashCode(t2.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (xVar == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(xVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f2934a > 0) {
            PrintWriter append = printWriter.append(str).append("lastConnectedTime=");
            long j2 = this.f2934a;
            String format = simpleDateFormat.format(new Date(j2));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j2);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.c > 0) {
            printWriter.append(str).append("lastSuspendedCause=");
            int i3 = this.f2935b;
            printWriter.append(i3 != 1 ? i3 != 2 ? String.valueOf(i3) : "CAUSE_NETWORK_LOST" : "CAUSE_SERVICE_DISCONNECTED");
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j3 = this.c;
            String format2 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j3);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.h > 0) {
            printWriter.append(str).append("lastFailedStatus=").append(d.getStatusCodeString(this.g));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j4 = this.h;
            String format3 = simpleDateFormat.format(new Date(j4));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j4);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    public Account getAccount() {
        return null;
    }

    public final Context getContext() {
        return this.j;
    }

    public final Looper getLooper() {
        return this.k;
    }

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public final boolean isConnected() {
        boolean z2;
        synchronized (this.n) {
            z2 = this.t == 4;
        }
        return z2;
    }

    public final boolean isConnecting() {
        boolean z2;
        synchronized (this.n) {
            if (this.t != 2) {
                if (this.t != 3) {
                    z2 = false;
                }
            }
            z2 = true;
        }
        return z2;
    }

    public void zza(bd bdVar) {
        this.e = (bd) ap.checkNotNull(bdVar, "Connection progress callbacks cannot be null.");
        a(2, (IInterface) null);
    }

    public void zza(bj bjVar) {
        bjVar.zzajf();
    }

    public final void zza(o oVar, Set<Scope> set) {
        Bundle zzaap = zzaap();
        zzz zzz = new zzz(this.w);
        zzz.f2986a = this.j.getPackageName();
        zzz.d = zzaap;
        if (set != null) {
            zzz.c = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (zzaay()) {
            zzz.e = getAccount() != null ? getAccount() : new Account("<<default account>>", "com.google");
            if (oVar != null) {
                zzz.f2987b = oVar.asBinder();
            }
        } else if (zzako()) {
            zzz.e = getAccount();
        }
        zzz.f = zzakl();
        try {
            synchronized (this.o) {
                if (this.p != null) {
                    this.p.zza(new be(this, this.f.get()), zzz);
                }
            }
        } catch (DeadObjectException unused) {
            zzce(1);
        } catch (SecurityException e2) {
            throw e2;
        } catch (RemoteException | RuntimeException unused2) {
            a(8, (IBinder) null, (Bundle) null, this.f.get());
        }
    }

    /* access modifiers changed from: protected */
    public Bundle zzaap() {
        return new Bundle();
    }

    public boolean zzaay() {
        return false;
    }

    public boolean zzabj() {
        return false;
    }

    public Bundle zzafi() {
        return null;
    }

    public boolean zzagg() {
        return true;
    }

    public final IBinder zzagh() {
        synchronized (this.o) {
            if (this.p == null) {
                return null;
            }
            IBinder asBinder = this.p.asBinder();
            return asBinder;
        }
    }

    public zzc[] zzakl() {
        return new zzc[0];
    }

    public final void zzakm() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzakn() throws DeadObjectException {
        T t2;
        synchronized (this.n) {
            if (this.t != 5) {
                zzakm();
                ap.zza(this.q != null, (Object) "Client is connected but service is null");
                t2 = this.q;
            } else {
                throw new DeadObjectException();
            }
        }
        return t2;
    }

    public boolean zzako() {
        return false;
    }

    public final void zzce(int i2) {
        Handler handler = this.d;
        handler.sendMessage(handler.obtainMessage(6, this.f.get(), i2));
    }

    /* access modifiers changed from: protected */
    public abstract T zzd(IBinder iBinder);

    /* access modifiers changed from: protected */
    public abstract String zzhi();

    /* access modifiers changed from: protected */
    public abstract String zzhj();

    /* access modifiers changed from: private */
    public final void a(int i2, T t2) {
        ap.checkArgument((i2 == 4) == (t2 != null));
        synchronized (this.n) {
            this.t = i2;
            this.q = t2;
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    if (!(this.s == null || this.i == null)) {
                        String str = this.i.f2977a;
                        String str2 = this.i.f2978b;
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 70 + String.valueOf(str2).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(str);
                        sb.append(" on ");
                        sb.append(str2);
                        this.l.zza(this.i.f2977a, this.i.f2978b, this.i.c, this.s, b());
                        this.f.incrementAndGet();
                    }
                    this.s = new bf(this, this.f.get());
                    this.i = new n("com.google.android.gms", zzhi(), false, 129);
                    if (!this.l.a(new i(this.i.f2977a, this.i.f2978b, this.i.c), this.s, b())) {
                        String str3 = this.i.f2977a;
                        String str4 = this.i.f2978b;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 34 + String.valueOf(str4).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(str3);
                        sb2.append(" on ");
                        sb2.append(str4);
                        a(16, this.f.get());
                    }
                } else if (i2 == 4) {
                    this.f2934a = System.currentTimeMillis();
                }
            } else if (this.s != null) {
                this.l.zza(zzhi(), "com.google.android.gms", 129, this.s, b());
                this.s = null;
            }
        }
    }

    public final void zzakj() {
        int isGooglePlayServicesAvailable = this.m.isGooglePlayServicesAvailable(this.j);
        if (isGooglePlayServicesAvailable != 0) {
            a(1, (IInterface) null);
            this.e = (bd) ap.checkNotNull(new bg(this), "Connection progress callbacks cannot be null.");
            Handler handler = this.d;
            handler.sendMessage(handler.obtainMessage(3, this.f.get(), isGooglePlayServicesAvailable, null));
            return;
        }
        zza((bd) new bg(this));
    }

    public final String zzagi() {
        if (isConnected()) {
            n nVar = this.i;
            if (nVar != null) {
                return nVar.f2978b;
            }
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    static /* synthetic */ void a(ax axVar) {
        int i2;
        if (axVar.c()) {
            i2 = 5;
            axVar.z = true;
        } else {
            i2 = 4;
        }
        Handler handler = axVar.d;
        handler.sendMessage(handler.obtainMessage(i2, axVar.f.get(), 16));
    }
}
