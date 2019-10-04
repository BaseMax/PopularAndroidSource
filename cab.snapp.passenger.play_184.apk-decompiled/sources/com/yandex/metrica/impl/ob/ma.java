package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bq;
import java.util.Collections;
import java.util.List;

public class ma {

    /* renamed from: a  reason: collision with root package name */
    public final String f6416a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6417b;
    public final String c;
    public final List<String> d;
    public final String e;
    public final String f;
    public final List<String> g;
    public final List<String> h;
    public final List<String> i;
    public final List<String> j;
    public final String k;
    public final String l;
    public final lp m;
    public final hq n;
    public final hl o;
    public final lr p;
    public final String q;
    public final long r;
    public final boolean s;
    public final boolean t;
    public final List<bq.a> u;
    public final String v;
    public final mc w;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f6418a;

        /* renamed from: b  reason: collision with root package name */
        String f6419b;
        String c;
        List<String> d;
        String e;
        String f;
        List<String> g;
        List<String> h;
        List<String> i;
        List<String> j;
        String k;
        String l;
        final lp m;
        hq n;
        hl o;
        lr p;
        long q;
        boolean r;
        String s;
        boolean t;
        mc u;
        /* access modifiers changed from: private */
        public List<bq.a> v;
        /* access modifiers changed from: private */
        public String w;

        public a(lp lpVar) {
            this.m = lpVar;
        }

        public a a(String str) {
            this.f6418a = str;
            return this;
        }

        public a a(hb hbVar) {
            if (hbVar != null) {
                this.f6419b = hbVar.f6085a;
                this.c = hbVar.f6086b;
            }
            return this;
        }

        public a a(List<String> list) {
            this.d = list;
            return this;
        }

        public a b(String str) {
            this.e = str;
            return this;
        }

        public a c(String str) {
            this.f = str;
            return this;
        }

        public a b(List<String> list) {
            this.g = list;
            return this;
        }

        public a c(List<String> list) {
            this.h = list;
            return this;
        }

        public a d(List<String> list) {
            this.i = list;
            return this;
        }

        public a e(List<String> list) {
            this.j = list;
            return this;
        }

        public a d(String str) {
            this.k = str;
            return this;
        }

        public a e(String str) {
            this.l = str;
            return this;
        }

        public a a(hq hqVar) {
            this.n = hqVar;
            return this;
        }

        public a a(hl hlVar) {
            this.o = hlVar;
            return this;
        }

        public a a(lr lrVar) {
            this.p = lrVar;
            return this;
        }

        public a f(String str) {
            this.s = str;
            return this;
        }

        public a a(long j2) {
            this.q = j2;
            return this;
        }

        public a a(boolean z) {
            this.r = z;
            return this;
        }

        public a b(boolean z) {
            this.t = z;
            return this;
        }

        public a f(List<bq.a> list) {
            this.v = list;
            return this;
        }

        public a g(String str) {
            this.w = str;
            return this;
        }

        public a a(mc mcVar) {
            this.u = mcVar;
            return this;
        }

        public ma a() {
            return new ma(this, (byte) 0);
        }
    }

    /* synthetic */ ma(a aVar, byte b2) {
        this(aVar);
    }

    private ma(a aVar) {
        List<String> list;
        List<String> list2;
        List<String> list3;
        this.f6416a = aVar.f6418a;
        this.f6417b = aVar.f6419b;
        this.c = aVar.c;
        List<bq.a> list4 = null;
        this.d = aVar.d == null ? null : Collections.unmodifiableList(aVar.d);
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g == null ? null : Collections.unmodifiableList(aVar.g);
        if (aVar.h == null) {
            list = null;
        } else {
            list = Collections.unmodifiableList(aVar.h);
        }
        this.h = list;
        if (aVar.i == null) {
            list2 = null;
        } else {
            list2 = Collections.unmodifiableList(aVar.i);
        }
        this.i = list2;
        if (aVar.j == null) {
            list3 = null;
        } else {
            list3 = Collections.unmodifiableList(aVar.j);
        }
        this.j = list3;
        this.k = aVar.k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
        this.q = aVar.s;
        this.r = aVar.q;
        this.s = aVar.r;
        this.t = aVar.t;
        this.u = aVar.v != null ? Collections.unmodifiableList(aVar.v) : list4;
        this.v = aVar.w;
        this.w = aVar.u;
    }

    public a a() {
        return new a(this.m).a(this.f6416a).a(new hb(this.f6417b, this.c)).c(this.h).d(this.i).d(this.k).a(this.d).b(this.g).b(this.e).c(this.f).e(this.j).f(this.q).a(this.n).a(this.o).a(this.p).e(this.l).b(this.t).a(this.r).a(this.s).f(this.u).g(this.v).a(this.w);
    }

    public String toString() {
        return "StartupState{uuid='" + this.f6416a + '\'' + ", deviceId='" + this.f6417b + '\'' + ", deviceIDHash='" + this.c + '\'' + ", reportUrls=" + this.d + ", getAdUrl='" + this.e + '\'' + ", reportAdUrl='" + this.f + '\'' + ", locationUrls=" + this.g + ", hostUrlsFromStartup=" + this.h + ", hostUrlsFromClient=" + this.i + ", diagnosticUrls=" + this.j + ", encodedClidsFromResponse='" + this.k + '\'' + ", lastStartupRequestClids='" + this.l + '\'' + ", collectingFlags=" + this.m + ", foregroundLocationCollectionConfig=" + this.n + ", backgroundLocationCollectionConfig=" + this.o + ", socketConfig=" + this.p + ", distributionReferrer='" + this.q + '\'' + ", obtainTime=" + this.r + ", hadFirstStartup=" + this.s + ", startupClidsMatchWithAppClids=" + this.t + ", requests=" + this.u + ", countryInit='" + this.v + '\'' + ", statSending=" + this.w + '}';
    }
}
