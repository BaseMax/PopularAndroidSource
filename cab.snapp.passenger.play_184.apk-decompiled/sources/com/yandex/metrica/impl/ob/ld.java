package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bm;
import com.yandex.metrica.impl.ob.ne;

public class ld {

    /* renamed from: a  reason: collision with root package name */
    public final String f6363a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6364b;
    @Deprecated
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;

    public ld(ne.a aVar) {
        String str;
        this.f6363a = aVar.a("dId");
        this.f6364b = aVar.a("uId");
        this.c = aVar.a("kitVer");
        this.d = aVar.a("analyticsSdkVersionName");
        this.e = aVar.a("kitBuildNumber");
        this.f = aVar.a("kitBuildType");
        this.g = aVar.a("appVer");
        this.h = aVar.optString("app_debuggable", "0");
        this.i = aVar.a("appBuild");
        this.j = aVar.a("osVer");
        this.l = aVar.a("lang");
        this.m = aVar.a("root");
        this.n = aVar.optString("app_framework", bm.b());
        int optInt = aVar.optInt("osApiLev", -1);
        String str2 = null;
        if (optInt == -1) {
            str = null;
        } else {
            str = String.valueOf(optInt);
        }
        this.k = str;
        int optInt2 = aVar.optInt("attribution_id", 0);
        this.o = optInt2 > 0 ? String.valueOf(optInt2) : str2;
    }

    public ld() {
        this.f6363a = null;
        this.f6364b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
    }
}
