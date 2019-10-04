package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.collection.ArraySet;
import com.google.android.gms.c.f;
import com.google.android.gms.c.g;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.ob;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class al implements Handler.Callback {
    /* access modifiers changed from: package-private */

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2763a = new Object();
    /* access modifiers changed from: private */
    public static final Status f = new Status(4, "The user must be signed in to make this API call.");
    private static al j;
    public static final Status zzfsy = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f2764b = new AtomicInteger(0);
    /* access modifiers changed from: package-private */
    public h c = null;
    /* access modifiers changed from: package-private */
    public final Set<cp<?>> d = new ArraySet();
    /* access modifiers changed from: package-private */
    public final Handler e;
    /* access modifiers changed from: private */
    public long g = 5000;
    /* access modifiers changed from: private */
    public long h = 120000;
    /* access modifiers changed from: private */
    public long i = 10000;
    /* access modifiers changed from: private */
    public final Context k;
    /* access modifiers changed from: private */
    public final b l;
    /* access modifiers changed from: private */
    public int m = -1;
    private final AtomicInteger n = new AtomicInteger(1);
    /* access modifiers changed from: private */
    public final Map<cp<?>, an<?>> o = new ConcurrentHashMap(5, 0.75f, 1);
    private final Set<cp<?>> p = new ArraySet();

    private al(Context context, Looper looper, b bVar) {
        this.k = context;
        this.e = new Handler(looper, this);
        this.l = bVar;
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(6));
    }

    private final void a(e<?> eVar) {
        cp<?> zzagn = eVar.zzagn();
        an anVar = this.o.get(zzagn);
        if (anVar == null) {
            anVar = new an(this, eVar);
            this.o.put(zzagn, anVar);
        }
        if (anVar.zzaay()) {
            this.p.add(zzagn);
        }
        anVar.connect();
    }

    private final void c() {
        for (cp<?> remove : this.p) {
            this.o.remove(remove).signOut();
        }
        this.p.clear();
    }

    public static al zzaiq() {
        al alVar;
        synchronized (f2763a) {
            ap.checkNotNull(j, "Must guarantee manager is non-null before using getInstance");
            alVar = j;
        }
        return alVar;
    }

    public static void zzair() {
        synchronized (f2763a) {
            if (j != null) {
                al alVar = j;
                alVar.f2764b.incrementAndGet();
                alVar.e.sendMessageAtFrontOfQueue(alVar.e.obtainMessage(10));
            }
        }
    }

    public static al zzcj(Context context) {
        al alVar;
        synchronized (f2763a) {
            if (j == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                j = new al(context.getApplicationContext(), handlerThread.getLooper(), b.getInstance());
            }
            alVar = j;
        }
        return alVar;
    }

    /* access modifiers changed from: package-private */
    public final PendingIntent a(cp<?> cpVar, int i2) {
        an anVar = this.o.get(cpVar);
        if (anVar == null) {
            return null;
        }
        ob c2 = anVar.c();
        if (c2 == null) {
            return null;
        }
        return PendingIntent.getActivity(this.k, i2, c2.getSignInIntent(), 134217728);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(ConnectionResult connectionResult, int i2) {
        return this.l.zza(this.k, connectionResult, i2);
    }

    public final boolean handleMessage(Message message) {
        an anVar;
        long j2 = 300000;
        switch (message.what) {
            case 1:
                if (((Boolean) message.obj).booleanValue()) {
                    j2 = 10000;
                }
                this.i = j2;
                this.e.removeMessages(12);
                for (cp<?> obtainMessage : this.o.keySet()) {
                    Handler handler = this.e;
                    handler.sendMessageDelayed(handler.obtainMessage(12, obtainMessage), this.i);
                }
                break;
            case 2:
                cr crVar = (cr) message.obj;
                Iterator<cp<?>> it = crVar.zzaha().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else {
                        cp next = it.next();
                        an anVar2 = this.o.get(next);
                        if (anVar2 == null) {
                            crVar.zza(next, new ConnectionResult(13), null);
                            break;
                        } else if (anVar2.b()) {
                            crVar.zza(next, ConnectionResult.zzfkr, anVar2.zzahp().zzagi());
                        } else if (anVar2.zzaja() != null) {
                            crVar.zza(next, anVar2.zzaja(), null);
                        } else {
                            anVar2.zza(crVar);
                        }
                    }
                }
            case 3:
                for (an next2 : this.o.values()) {
                    next2.zzaiz();
                    next2.connect();
                }
                break;
            case 4:
            case 8:
            case 13:
                bn bnVar = (bn) message.obj;
                an anVar3 = this.o.get(bnVar.zzfur.zzagn());
                if (anVar3 == null) {
                    a(bnVar.zzfur);
                    anVar3 = this.o.get(bnVar.zzfur.zzagn());
                }
                if (anVar3.zzaay() && this.f2764b.get() != bnVar.zzfuq) {
                    bnVar.zzfup.zzs(zzfsy);
                    anVar3.signOut();
                    break;
                } else {
                    anVar3.zza(bnVar.zzfup);
                    break;
                }
                break;
            case 5:
                int i2 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<an<?>> it2 = this.o.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        anVar = it2.next();
                        if (anVar.getInstanceId() == i2) {
                        }
                    } else {
                        anVar = null;
                    }
                }
                if (anVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i2);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                    break;
                } else {
                    String errorString = this.l.getErrorString(connectionResult.getErrorCode());
                    String errorMessage = connectionResult.getErrorMessage();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length());
                    sb2.append("Error resolution was canceled by the user, original error message: ");
                    sb2.append(errorString);
                    sb2.append(": ");
                    sb2.append(errorMessage);
                    anVar.zzw(new Status(17, sb2.toString()));
                    break;
                }
            case 6:
                if (this.k.getApplicationContext() instanceof Application) {
                    cs.zza((Application) this.k.getApplicationContext());
                    cs.zzahb().zza((ct) new am(this));
                    if (!cs.zzahb().zzbe(true)) {
                        this.i = 300000;
                        break;
                    }
                }
                break;
            case 7:
                a((e<?>) (e) message.obj);
                break;
            case 9:
                if (this.o.containsKey(message.obj)) {
                    this.o.get(message.obj).resume();
                    break;
                }
                break;
            case 10:
                c();
                break;
            case 11:
                if (this.o.containsKey(message.obj)) {
                    this.o.get(message.obj).zzaij();
                    break;
                }
                break;
            case 12:
                if (this.o.containsKey(message.obj)) {
                    this.o.get(message.obj).zzajd();
                    break;
                }
                break;
            default:
                int i3 = message.what;
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i3);
                return false;
        }
        return true;
    }

    public final <O extends a.C0065a> f<Boolean> zza(e<O> eVar, bi<?> biVar) {
        g gVar = new g();
        cn cnVar = new cn(biVar, gVar);
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(13, new bn(cnVar, this.f2764b.get(), eVar)));
        return gVar.getTask();
    }

    public final <O extends a.C0065a> f<Void> zza(e<O> eVar, bo<a.c, ?> boVar, cl<a.c, ?> clVar) {
        g gVar = new g();
        by byVar = new by(new bp(boVar, clVar), gVar);
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(8, new bn(byVar, this.f2764b.get(), eVar)));
        return gVar.getTask();
    }

    public final f<Map<cp<?>, String>> zza(Iterable<? extends e<?>> iterable) {
        cr crVar = new cr(iterable);
        for (e eVar : iterable) {
            an anVar = this.o.get(eVar.zzagn());
            if (anVar == null || !anVar.b()) {
                Handler handler = this.e;
                handler.sendMessage(handler.obtainMessage(2, crVar));
                return crVar.getTask();
            }
            crVar.zza(eVar.zzagn(), ConnectionResult.zzfkr, anVar.zzahp().zzagi());
        }
        return crVar.getTask();
    }

    public final void zza(ConnectionResult connectionResult, int i2) {
        if (!a(connectionResult, i2)) {
            Handler handler = this.e;
            handler.sendMessage(handler.obtainMessage(5, i2, 0, connectionResult));
        }
    }

    public final void zza(e<?> eVar) {
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(7, eVar));
    }

    public final <O extends a.C0065a, TResult> void zza(e<O> eVar, int i2, cb<a.c, TResult> cbVar, g<TResult> gVar, bx bxVar) {
        cm cmVar = new cm(i2, cbVar, gVar, bxVar);
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(4, new bn(cmVar, this.f2764b.get(), eVar)));
    }

    public final <O extends a.C0065a> void zza(e<O> eVar, int i2, cu<? extends m, a.c> cuVar) {
        az azVar = new az(i2, cuVar);
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(4, new bn(azVar, this.f2764b.get(), eVar)));
    }

    public final void zzagz() {
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final int zzais() {
        return this.n.getAndIncrement();
    }

    public final void zza(h hVar) {
        synchronized (f2763a) {
            if (this.c != hVar) {
                this.c = hVar;
                this.d.clear();
                this.d.addAll(hVar.f2858b);
            }
        }
    }
}
