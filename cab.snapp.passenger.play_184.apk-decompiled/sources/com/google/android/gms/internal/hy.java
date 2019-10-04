package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;

final class hy {
    private long A;

    /* renamed from: a  reason: collision with root package name */
    private final jx f3198a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3199b;
    private String c;
    private String d;
    private String e;
    private String f;
    private long g;
    private long h;
    private long i;
    private String j;
    private long k;
    private String l;
    private long m;
    private long n;
    private boolean o;
    private long p;
    private boolean q;
    private long r;
    private long s;
    private long t;
    private long u;
    private long v;
    private long w;
    private String x;
    private boolean y;
    private long z;

    hy(jx jxVar, String str) {
        ap.checkNotNull(jxVar);
        ap.zzgm(str);
        this.f3198a = jxVar;
        this.f3199b = str;
        this.f3198a.zzawx().zzve();
    }

    public final String getAppId() {
        this.f3198a.zzawx().zzve();
        return this.f3199b;
    }

    public final String getAppInstanceId() {
        this.f3198a.zzawx().zzve();
        return this.c;
    }

    public final String getGmpAppId() {
        this.f3198a.zzawx().zzve();
        return this.d;
    }

    public final void setAppVersion(String str) {
        this.f3198a.zzawx().zzve();
        this.y |= !na.zzas(this.j, str);
        this.j = str;
    }

    public final void setMeasurementEnabled(boolean z2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.o != z2;
        this.o = z2;
    }

    public final void zzal(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.h != j2;
        this.h = j2;
    }

    public final void zzam(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.i != j2;
        this.i = j2;
    }

    public final void zzan(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.k != j2;
        this.k = j2;
    }

    public final void zzao(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.m != j2;
        this.m = j2;
    }

    public final void zzap(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.n != j2;
        this.n = j2;
    }

    public final void zzaq(long j2) {
        boolean z2 = true;
        ap.checkArgument(j2 >= 0);
        this.f3198a.zzawx().zzve();
        boolean z3 = this.y;
        if (this.g == j2) {
            z2 = false;
        }
        this.y = z2 | z3;
        this.g = j2;
    }

    public final void zzar(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.z != j2;
        this.z = j2;
    }

    public final void zzas(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.A != j2;
        this.A = j2;
    }

    public final void zzat(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.r != j2;
        this.r = j2;
    }

    public final void zzau(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.s != j2;
        this.s = j2;
    }

    public final void zzav(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.t != j2;
        this.t = j2;
    }

    public final void zzaw(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.u != j2;
        this.u = j2;
    }

    public final void zzax(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.w != j2;
        this.w = j2;
    }

    public final void zzaxb() {
        this.f3198a.zzawx().zzve();
        this.y = false;
    }

    public final String zzaxc() {
        this.f3198a.zzawx().zzve();
        return this.e;
    }

    public final String zzaxd() {
        this.f3198a.zzawx().zzve();
        return this.f;
    }

    public final long zzaxe() {
        this.f3198a.zzawx().zzve();
        return this.h;
    }

    public final long zzaxf() {
        this.f3198a.zzawx().zzve();
        return this.i;
    }

    public final long zzaxg() {
        this.f3198a.zzawx().zzve();
        return this.k;
    }

    public final String zzaxh() {
        this.f3198a.zzawx().zzve();
        return this.l;
    }

    public final long zzaxi() {
        this.f3198a.zzawx().zzve();
        return this.m;
    }

    public final long zzaxj() {
        this.f3198a.zzawx().zzve();
        return this.n;
    }

    public final boolean zzaxk() {
        this.f3198a.zzawx().zzve();
        return this.o;
    }

    public final long zzaxl() {
        this.f3198a.zzawx().zzve();
        return this.g;
    }

    public final long zzaxm() {
        this.f3198a.zzawx().zzve();
        return this.z;
    }

    public final long zzaxn() {
        this.f3198a.zzawx().zzve();
        return this.A;
    }

    public final void zzaxo() {
        this.f3198a.zzawx().zzve();
        long j2 = this.g + 1;
        if (j2 > 2147483647L) {
            this.f3198a.zzawy().zzazf().zzj("Bundle index overflow. appId", iz.a(this.f3199b));
            j2 = 0;
        }
        this.y = true;
        this.g = j2;
    }

    public final long zzaxp() {
        this.f3198a.zzawx().zzve();
        return this.r;
    }

    public final long zzaxq() {
        this.f3198a.zzawx().zzve();
        return this.s;
    }

    public final long zzaxr() {
        this.f3198a.zzawx().zzve();
        return this.t;
    }

    public final long zzaxs() {
        this.f3198a.zzawx().zzve();
        return this.u;
    }

    public final long zzaxt() {
        this.f3198a.zzawx().zzve();
        return this.w;
    }

    public final long zzaxu() {
        this.f3198a.zzawx().zzve();
        return this.v;
    }

    public final String zzaxv() {
        this.f3198a.zzawx().zzve();
        return this.x;
    }

    public final String zzaxw() {
        this.f3198a.zzawx().zzve();
        String str = this.x;
        zziw(null);
        return str;
    }

    public final long zzaxx() {
        this.f3198a.zzawx().zzve();
        return this.p;
    }

    public final boolean zzaxy() {
        this.f3198a.zzawx().zzve();
        return this.q;
    }

    public final void zzay(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.v != j2;
        this.v = j2;
    }

    public final void zzaz(long j2) {
        this.f3198a.zzawx().zzve();
        this.y |= this.p != j2;
        this.p = j2;
    }

    public final void zzbl(boolean z2) {
        this.f3198a.zzawx().zzve();
        this.y = this.q != z2;
        this.q = z2;
    }

    public final void zzir(String str) {
        this.f3198a.zzawx().zzve();
        this.y |= !na.zzas(this.c, str);
        this.c = str;
    }

    public final void zzis(String str) {
        this.f3198a.zzawx().zzve();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.y |= !na.zzas(this.d, str);
        this.d = str;
    }

    public final void zzit(String str) {
        this.f3198a.zzawx().zzve();
        this.y |= !na.zzas(this.e, str);
        this.e = str;
    }

    public final void zziu(String str) {
        this.f3198a.zzawx().zzve();
        this.y |= !na.zzas(this.f, str);
        this.f = str;
    }

    public final void zziv(String str) {
        this.f3198a.zzawx().zzve();
        this.y |= !na.zzas(this.l, str);
        this.l = str;
    }

    public final void zziw(String str) {
        this.f3198a.zzawx().zzve();
        this.y |= !na.zzas(this.x, str);
        this.x = str;
    }

    public final String zzvj() {
        this.f3198a.zzawx().zzve();
        return this.j;
    }
}
