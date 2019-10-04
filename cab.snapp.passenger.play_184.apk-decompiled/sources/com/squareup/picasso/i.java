package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

final class i {

    /* renamed from: a  reason: collision with root package name */
    final b f5278a = new b();

    /* renamed from: b  reason: collision with root package name */
    final Context f5279b;
    final ExecutorService c;
    final j d;
    final Map<String, c> e;
    final Map<Object, a> f;
    final Map<Object, a> g;
    final Set<Object> h;
    final Handler i;
    final Handler j;
    final d k;
    final aa l;
    final List<c> m;
    final c n;
    final boolean o;
    boolean p;

    static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final i f5281a;

        a(Looper looper, i iVar) {
            super(looper);
            this.f5281a = iVar;
        }

        public final void handleMessage(Message message) {
            final Message message2 = message;
            switch (message2.what) {
                case 1:
                    this.f5281a.a((a) message2.obj, true);
                    return;
                case 2:
                    a aVar = (a) message2.obj;
                    i iVar = this.f5281a;
                    String str = aVar.i;
                    c cVar = iVar.e.get(str);
                    if (cVar != null) {
                        cVar.a(aVar);
                        if (cVar.b()) {
                            iVar.e.remove(str);
                            if (aVar.f5254a.n) {
                                af.a("Dispatcher", "canceled", aVar.f5255b.a());
                            }
                        }
                    }
                    if (iVar.h.contains(aVar.j)) {
                        iVar.g.remove(aVar.b());
                        if (aVar.f5254a.n) {
                            af.a("Dispatcher", "canceled", aVar.f5255b.a(), "because paused request got canceled");
                        }
                    }
                    a remove = iVar.f.remove(aVar.b());
                    if (remove != null && remove.f5254a.n) {
                        af.a("Dispatcher", "canceled", remove.f5255b.a(), "from replaying");
                    }
                    return;
                case 4:
                    c cVar2 = (c) message2.obj;
                    i iVar2 = this.f5281a;
                    if (MemoryPolicy.b(cVar2.h)) {
                        iVar2.k.set(cVar2.f, cVar2.m);
                    }
                    iVar2.e.remove(cVar2.f);
                    iVar2.c(cVar2);
                    if (cVar2.f5267b.n) {
                        af.a("Dispatcher", "batched", af.a(cVar2), "for completion");
                    }
                    return;
                case 5:
                    this.f5281a.b((c) message2.obj);
                    return;
                case 6:
                    this.f5281a.a((c) message2.obj, false);
                    return;
                case 7:
                    i iVar3 = this.f5281a;
                    ArrayList arrayList = new ArrayList(iVar3.m);
                    iVar3.m.clear();
                    iVar3.j.sendMessage(iVar3.j.obtainMessage(8, arrayList));
                    i.a((List<c>) arrayList);
                    return;
                case 9:
                    this.f5281a.a((NetworkInfo) message2.obj);
                    return;
                case 10:
                    this.f5281a.p = message2.arg1 == 1;
                    return;
                case 11:
                    Object obj = message2.obj;
                    i iVar4 = this.f5281a;
                    if (iVar4.h.add(obj)) {
                        Iterator<c> it = iVar4.e.values().iterator();
                        while (it.hasNext()) {
                            c next = it.next();
                            boolean z = next.f5267b.n;
                            a aVar2 = next.k;
                            List<a> list = next.l;
                            boolean z2 = list != null && !list.isEmpty();
                            if (aVar2 != null || z2) {
                                if (aVar2 != null && aVar2.j.equals(obj)) {
                                    next.a(aVar2);
                                    iVar4.g.put(aVar2.b(), aVar2);
                                    if (z) {
                                        af.a("Dispatcher", "paused", aVar2.f5255b.a(), "because tag '" + obj + "' was paused");
                                    }
                                }
                                if (z2) {
                                    for (int size = list.size() - 1; size >= 0; size--) {
                                        a aVar3 = list.get(size);
                                        if (aVar3.j.equals(obj)) {
                                            next.a(aVar3);
                                            iVar4.g.put(aVar3.b(), aVar3);
                                            if (z) {
                                                af.a("Dispatcher", "paused", aVar3.f5255b.a(), "because tag '" + obj + "' was paused");
                                            }
                                        }
                                    }
                                }
                                if (next.b()) {
                                    it.remove();
                                    if (z) {
                                        af.a("Dispatcher", "canceled", af.a(next), "all actions paused");
                                    }
                                }
                            }
                        }
                    }
                    return;
                case 12:
                    this.f5281a.a(message2.obj);
                    return;
                default:
                    Picasso.f5244a.post(new Runnable() {
                        public final void run() {
                            throw new AssertionError("Unknown handler message received: " + message2.what);
                        }
                    });
                    return;
            }
        }
    }

    static class b extends HandlerThread {
        b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    static class c extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        final i f5284a;

        c(i iVar) {
            this.f5284a = iVar;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if (!"android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                        i iVar = this.f5284a;
                        iVar.i.sendMessage(iVar.i.obtainMessage(9, ((ConnectivityManager) af.a(context, "connectivity")).getActiveNetworkInfo()));
                    }
                } else if (intent.hasExtra("state")) {
                    i iVar2 = this.f5284a;
                    iVar2.i.sendMessage(iVar2.i.obtainMessage(10, intent.getBooleanExtra("state", false) ? 1 : 0, 0));
                }
            }
        }
    }

    i(Context context, ExecutorService executorService, Handler handler, j jVar, d dVar, aa aaVar) {
        this.f5278a.start();
        af.a(this.f5278a.getLooper());
        this.f5279b = context;
        this.c = executorService;
        this.e = new LinkedHashMap();
        this.f = new WeakHashMap();
        this.g = new WeakHashMap();
        this.h = new LinkedHashSet();
        this.i = new a(this.f5278a.getLooper(), this);
        this.d = jVar;
        this.j = handler;
        this.k = dVar;
        this.l = aaVar;
        this.m = new ArrayList(4);
        this.p = af.c(this.f5279b);
        this.o = af.b(context, "android.permission.ACCESS_NETWORK_STATE");
        this.n = new c(this);
        c cVar = this.n;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        if (cVar.f5284a.o) {
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        cVar.f5284a.f5279b.registerReceiver(cVar, intentFilter);
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    /* access modifiers changed from: package-private */
    public final void b(a aVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    /* access modifiers changed from: package-private */
    public final void a(c cVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar, boolean z) {
        if (this.h.contains(aVar.j)) {
            this.g.put(aVar.b(), aVar);
            if (aVar.f5254a.n) {
                String a2 = aVar.f5255b.a();
                af.a("Dispatcher", "paused", a2, "because tag '" + aVar.j + "' is paused");
            }
            return;
        }
        c cVar = this.e.get(aVar.i);
        if (cVar != null) {
            boolean z2 = cVar.f5267b.n;
            w wVar = aVar.f5255b;
            if (cVar.k == null) {
                cVar.k = aVar;
                if (z2) {
                    if (cVar.l == null || cVar.l.isEmpty()) {
                        af.a("Hunter", "joined", wVar.a(), "to empty hunter");
                    } else {
                        af.a("Hunter", "joined", wVar.a(), af.a(cVar, "to "));
                    }
                }
                return;
            }
            if (cVar.l == null) {
                cVar.l = new ArrayList(3);
            }
            cVar.l.add(aVar);
            if (z2) {
                af.a("Hunter", "joined", wVar.a(), af.a(cVar, "to "));
            }
            Picasso.Priority priority = aVar.f5255b.priority;
            if (priority.ordinal() > cVar.s.ordinal()) {
                cVar.s = priority;
            }
        } else if (this.c.isShutdown()) {
            if (aVar.f5254a.n) {
                af.a("Dispatcher", "ignored", aVar.f5255b.a(), "because shut down");
            }
        } else {
            c a3 = c.a(aVar.f5254a, this, this.k, this.l, aVar);
            a3.n = this.c.submit(a3);
            this.e.put(aVar.i, a3);
            if (z) {
                this.f.remove(aVar.b());
            }
            if (aVar.f5254a.n) {
                af.a("Dispatcher", "enqueued", aVar.f5255b.a());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Object obj) {
        if (this.h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<a> it = this.g.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.j.equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                Handler handler = this.j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(c cVar) {
        boolean z;
        if (!cVar.c()) {
            if (this.c.isShutdown()) {
                a(cVar, false);
                return;
            }
            NetworkInfo networkInfo = null;
            if (this.o) {
                networkInfo = ((ConnectivityManager) af.a(this.f5279b, "connectivity")).getActiveNetworkInfo();
            }
            boolean z2 = true;
            if (!(cVar.r > 0)) {
                z = false;
            } else {
                cVar.r--;
                z = cVar.j.a(networkInfo);
            }
            if (z) {
                if (cVar.f5267b.n) {
                    af.a("Dispatcher", "retrying", af.a(cVar));
                }
                if (cVar.p instanceof r.a) {
                    cVar.i |= NetworkPolicy.NO_CACHE.f5243a;
                }
                cVar.n = this.c.submit(cVar);
                return;
            }
            if (!this.o || !cVar.j.b()) {
                z2 = false;
            }
            a(cVar, z2);
            if (z2) {
                a aVar = cVar.k;
                if (aVar != null) {
                    c(aVar);
                }
                List<a> list = cVar.l;
                if (list != null) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        c(list.get(i2));
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(NetworkInfo networkInfo) {
        ExecutorService executorService = this.c;
        if (executorService instanceof u) {
            u uVar = (u) executorService;
            if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
                int type = networkInfo.getType();
                if (type == 0) {
                    int subtype = networkInfo.getSubtype();
                    switch (subtype) {
                        case 1:
                        case 2:
                            uVar.a(1);
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            uVar.a(2);
                            break;
                        default:
                            switch (subtype) {
                                case 12:
                                    break;
                                case 13:
                                case 14:
                                case 15:
                                    uVar.a(3);
                                    break;
                                default:
                                    uVar.a(3);
                                    break;
                            }
                            uVar.a(2);
                            break;
                    }
                } else if (type == 1 || type == 6 || type == 9) {
                    uVar.a(4);
                } else {
                    uVar.a(3);
                }
            } else {
                uVar.a(3);
            }
        }
        if (networkInfo != null && networkInfo.isConnected() && !this.f.isEmpty()) {
            Iterator<a> it = this.f.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                it.remove();
                if (next.f5254a.n) {
                    af.a("Dispatcher", "replaying", next.f5255b.a());
                }
                a(next, false);
            }
        }
    }

    private void c(a aVar) {
        Object b2 = aVar.b();
        if (b2 != null) {
            aVar.k = true;
            this.f.put(b2, aVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void c(c cVar) {
        if (!cVar.c()) {
            if (cVar.m != null) {
                cVar.m.prepareToDraw();
            }
            this.m.add(cVar);
            if (!this.i.hasMessages(7)) {
                this.i.sendEmptyMessageDelayed(7, 200);
            }
        }
    }

    static void a(List<c> list) {
        if (!list.isEmpty() && list.get(0).f5267b.n) {
            StringBuilder sb = new StringBuilder();
            for (c next : list) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(af.a(next));
            }
            af.a("Dispatcher", "delivered", sb.toString());
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(c cVar, boolean z) {
        if (cVar.f5267b.n) {
            String a2 = af.a(cVar);
            StringBuilder sb = new StringBuilder("for error");
            sb.append(z ? " (will replay)" : "");
            af.a("Dispatcher", "batched", a2, sb.toString());
        }
        this.e.remove(cVar.f);
        c(cVar);
    }
}
