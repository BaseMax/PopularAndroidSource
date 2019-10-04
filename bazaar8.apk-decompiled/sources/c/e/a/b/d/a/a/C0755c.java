package c.e.a.b.d.a.a;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import b.f.C0243b;
import b.f.d;
import c.e.a.b.d.a.a;
import c.e.a.b.d.a.a.C0754b;
import c.e.a.b.d.a.d;
import c.e.a.b.d.c;
import c.e.a.b.d.d.C0781d;
import c.e.a.b.d.d.C0788k;
import c.e.a.b.d.d.C0789l;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.C0795s;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.n;
import c.e.a.b.g.c.e;
import c.e.a.b.j.h;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: c.e.a.b.d.a.a.c  reason: case insensitive filesystem */
public class C0755c implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public static final Status f9855a = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: b  reason: collision with root package name */
    public static final Status f9856b = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: c  reason: collision with root package name */
    public static final Object f9857c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static C0755c f9858d;

    /* renamed from: e  reason: collision with root package name */
    public long f9859e = 5000;

    /* renamed from: f  reason: collision with root package name */
    public long f9860f = 120000;

    /* renamed from: g  reason: collision with root package name */
    public long f9861g = 10000;

    /* renamed from: h  reason: collision with root package name */
    public final Context f9862h;

    /* renamed from: i  reason: collision with root package name */
    public final c f9863i;

    /* renamed from: j  reason: collision with root package name */
    public final C0788k f9864j;

    /* renamed from: k  reason: collision with root package name */
    public final AtomicInteger f9865k = new AtomicInteger(1);

    /* renamed from: l  reason: collision with root package name */
    public final AtomicInteger f9866l = new AtomicInteger(0);
    public final Map<N<?>, a<?>> m = new ConcurrentHashMap(5, 0.75f, 1);
    public C0767o n = null;
    public final Set<N<?>> o = new d();
    public final Set<N<?>> p = new d();
    public final Handler q;

    /* renamed from: c.e.a.b.d.a.a.c$a */
    public class a<O extends a.d> implements d.a, d.b, V {

        /* renamed from: a  reason: collision with root package name */
        public final Queue<r> f9867a = new LinkedList();

        /* renamed from: b  reason: collision with root package name */
        public final a.f f9868b;

        /* renamed from: c  reason: collision with root package name */
        public final a.b f9869c;

        /* renamed from: d  reason: collision with root package name */
        public final N<O> f9870d;

        /* renamed from: e  reason: collision with root package name */
        public final C0765m f9871e;

        /* renamed from: f  reason: collision with root package name */
        public final Set<O> f9872f = new HashSet();

        /* renamed from: g  reason: collision with root package name */
        public final Map<C0759g<?>, C> f9873g = new HashMap();

        /* renamed from: h  reason: collision with root package name */
        public final int f9874h;

        /* renamed from: i  reason: collision with root package name */
        public final E f9875i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f9876j;

        /* renamed from: k  reason: collision with root package name */
        public final List<b> f9877k = new ArrayList();

        /* renamed from: l  reason: collision with root package name */
        public ConnectionResult f9878l = null;

        public a(c.e.a.b.d.a.c<O> cVar) {
            this.f9868b = cVar.a(C0755c.this.q.getLooper(), (a<O>) this);
            a.f fVar = this.f9868b;
            if (fVar instanceof C0795s) {
                this.f9869c = ((C0795s) fVar).z();
            } else {
                this.f9869c = fVar;
            }
            this.f9870d = cVar.c();
            this.f9871e = new C0765m();
            this.f9874h = cVar.b();
            if (this.f9868b.g()) {
                this.f9875i = cVar.a(C0755c.this.f9862h, C0755c.this.q);
            } else {
                this.f9875i = null;
            }
        }

        public final void a(ConnectionResult connectionResult) {
            r.a(C0755c.this.q);
            E e2 = this.f9875i;
            if (e2 != null) {
                e2.A();
            }
            m();
            C0755c.this.f9864j.a();
            d(connectionResult);
            if (connectionResult.x() == 4) {
                a(C0755c.f9856b);
            } else if (this.f9867a.isEmpty()) {
                this.f9878l = connectionResult;
            } else {
                if (!c(connectionResult) && !C0755c.this.b(connectionResult, this.f9874h)) {
                    if (connectionResult.x() == 18) {
                        this.f9876j = true;
                    }
                    if (this.f9876j) {
                        C0755c.this.q.sendMessageDelayed(Message.obtain(C0755c.this.q, 9, this.f9870d), C0755c.this.f9859e);
                        return;
                    }
                    String a2 = this.f9870d.a();
                    StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 38);
                    sb.append("API: ");
                    sb.append(a2);
                    sb.append(" is not available on this device.");
                    a(new Status(17, sb.toString()));
                }
            }
        }

        public final void b(ConnectionResult connectionResult) {
            r.a(C0755c.this.q);
            this.f9868b.a();
            a(connectionResult);
        }

        public final boolean c(ConnectionResult connectionResult) {
            synchronized (C0755c.f9857c) {
                if (C0755c.this.n == null || !C0755c.this.o.contains(this.f9870d)) {
                    return false;
                }
                C0755c.this.n.b(connectionResult, this.f9874h);
                return true;
            }
        }

        public final void d(Bundle bundle) {
            if (Looper.myLooper() == C0755c.this.q.getLooper()) {
                h();
            } else {
                C0755c.this.q.post(new C0771t(this));
            }
        }

        public final void e() {
            r.a(C0755c.this.q);
            if (this.f9876j) {
                a();
            }
        }

        public final void f(int i2) {
            if (Looper.myLooper() == C0755c.this.q.getLooper()) {
                i();
            } else {
                C0755c.this.q.post(new C0772u(this));
            }
        }

        public final void g() {
            Status status;
            r.a(C0755c.this.q);
            if (this.f9876j) {
                o();
                if (C0755c.this.f9863i.b(C0755c.this.f9862h) == 18) {
                    status = new Status(8, "Connection timed out while waiting for Google Play services update to complete.");
                } else {
                    status = new Status(8, "API failed to connect while resuming due to an unknown error.");
                }
                a(status);
                this.f9868b.a();
            }
        }

        public final void h() {
            m();
            d(ConnectionResult.f12965a);
            o();
            Iterator<C> it = this.f9873g.values().iterator();
            while (it.hasNext()) {
                C next = it.next();
                if (a(next.f9801a.b()) != null) {
                    it.remove();
                } else {
                    try {
                        next.f9801a.a(this.f9869c, new h());
                    } catch (DeadObjectException unused) {
                        f(1);
                        this.f9868b.a();
                    } catch (RemoteException unused2) {
                        it.remove();
                    }
                }
            }
            j();
            p();
        }

        public final void i() {
            m();
            this.f9876j = true;
            this.f9871e.c();
            C0755c.this.q.sendMessageDelayed(Message.obtain(C0755c.this.q, 9, this.f9870d), C0755c.this.f9859e);
            C0755c.this.q.sendMessageDelayed(Message.obtain(C0755c.this.q, 11, this.f9870d), C0755c.this.f9860f);
            C0755c.this.f9864j.a();
        }

        public final void j() {
            ArrayList arrayList = new ArrayList(this.f9867a);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                r rVar = (r) obj;
                if (!this.f9868b.isConnected()) {
                    return;
                }
                if (b(rVar)) {
                    this.f9867a.remove(rVar);
                }
            }
        }

        public final void k() {
            r.a(C0755c.this.q);
            a(C0755c.f9855a);
            this.f9871e.b();
            for (C0759g m2 : (C0759g[]) this.f9873g.keySet().toArray(new C0759g[this.f9873g.size()])) {
                a((r) new M(m2, new h()));
            }
            d(new ConnectionResult(4));
            if (this.f9868b.isConnected()) {
                this.f9868b.a((C0781d.e) new C0773v(this));
            }
        }

        public final Map<C0759g<?>, C> l() {
            return this.f9873g;
        }

        public final void m() {
            r.a(C0755c.this.q);
            this.f9878l = null;
        }

        public final ConnectionResult n() {
            r.a(C0755c.this.q);
            return this.f9878l;
        }

        public final void o() {
            if (this.f9876j) {
                C0755c.this.q.removeMessages(11, this.f9870d);
                C0755c.this.q.removeMessages(9, this.f9870d);
                this.f9876j = false;
            }
        }

        public final void p() {
            C0755c.this.q.removeMessages(12, this.f9870d);
            C0755c.this.q.sendMessageDelayed(C0755c.this.q.obtainMessage(12, this.f9870d), C0755c.this.f9861g);
        }

        public final boolean q() {
            return a(true);
        }

        public final boolean b(r rVar) {
            if (!(rVar instanceof D)) {
                c(rVar);
                return true;
            }
            D d2 = (D) rVar;
            Feature a2 = a(d2.b(this));
            if (a2 == null) {
                c(rVar);
                return true;
            }
            if (d2.c(this)) {
                b bVar = new b(this.f9870d, a2, null);
                int indexOf = this.f9877k.indexOf(bVar);
                if (indexOf >= 0) {
                    b bVar2 = this.f9877k.get(indexOf);
                    C0755c.this.q.removeMessages(15, bVar2);
                    C0755c.this.q.sendMessageDelayed(Message.obtain(C0755c.this.q, 15, bVar2), C0755c.this.f9859e);
                } else {
                    this.f9877k.add(bVar);
                    C0755c.this.q.sendMessageDelayed(Message.obtain(C0755c.this.q, 15, bVar), C0755c.this.f9859e);
                    C0755c.this.q.sendMessageDelayed(Message.obtain(C0755c.this.q, 16, bVar), C0755c.this.f9860f);
                    ConnectionResult connectionResult = new ConnectionResult(2, null);
                    if (!c(connectionResult)) {
                        C0755c.this.b(connectionResult, this.f9874h);
                    }
                }
            } else {
                d2.a((RuntimeException) new UnsupportedApiCallException(a2));
            }
            return false;
        }

        public final void d(ConnectionResult connectionResult) {
            for (O next : this.f9872f) {
                String str = null;
                if (C0794q.a(connectionResult, ConnectionResult.f12965a)) {
                    str = this.f9868b.c();
                }
                next.a(this.f9870d, connectionResult, str);
            }
            this.f9872f.clear();
        }

        public final a.f f() {
            return this.f9868b;
        }

        public final void c(r rVar) {
            rVar.a(this.f9871e, d());
            try {
                rVar.a((a<?>) this);
            } catch (DeadObjectException unused) {
                f(1);
                this.f9868b.a();
            }
        }

        public final boolean d() {
            return this.f9868b.g();
        }

        public final boolean c() {
            return this.f9868b.isConnected();
        }

        public final void a(r rVar) {
            r.a(C0755c.this.q);
            if (!this.f9868b.isConnected()) {
                this.f9867a.add(rVar);
                ConnectionResult connectionResult = this.f9878l;
                if (connectionResult == null || !connectionResult.A()) {
                    a();
                } else {
                    a(this.f9878l);
                }
            } else if (b(rVar)) {
                p();
            } else {
                this.f9867a.add(rVar);
            }
        }

        public final int b() {
            return this.f9874h;
        }

        public final void b(b bVar) {
            if (this.f9877k.remove(bVar)) {
                C0755c.this.q.removeMessages(15, bVar);
                C0755c.this.q.removeMessages(16, bVar);
                Feature b2 = bVar.f9880b;
                ArrayList arrayList = new ArrayList(this.f9867a.size());
                for (r rVar : this.f9867a) {
                    if (rVar instanceof D) {
                        Feature[] b3 = ((D) rVar).b(this);
                        if (b3 != null && c.e.a.b.d.g.b.a((T[]) b3, b2)) {
                            arrayList.add(rVar);
                        }
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    r rVar2 = (r) obj;
                    this.f9867a.remove(rVar2);
                    rVar2.a((RuntimeException) new UnsupportedApiCallException(b2));
                }
            }
        }

        public final void a(Status status) {
            r.a(C0755c.this.q);
            for (r a2 : this.f9867a) {
                a2.a(status);
            }
            this.f9867a.clear();
        }

        public final boolean a(boolean z) {
            r.a(C0755c.this.q);
            if (!this.f9868b.isConnected() || this.f9873g.size() != 0) {
                return false;
            }
            if (this.f9871e.a()) {
                if (z) {
                    p();
                }
                return false;
            }
            this.f9868b.a();
            return true;
        }

        public final void a() {
            r.a(C0755c.this.q);
            if (!this.f9868b.isConnected() && !this.f9868b.b()) {
                int a2 = C0755c.this.f9864j.a(C0755c.this.f9862h, this.f9868b);
                if (a2 != 0) {
                    a(new ConnectionResult(a2, null));
                    return;
                }
                C0121c cVar = new C0121c(this.f9868b, this.f9870d);
                if (this.f9868b.g()) {
                    this.f9875i.a((H) cVar);
                }
                this.f9868b.a((C0781d.c) cVar);
            }
        }

        public final void a(O o) {
            r.a(C0755c.this.q);
            this.f9872f.add(o);
        }

        public final Feature a(Feature[] featureArr) {
            if (!(featureArr == null || featureArr.length == 0)) {
                Feature[] f2 = this.f9868b.f();
                if (f2 == null) {
                    f2 = new Feature[0];
                }
                C0243b bVar = new C0243b(f2.length);
                for (Feature feature : f2) {
                    bVar.put(feature.x(), Long.valueOf(feature.y()));
                }
                for (Feature feature2 : featureArr) {
                    if (!bVar.containsKey(feature2.x()) || ((Long) bVar.get(feature2.x())).longValue() < feature2.y()) {
                        return feature2;
                    }
                }
            }
            return null;
        }

        public final void a(b bVar) {
            if (this.f9877k.contains(bVar) && !this.f9876j) {
                if (!this.f9868b.isConnected()) {
                    a();
                    return;
                }
                j();
            }
        }
    }

    /* renamed from: c.e.a.b.d.a.a.c$b */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public final N<?> f9879a;

        /* renamed from: b  reason: collision with root package name */
        public final Feature f9880b;

        public b(N<?> n, Feature feature) {
            this.f9879a = n;
            this.f9880b = feature;
        }

        public final boolean equals(Object obj) {
            if (obj != null && (obj instanceof b)) {
                b bVar = (b) obj;
                if (C0794q.a(this.f9879a, bVar.f9879a) && C0794q.a(this.f9880b, bVar.f9880b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return C0794q.a(this.f9879a, this.f9880b);
        }

        public final String toString() {
            C0794q.a a2 = C0794q.a((Object) this);
            a2.a("key", this.f9879a);
            a2.a("feature", this.f9880b);
            return a2.toString();
        }

        public /* synthetic */ b(N n, Feature feature, C0770s sVar) {
            this(n, feature);
        }
    }

    /* renamed from: c.e.a.b.d.a.a.c$c  reason: collision with other inner class name */
    private class C0121c implements H, C0781d.c {

        /* renamed from: a  reason: collision with root package name */
        public final a.f f9881a;

        /* renamed from: b  reason: collision with root package name */
        public final N<?> f9882b;

        /* renamed from: c  reason: collision with root package name */
        public C0789l f9883c = null;

        /* renamed from: d  reason: collision with root package name */
        public Set<Scope> f9884d = null;

        /* renamed from: e  reason: collision with root package name */
        public boolean f9885e = false;

        public C0121c(a.f fVar, N<?> n) {
            this.f9881a = fVar;
            this.f9882b = n;
        }

        public final void a(ConnectionResult connectionResult) {
            C0755c.this.q.post(new C0775x(this, connectionResult));
        }

        public final void b(ConnectionResult connectionResult) {
            ((a) C0755c.this.m.get(this.f9882b)).b(connectionResult);
        }

        public final void a(C0789l lVar, Set<Scope> set) {
            if (lVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                b(new ConnectionResult(4));
                return;
            }
            this.f9883c = lVar;
            this.f9884d = set;
            a();
        }

        public final void a() {
            if (this.f9885e) {
                C0789l lVar = this.f9883c;
                if (lVar != null) {
                    this.f9881a.a(lVar, this.f9884d);
                }
            }
        }
    }

    public C0755c(Context context, Looper looper, c cVar) {
        this.f9862h = context;
        this.q = new e(looper, this);
        this.f9863i = cVar;
        this.f9864j = new C0788k(cVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public static C0755c a(Context context) {
        C0755c cVar;
        synchronized (f9857c) {
            if (f9858d == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f9858d = new C0755c(context.getApplicationContext(), handlerThread.getLooper(), c.a());
            }
            cVar = f9858d;
        }
        return cVar;
    }

    public final void b(c.e.a.b.d.a.c<?> cVar) {
        N<?> c2 = cVar.c();
        a aVar = this.m.get(c2);
        if (aVar == null) {
            aVar = new a(cVar);
            this.m.put(c2, aVar);
        }
        if (aVar.d()) {
            this.p.add(c2);
        }
        aVar.a();
    }

    public final void d() {
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public boolean handleMessage(Message message) {
        a aVar;
        int i2 = message.what;
        long j2 = 300000;
        switch (i2) {
            case 1:
                if (((Boolean) message.obj).booleanValue()) {
                    j2 = 10000;
                }
                this.f9861g = j2;
                this.q.removeMessages(12);
                for (N<?> obtainMessage : this.m.keySet()) {
                    Handler handler = this.q;
                    handler.sendMessageDelayed(handler.obtainMessage(12, obtainMessage), this.f9861g);
                }
                break;
            case 2:
                O o2 = (O) message.obj;
                Iterator<N<?>> it = o2.a().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else {
                        N next = it.next();
                        a aVar2 = this.m.get(next);
                        if (aVar2 == null) {
                            o2.a(next, new ConnectionResult(13), null);
                            break;
                        } else if (aVar2.c()) {
                            o2.a(next, ConnectionResult.f12965a, aVar2.f().c());
                        } else if (aVar2.n() != null) {
                            o2.a(next, aVar2.n(), null);
                        } else {
                            aVar2.a(o2);
                            aVar2.a();
                        }
                    }
                }
            case 3:
                for (a next2 : this.m.values()) {
                    next2.m();
                    next2.a();
                }
                break;
            case 4:
            case 8:
            case 13:
                B b2 = (B) message.obj;
                a aVar3 = this.m.get(b2.f9800c.c());
                if (aVar3 == null) {
                    b(b2.f9800c);
                    aVar3 = this.m.get(b2.f9800c.c());
                }
                if (aVar3.d() && this.f9866l.get() != b2.f9799b) {
                    b2.f9798a.a(f9855a);
                    aVar3.k();
                    break;
                } else {
                    aVar3.a(b2.f9798a);
                    break;
                }
                break;
            case 5:
                int i3 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<a<?>> it2 = this.m.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        aVar = it2.next();
                        if (aVar.b() == i3) {
                        }
                    } else {
                        aVar = null;
                    }
                }
                if (aVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i3);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                    break;
                } else {
                    String a2 = this.f9863i.a(connectionResult.x());
                    String y = connectionResult.y();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(a2).length() + 69 + String.valueOf(y).length());
                    sb2.append("Error resolution was canceled by the user, original error message: ");
                    sb2.append(a2);
                    sb2.append(": ");
                    sb2.append(y);
                    aVar.a(new Status(17, sb2.toString()));
                    break;
                }
            case 6:
                if (n.a() && (this.f9862h.getApplicationContext() instanceof Application)) {
                    C0754b.a((Application) this.f9862h.getApplicationContext());
                    C0754b.a().a((C0754b.a) new C0770s(this));
                    if (!C0754b.a().b(true)) {
                        this.f9861g = 300000;
                        break;
                    }
                }
                break;
            case 7:
                b((c.e.a.b.d.a.c<?>) (c.e.a.b.d.a.c) message.obj);
                break;
            case 9:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).e();
                    break;
                }
                break;
            case 10:
                for (N<?> remove : this.p) {
                    this.m.remove(remove).k();
                }
                this.p.clear();
                break;
            case 11:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).g();
                    break;
                }
                break;
            case 12:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).q();
                    break;
                }
                break;
            case 14:
                C0768p pVar = (C0768p) message.obj;
                N<?> b3 = pVar.b();
                if (this.m.containsKey(b3)) {
                    pVar.a().a(Boolean.valueOf(this.m.get(b3).a(false)));
                    break;
                } else {
                    pVar.a().a(false);
                    break;
                }
            case 15:
                b bVar = (b) message.obj;
                if (this.m.containsKey(bVar.f9879a)) {
                    this.m.get(bVar.f9879a).a(bVar);
                    break;
                }
                break;
            case 16:
                b bVar2 = (b) message.obj;
                if (this.m.containsKey(bVar2.f9879a)) {
                    this.m.get(bVar2.f9879a).b(bVar2);
                    break;
                }
                break;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
        return true;
    }

    public final void b(C0767o oVar) {
        synchronized (f9857c) {
            if (this.n == oVar) {
                this.n = null;
                this.o.clear();
            }
        }
    }

    public final int a() {
        return this.f9865k.getAndIncrement();
    }

    public final void a(c.e.a.b.d.a.c<?> cVar) {
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(7, cVar));
    }

    public final void a(C0767o oVar) {
        synchronized (f9857c) {
            if (this.n != oVar) {
                this.n = oVar;
                this.o.clear();
            }
            this.o.addAll(oVar.h());
        }
    }

    public final boolean b(ConnectionResult connectionResult, int i2) {
        return this.f9863i.a(this.f9862h, connectionResult, i2);
    }

    public final <O extends a.d, ResultT> void a(c.e.a.b.d.a.c<O> cVar, int i2, C0762j<a.b, ResultT> jVar, h<ResultT> hVar, C0761i iVar) {
        L l2 = new L(i2, jVar, hVar, iVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(4, new B(l2, this.f9866l.get(), cVar)));
    }

    public final void a(ConnectionResult connectionResult, int i2) {
        if (!b(connectionResult, i2)) {
            Handler handler = this.q;
            handler.sendMessage(handler.obtainMessage(5, i2, 0, connectionResult));
        }
    }
}
