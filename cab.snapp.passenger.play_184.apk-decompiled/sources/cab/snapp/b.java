package cab.snapp;

import android.content.Context;
import cab.snapp.a.a;
import cab.snapp.d.c.c;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.JsonObject;
import com.google.gson.e;
import io.reactivex.z;
import java.util.HashMap;

public final class b {
    private static boolean d = false;
    private static io.reactivex.j.b<String> g = io.reactivex.j.b.create();

    /* renamed from: a  reason: collision with root package name */
    c f191a;

    /* renamed from: b  reason: collision with root package name */
    HashMap<String, d> f192b = new HashMap<>();
    a c = new a() {
        public final void onEvent(a aVar) {
            new StringBuilder("onEvent: ").append(aVar);
            if (aVar != null && b.this.f != null) {
                b.this.f.onNext(aVar);
                b.a(b.this, aVar);
            }
        }
    };
    private Context e;
    /* access modifiers changed from: private */
    public io.reactivex.j.b<a> f = io.reactivex.j.b.create();

    public b(Context context, boolean z, c cVar) {
        if (cVar != null) {
            d = z;
            this.f191a = cVar;
            this.e = context;
            init();
        }
    }

    public final void init() {
        if (this.f191a.getIntervalPeriod() != 0 && !this.f192b.containsKey("POLING")) {
            cab.snapp.d.b.a aVar = new cab.snapp.d.b.a("POLING", this.f191a, this.c);
            aVar.setup();
            this.f192b.put("POLING", aVar);
        }
        if (this.f191a.getSideRequestIntervalPeriod() != 0 && !this.f192b.containsKey("POLUNG_SIDE_REQUEST")) {
            cab.snapp.d.b.a aVar2 = new cab.snapp.d.b.a("POLUNG_SIDE_REQUEST", this.f191a, this.c);
            aVar2.setup();
            this.f192b.put("POLUNG_SIDE_REQUEST", aVar2);
        }
        if (this.f191a.getPusherConfig() != null && !this.f192b.containsKey(c.TAG)) {
            c cVar = new c(this.f191a, this.c);
            cVar.setup();
            this.f192b.put(c.TAG, cVar);
        }
        if (this.f191a.getEmqConnectionData() != null && !this.f192b.containsKey(cab.snapp.d.a.c.TAG)) {
            cab.snapp.d.a.c cVar2 = new cab.snapp.d.a.c(this.e, this.f191a.getEmqConnectionData(), this.c);
            cVar2.setup();
            this.f192b.put(cab.snapp.d.a.c.TAG, cVar2);
        }
    }

    private d a(String str) {
        HashMap<String, d> hashMap = this.f192b;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.f192b.get(str);
    }

    public final z<a> getObservable() {
        return this.f;
    }

    public static z<String> getLogChannel() {
        return g;
    }

    public final boolean isChannelInitilized(String str) {
        HashMap<String, d> hashMap = this.f192b;
        return hashMap != null && hashMap.containsKey(str);
    }

    public final void publish(JsonObject jsonObject, String... strArr) {
        a aVar = new a();
        aVar.setEventType("PUBLISH");
        aVar.setData(jsonObject);
        if (strArr.length <= 0 || this.f192b == null) {
            HashMap<String, d> hashMap = this.f192b;
            if (hashMap != null) {
                for (d next : hashMap.values()) {
                    if (next != null && next.isStarted()) {
                        next.publish(new e().toJson((Object) aVar));
                    }
                }
            }
            return;
        }
        for (String str : strArr) {
            d a2 = a(str);
            if (a2 == null || !a2.isStarted()) {
                StringBuilder sb = new StringBuilder("Channel ");
                sb.append(str);
                sb.append(" was not implemented");
            } else {
                a2.publish(new e().toJson((Object) aVar));
            }
        }
    }

    public final void start(String... strArr) {
        if (strArr.length <= 0 || this.f192b == null) {
            HashMap<String, d> hashMap = this.f192b;
            if (hashMap != null) {
                for (d next : hashMap.values()) {
                    if (next != null && !next.isStarted()) {
                        next.start();
                    }
                }
            }
            return;
        }
        for (String str : strArr) {
            d a2 = a(str);
            if (a2 == null || a2.isStarted()) {
                StringBuilder sb = new StringBuilder("Channel ");
                sb.append(str);
                sb.append(" was not implemented");
            } else {
                a2.start();
            }
        }
    }

    public final void stop(String... strArr) {
        if (strArr.length <= 0 || this.f192b == null) {
            HashMap<String, d> hashMap = this.f192b;
            if (hashMap != null) {
                for (d next : hashMap.values()) {
                    if (next != null) {
                        next.stop();
                    }
                }
            }
            return;
        }
        for (String str : strArr) {
            d a2 = a(str);
            if (a2 != null) {
                a2.stop();
            } else {
                StringBuilder sb = new StringBuilder("Channel ");
                sb.append(str);
                sb.append(" was not implemented");
            }
        }
    }

    public final void destroy() {
        stop(new String[0]);
        io.reactivex.j.b<a> bVar = this.f;
        if (bVar != null) {
            bVar.onComplete();
        }
    }

    public static void log(String str, String str2) {
        if (d) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" -> ");
            sb.append(str2);
            io.reactivex.j.b<String> bVar = g;
            if (bVar != null) {
                bVar.onNext(str + " -> " + str2);
            }
        }
    }

    static /* synthetic */ void a(b bVar, a aVar) {
        if (bVar.f191a != null && aVar != null && aVar.getAckId() > 0 && bVar.f191a.getAckRequest(aVar) != null) {
            bVar.f191a.getAckRequest(aVar).performRequest(new cab.snapp.snappnetwork.a.a<f>() {
                public final void onSuccess(f fVar) {
                    super.onSuccess(fVar);
                }
            });
        }
    }
}
