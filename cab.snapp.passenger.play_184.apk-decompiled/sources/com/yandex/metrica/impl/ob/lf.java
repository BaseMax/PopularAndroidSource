package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.bm;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.lc;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class lf extends lc {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f6368a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f6369b;
    /* access modifiers changed from: private */
    public String c;
    /* access modifiers changed from: private */
    public boolean d;
    private Map<String, String> e;
    private List<String> f;
    private boolean g;
    private boolean h;
    private String i;

    public static class a extends kz.a {

        /* renamed from: a  reason: collision with root package name */
        public final String f6370a;
        public final Map<String, String> e;
        public final boolean f;
        public final List<String> g;

        public a(String str, String str2, String str3, String str4, Map<String, String> map, boolean z, List<String> list) {
            super(str, str2, str3);
            this.f6370a = str4;
            this.e = map;
            this.f = z;
            this.g = list;
        }
    }

    public static class b extends lc.a<lf, a> {
        public b(Context context, String str) {
            super(context, str);
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public lf b() {
            return new lf((byte) 0);
        }

        /* renamed from: a */
        public lf c(kz.c<a> cVar) {
            lf lfVar = (lf) super.c(cVar);
            lfVar.d = bm.c();
            a(lfVar, cVar.f6352a);
            lfVar.c = ((a) cVar.f6353b).f6370a;
            lfVar.a(((a) cVar.f6353b).e);
            lfVar.b(((a) cVar.f6353b).f);
            lfVar.c(((a) cVar.f6353b).g);
            lfVar.a(cVar.f6352a.s);
            lfVar.a(cVar.f6352a.v);
            return lfVar;
        }

        /* access modifiers changed from: package-private */
        public void a(lf lfVar, ma maVar) {
            lfVar.b(maVar.h);
            lfVar.a(maVar.i);
        }
    }

    /* synthetic */ lf(byte b2) {
        this();
    }

    private lf() {
    }

    public List<String> a() {
        ArrayList arrayList = new ArrayList();
        if (!bv.a((Collection) this.f6368a)) {
            arrayList.addAll(this.f6368a);
        }
        if (!bv.a((Collection) this.f6369b)) {
            arrayList.addAll(this.f6369b);
        }
        arrayList.add("https://startup.mobile.yandex.net/");
        return arrayList;
    }

    public boolean b() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        this.h = z;
    }

    public List<String> D() {
        return this.f6369b;
    }

    /* access modifiers changed from: package-private */
    public void a(List<String> list) {
        this.f6369b = list;
    }

    public Map<String, String> E() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public void a(Map<String, String> map) {
        this.e = map;
    }

    /* access modifiers changed from: package-private */
    public void b(List<String> list) {
        this.f6368a = list;
    }

    public String F() {
        return this.c;
    }

    public boolean G() {
        return this.d;
    }

    public List<String> H() {
        return this.f;
    }

    public void c(List<String> list) {
        this.f = list;
    }

    public boolean I() {
        return this.g;
    }

    public void b(boolean z) {
        this.g = z;
    }

    public String J() {
        return this.i;
    }

    public void a(String str) {
        this.i = str;
    }

    public String toString() {
        return "StartupRequestConfig{mStartupHostsFromStartup=" + this.f6368a + ", mStartupHostsFromClient=" + this.f6369b + ", mDistributionReferrer='" + this.c + '\'' + ", mConfigurationServiceExists=" + this.d + ", mClidsFromClient=" + this.e + ", mNewCustomHosts=" + this.f + ", mHasNewCustomHosts=" + this.g + ", mSuccessfulStartup=" + this.h + ", mCountryInit='" + this.i + '\'' + '}';
    }
}
