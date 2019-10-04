package c.f.a;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.squareup.picasso.MemoryPolicy;
import com.squareup.picasso.NetworkPolicy;
import com.squareup.picasso.NetworkRequestHandler;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* compiled from: Dispatcher */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public final b f12002a = new b();

    /* renamed from: b  reason: collision with root package name */
    public final Context f12003b;

    /* renamed from: c  reason: collision with root package name */
    public final ExecutorService f12004c;

    /* renamed from: d  reason: collision with root package name */
    public final r f12005d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, C1038i> f12006e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<Object, C1030a> f12007f;

    /* renamed from: g  reason: collision with root package name */
    public final Map<Object, C1030a> f12008g;

    /* renamed from: h  reason: collision with root package name */
    public final Set<Object> f12009h;

    /* renamed from: i  reason: collision with root package name */
    public final Handler f12010i;

    /* renamed from: j  reason: collision with root package name */
    public final Handler f12011j;

    /* renamed from: k  reason: collision with root package name */
    public final C1040k f12012k;

    /* renamed from: l  reason: collision with root package name */
    public final L f12013l;
    public final List<C1038i> m;
    public final c n;
    public final boolean o;
    public boolean p;

    /* compiled from: Dispatcher */
    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        public final q f12014a;

        public a(Looper looper, q qVar) {
            super(looper);
            this.f12014a = qVar;
        }

        public void handleMessage(Message message) {
            boolean z = false;
            switch (message.what) {
                case 1:
                    this.f12014a.e((C1030a) message.obj);
                    return;
                case 2:
                    this.f12014a.d((C1030a) message.obj);
                    return;
                case 4:
                    this.f12014a.f((C1038i) message.obj);
                    return;
                case 5:
                    this.f12014a.g((C1038i) message.obj);
                    return;
                case 6:
                    this.f12014a.a((C1038i) message.obj, false);
                    return;
                case 7:
                    this.f12014a.b();
                    return;
                case 9:
                    this.f12014a.b((NetworkInfo) message.obj);
                    return;
                case 10:
                    q qVar = this.f12014a;
                    if (message.arg1 == 1) {
                        z = true;
                    }
                    qVar.b(z);
                    return;
                case 11:
                    this.f12014a.a(message.obj);
                    return;
                case 12:
                    this.f12014a.b(message.obj);
                    return;
                default:
                    Picasso.f13602a.post(new C1045p(this, message));
                    return;
            }
        }
    }

    /* compiled from: Dispatcher */
    static class b extends HandlerThread {
        public b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* compiled from: Dispatcher */
    static class c extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        public final q f12015a;

        public c(q qVar) {
            this.f12015a = qVar;
        }

        public void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f12015a.o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f12015a.f12003b.registerReceiver(this, intentFilter);
        }

        @SuppressLint({"MissingPermission"})
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if (intent.hasExtra("state")) {
                        this.f12015a.a(intent.getBooleanExtra("state", false));
                    }
                } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    this.f12015a.a(((ConnectivityManager) P.a(context, "connectivity")).getActiveNetworkInfo());
                }
            }
        }
    }

    public q(Context context, ExecutorService executorService, Handler handler, r rVar, C1040k kVar, L l2) {
        this.f12002a.start();
        P.a(this.f12002a.getLooper());
        this.f12003b = context;
        this.f12004c = executorService;
        this.f12006e = new LinkedHashMap();
        this.f12007f = new WeakHashMap();
        this.f12008g = new WeakHashMap();
        this.f12009h = new LinkedHashSet();
        this.f12010i = new a(this.f12002a.getLooper(), this);
        this.f12005d = rVar;
        this.f12011j = handler;
        this.f12012k = kVar;
        this.f12013l = l2;
        this.m = new ArrayList(4);
        this.p = P.c(this.f12003b);
        this.o = P.b(context, "android.permission.ACCESS_NETWORK_STATE");
        this.n = new c(this);
        this.n.a();
    }

    public void a(C1030a aVar) {
        Handler handler = this.f12010i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    public void b(C1030a aVar) {
        Handler handler = this.f12010i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    public void c(C1038i iVar) {
        Handler handler = this.f12010i;
        handler.sendMessage(handler.obtainMessage(6, iVar));
    }

    public void d(C1038i iVar) {
        Handler handler = this.f12010i;
        handler.sendMessageDelayed(handler.obtainMessage(5, iVar), 500);
    }

    public void e(C1030a aVar) {
        a(aVar, true);
    }

    public void f(C1038i iVar) {
        if (MemoryPolicy.b(iVar.i())) {
            this.f12012k.a(iVar.g(), iVar.l());
        }
        this.f12006e.remove(iVar.g());
        a(iVar);
        if (iVar.j().p) {
            P.a("Dispatcher", "batched", P.a(iVar), "for completion");
        }
    }

    @SuppressLint({"MissingPermission"})
    public void g(C1038i iVar) {
        if (!iVar.n()) {
            boolean z = false;
            if (this.f12004c.isShutdown()) {
                a(iVar, false);
                return;
            }
            NetworkInfo networkInfo = null;
            if (this.o) {
                networkInfo = ((ConnectivityManager) P.a(this.f12003b, "connectivity")).getActiveNetworkInfo();
            }
            if (iVar.a(this.p, networkInfo)) {
                if (iVar.j().p) {
                    P.a("Dispatcher", "retrying", P.a(iVar));
                }
                if (iVar.f() instanceof NetworkRequestHandler.ContentLengthException) {
                    iVar.m |= NetworkPolicy.NO_CACHE.index;
                }
                iVar.r = this.f12004c.submit(iVar);
            } else {
                if (this.o && iVar.o()) {
                    z = true;
                }
                a(iVar, z);
                if (z) {
                    e(iVar);
                }
            }
        }
    }

    public void a(NetworkInfo networkInfo) {
        Handler handler = this.f12010i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    public void b(C1038i iVar) {
        Handler handler = this.f12010i;
        handler.sendMessage(handler.obtainMessage(4, iVar));
    }

    public final void c(C1030a aVar) {
        Object i2 = aVar.i();
        if (i2 != null) {
            aVar.f11969k = true;
            this.f12007f.put(i2, aVar);
        }
    }

    public void d(C1030a aVar) {
        String b2 = aVar.b();
        C1038i iVar = this.f12006e.get(b2);
        if (iVar != null) {
            iVar.b(aVar);
            if (iVar.a()) {
                this.f12006e.remove(b2);
                if (aVar.e().p) {
                    P.a("Dispatcher", "canceled", aVar.g().d());
                }
            }
        }
        if (this.f12009h.contains(aVar.h())) {
            this.f12008g.remove(aVar.i());
            if (aVar.e().p) {
                P.a("Dispatcher", "canceled", aVar.g().d(), "because paused request got canceled");
            }
        }
        C1030a remove = this.f12007f.remove(aVar.i());
        if (remove != null && remove.e().p) {
            P.a("Dispatcher", "canceled", remove.g().d(), "from replaying");
        }
    }

    public final void e(C1038i iVar) {
        C1030a c2 = iVar.c();
        if (c2 != null) {
            c(c2);
        }
        List<C1030a> d2 = iVar.d();
        if (d2 != null) {
            int size = d2.size();
            for (int i2 = 0; i2 < size; i2++) {
                c(d2.get(i2));
            }
        }
    }

    public void a(boolean z) {
        Handler handler = this.f12010i;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    public void b(Object obj) {
        if (this.f12009h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<C1030a> it = this.f12008g.values().iterator();
            while (it.hasNext()) {
                C1030a next = it.next();
                if (next.h().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                Handler handler = this.f12011j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    public void a(C1030a aVar, boolean z) {
        if (this.f12009h.contains(aVar.h())) {
            this.f12008g.put(aVar.i(), aVar);
            if (aVar.e().p) {
                String d2 = aVar.f11960b.d();
                P.a("Dispatcher", "paused", d2, "because tag '" + aVar.h() + "' is paused");
            }
            return;
        }
        C1038i iVar = this.f12006e.get(aVar.b());
        if (iVar != null) {
            iVar.a(aVar);
        } else if (this.f12004c.isShutdown()) {
            if (aVar.e().p) {
                P.a("Dispatcher", "ignored", aVar.f11960b.d(), "because shut down");
            }
        } else {
            C1038i a2 = C1038i.a(aVar.e(), this, this.f12012k, this.f12013l, aVar);
            a2.r = this.f12004c.submit(a2);
            this.f12006e.put(aVar.b(), a2);
            if (z) {
                this.f12007f.remove(aVar.i());
            }
            if (aVar.e().p) {
                P.a("Dispatcher", "enqueued", aVar.f11960b.d());
            }
        }
    }

    public void b() {
        ArrayList arrayList = new ArrayList(this.m);
        this.m.clear();
        Handler handler = this.f12011j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        a((List<C1038i>) arrayList);
    }

    public void b(boolean z) {
        this.p = z;
    }

    public void b(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f12004c;
        if (executorService instanceof E) {
            ((E) executorService).a(networkInfo);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            a();
        }
    }

    public void a(Object obj) {
        if (this.f12009h.add(obj)) {
            Iterator<C1038i> it = this.f12006e.values().iterator();
            while (it.hasNext()) {
                C1038i next = it.next();
                boolean z = next.j().p;
                C1030a c2 = next.c();
                List<C1030a> d2 = next.d();
                boolean z2 = d2 != null && !d2.isEmpty();
                if (c2 != null || z2) {
                    if (c2 != null && c2.h().equals(obj)) {
                        next.b(c2);
                        this.f12008g.put(c2.i(), c2);
                        if (z) {
                            P.a("Dispatcher", "paused", c2.f11960b.d(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = d2.size() - 1; size >= 0; size--) {
                            C1030a aVar = d2.get(size);
                            if (aVar.h().equals(obj)) {
                                next.b(aVar);
                                this.f12008g.put(aVar.i(), aVar);
                                if (z) {
                                    P.a("Dispatcher", "paused", aVar.f11960b.d(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.a()) {
                        it.remove();
                        if (z) {
                            P.a("Dispatcher", "canceled", P.a(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    public void a(C1038i iVar, boolean z) {
        if (iVar.j().p) {
            String a2 = P.a(iVar);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z ? " (will replay)" : "");
            P.a("Dispatcher", "batched", a2, sb.toString());
        }
        this.f12006e.remove(iVar.g());
        a(iVar);
    }

    public final void a() {
        if (!this.f12007f.isEmpty()) {
            Iterator<C1030a> it = this.f12007f.values().iterator();
            while (it.hasNext()) {
                C1030a next = it.next();
                it.remove();
                if (next.e().p) {
                    P.a("Dispatcher", "replaying", next.g().d());
                }
                a(next, false);
            }
        }
    }

    public final void a(C1038i iVar) {
        if (!iVar.n()) {
            Bitmap bitmap = iVar.q;
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
            this.m.add(iVar);
            if (!this.f12010i.hasMessages(7)) {
                this.f12010i.sendEmptyMessageDelayed(7, 200);
            }
        }
    }

    public final void a(List<C1038i> list) {
        if (list != null && !list.isEmpty() && list.get(0).j().p) {
            StringBuilder sb = new StringBuilder();
            for (C1038i next : list) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(P.a(next));
            }
            P.a("Dispatcher", "delivered", sb.toString());
        }
    }
}
