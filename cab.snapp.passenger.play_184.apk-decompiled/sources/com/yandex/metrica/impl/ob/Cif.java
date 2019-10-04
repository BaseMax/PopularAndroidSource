package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.yandex.metrica.impl.ob.if  reason: invalid class name */
class Cif {

    /* renamed from: a  reason: collision with root package name */
    private c f6153a;

    /* renamed from: b  reason: collision with root package name */
    private a f6154b;
    private b c;
    private Context d;
    private hq e;
    private ma f;
    private ih g;
    private ii h;
    private hm i;
    private hr j;
    private Map<String, hy> k;

    /* renamed from: com.yandex.metrica.impl.ob.if$a */
    public static class a {
        public hr a(hn hnVar) {
            return new hr(hnVar);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.if$b */
    public static class b {
        public hy a(String str, hq hqVar, ih ihVar, ii iiVar, hm hmVar) {
            hy hyVar = new hy(str, hqVar, ihVar, iiVar, hmVar);
            return hyVar;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.if$c */
    public static class c {
        public ih a(Context context, hn hnVar) {
            return new ih(context, hnVar);
        }
    }

    public Cif(Context context, ma maVar, hq hqVar, ii iiVar, hm hmVar) {
        this(context, maVar, hqVar, new c(), new a(), new b(), iiVar, hmVar);
    }

    public void a(Location location) {
        String provider = location.getProvider();
        hy hyVar = this.k.get(provider);
        if (hyVar == null) {
            if (this.g == null) {
                this.g = this.f6153a.a(this.d, null);
            }
            if (this.j == null) {
                this.j = this.f6154b.a(this.g);
            }
            hyVar = this.c.a(provider, this.e, this.g, this.h, this.i);
            this.k.put(provider, hyVar);
        } else {
            hyVar.a(this.f, this.e);
        }
        hyVar.a(location);
    }

    public Location a() {
        hr hrVar = this.j;
        if (hrVar == null) {
            return null;
        }
        return hrVar.a();
    }

    public void a(ma maVar, hq hqVar) {
        this.f = maVar;
        this.e = hqVar;
    }

    Cif(Context context, ma maVar, hq hqVar, c cVar, a aVar, b bVar, ii iiVar, hm hmVar) {
        this.k = new HashMap();
        this.d = context;
        this.f = maVar;
        this.e = hqVar;
        this.f6153a = cVar;
        this.f6154b = aVar;
        this.c = bVar;
        this.h = iiVar;
        this.i = hmVar;
    }
}
