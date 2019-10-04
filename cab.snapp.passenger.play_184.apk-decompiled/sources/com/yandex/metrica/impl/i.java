package com.yandex.metrica.impl;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.yandex.metrica.impl.ob.ac;
import com.yandex.metrica.impl.ob.hw;
import com.yandex.metrica.impl.ob.iq;
import com.yandex.metrica.impl.ob.np;
import com.yandex.metrica.impl.s;
import java.util.List;
import java.util.Locale;
import org.a.b;
import org.a.c;

public class i {

    /* renamed from: a  reason: collision with root package name */
    String f5827a;

    /* renamed from: b  reason: collision with root package name */
    String f5828b;
    int c;
    int d;
    int e;
    private a f;
    private String g;
    private String h;
    private String i;
    private Pair<String, String> j;
    private int k;
    private String l;
    private String m;
    private long n;
    private long o;
    private t p;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        Location f5829a;

        /* renamed from: b  reason: collision with root package name */
        String f5830b;
        Integer c;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    public i() {
        this("", 0);
    }

    public i(i iVar) {
        this.f = new a((byte) 0);
        this.k = 2;
        this.p = t.UNKNOWN;
        if (iVar != null) {
            this.f5827a = iVar.b();
            this.f5828b = iVar.c();
            this.c = iVar.e();
            this.d = iVar.f();
            this.g = iVar.m();
            this.i = iVar.n();
            this.h = iVar.k();
            this.f.f5829a = iVar.g();
            this.f.f5830b = iVar.h();
            this.f.c = iVar.j();
            this.j = iVar.l();
            this.e = iVar.q();
            this.k = iVar.r();
            this.l = iVar.s();
            this.m = iVar.m;
            this.n = iVar.v();
            this.o = iVar.w();
            this.p = iVar.p;
        }
    }

    public i(String str, int i2) {
        this("", str, i2);
    }

    public i(String str, String str2, int i2) {
        this(str, str2, i2, new np());
    }

    public i(String str, String str2, int i2, np npVar) {
        this.f = new a((byte) 0);
        this.k = 2;
        this.p = t.UNKNOWN;
        this.f5827a = str2;
        this.c = i2;
        this.f5828b = str;
        this.n = npVar.c();
        this.o = npVar.a();
    }

    public String b() {
        return this.f5827a;
    }

    public i b(String str) {
        this.f5827a = str;
        return this;
    }

    public String c() {
        return this.f5828b;
    }

    public byte[] d() {
        return Base64.decode(this.f5828b, 0);
    }

    public i c(String str) {
        this.f5828b = str;
        return this;
    }

    public i a(byte[] bArr) {
        this.f5828b = new String(Base64.encode(bArr, 0));
        return this;
    }

    public int e() {
        return this.c;
    }

    public i a(int i2) {
        this.c = i2;
        return this;
    }

    public int f() {
        return this.d;
    }

    public i b(int i2) {
        this.d = i2;
        return this;
    }

    public Location g() {
        return this.f.f5829a;
    }

    /* access modifiers changed from: package-private */
    public i a(Location location) {
        this.f.f5829a = location;
        return this;
    }

    /* access modifiers changed from: package-private */
    public String h() {
        return this.f.f5830b;
    }

    /* access modifiers changed from: package-private */
    public org.a.a i() {
        if (!TextUtils.isEmpty(this.f.f5830b)) {
            try {
                return new org.a.a(this.f.f5830b);
            } catch (Exception unused) {
            }
        }
        return new org.a.a();
    }

    /* access modifiers changed from: package-private */
    public i e(String str) {
        this.f.f5830b = str;
        return this;
    }

    /* access modifiers changed from: package-private */
    public Integer j() {
        return this.f.c;
    }

    /* access modifiers changed from: package-private */
    public i a(Integer num) {
        this.f.c = num;
        return this;
    }

    /* access modifiers changed from: package-private */
    public String k() {
        return this.h;
    }

    public Pair<String, String> l() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public i f(String str) {
        this.h = str;
        return this;
    }

    /* access modifiers changed from: package-private */
    public i a(String str, String str2) {
        if (this.j == null) {
            this.j = new Pair<>(str, str2);
        }
        return this;
    }

    public String m() {
        return this.g;
    }

    public i a(String str) {
        this.g = str;
        return this;
    }

    public String n() {
        return this.i;
    }

    public i g(String str) {
        this.i = str;
        return this;
    }

    /* access modifiers changed from: protected */
    public i c(int i2) {
        this.e = i2;
        return this;
    }

    /* access modifiers changed from: protected */
    public i d(int i2) {
        this.k = i2;
        return this;
    }

    /* access modifiers changed from: protected */
    public i h(String str) {
        this.l = str;
        return this;
    }

    /* access modifiers changed from: protected */
    public i a(long j2) {
        this.n = j2;
        return this;
    }

    /* access modifiers changed from: protected */
    public i b(long j2) {
        this.o = j2;
        return this;
    }

    public boolean o() {
        return this.f5827a == null;
    }

    public boolean p() {
        return s.a.EVENT_TYPE_UNDEFINED.a() == this.c;
    }

    public int q() {
        return this.e;
    }

    public int r() {
        return this.k;
    }

    public String s() {
        return this.l;
    }

    public String t() {
        return this.m;
    }

    public i d(String str) {
        this.m = str;
        return this;
    }

    public t u() {
        return this.p;
    }

    public i a(t tVar) {
        this.p = tVar;
        return this;
    }

    public long v() {
        return this.n;
    }

    public long w() {
        return this.o;
    }

    /* access modifiers changed from: package-private */
    public Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("CounterReport.Event", this.f5827a);
        bundle2.putString("CounterReport.Value", this.f5828b);
        bundle2.putInt("CounterReport.Type", this.c);
        bundle2.putInt("CounterReport.CustomType", this.d);
        bundle2.putString("CounterReport.Wifi", this.f.f5830b);
        bundle2.putInt("CounterReport.TRUNCATED", this.e);
        bundle2.putInt("CounterReport.ConnectionType", this.k);
        bundle2.putString("CounterReport.CellularConnectionType", this.l);
        bundle2.putString("CounterReport.ProfileID", this.m);
        bundle2.putInt("CounterReport.UniquenessStatus", this.p.d);
        if (this.f.f5829a != null) {
            bundle2.putByteArray("CounterReport.GeoLocation", hw.a(this.f.f5829a));
        }
        if (this.f.c != null) {
            bundle2.putInt("CounterReport.CellId", this.f.c.intValue());
        }
        String str = this.h;
        if (str != null) {
            bundle2.putString("CounterReport.Environment", str);
        }
        String str2 = this.g;
        if (str2 != null) {
            bundle2.putString("CounterReport.UserInfo", str2);
        }
        String str3 = this.i;
        if (str3 != null) {
            bundle2.putString("CounterReport.PackageName", str3);
        }
        Pair<String, String> pair = this.j;
        if (pair != null) {
            bundle2.putString("CounterReport.AppEnvironmentDiffKey", (String) pair.first);
            bundle2.putString("CounterReport.AppEnvironmentDiffValue", (String) pair.second);
        }
        bundle2.putLong("CounterReport.CreationElapsedRealtime", this.n);
        bundle2.putLong("CounterReport.CreationTimestamp", this.o);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBundle("CounterReport.Object", bundle2);
        return bundle;
    }

    public String toString() {
        return String.format(Locale.US, "[event: %s, type: %s, value: %s]", new Object[]{this.f5827a, s.a.a(this.c).b(), this.f5828b});
    }

    public static i b(Bundle bundle) {
        Bundle bundle2 = bundle.containsKey("CounterReport.Object") ? bundle.getBundle("CounterReport.Object") : new Bundle();
        i g2 = new i().a(bundle2.getInt("CounterReport.Type", s.a.EVENT_TYPE_UNDEFINED.a())).b(bundle2.getInt("CounterReport.CustomType")).a(hw.a(bundle2.getByteArray("CounterReport.GeoLocation"))).c(bt.b(bundle2.getString("CounterReport.Value"), "")).a(bundle2.getString("CounterReport.UserInfo")).f(bundle2.getString("CounterReport.Environment")).e(bundle2.getString("CounterReport.Wifi")).a((Integer) bundle2.get("CounterReport.CellId")).b(bundle2.getString("CounterReport.Event")).g(bundle2.getString("CounterReport.PackageName"));
        g2.j = (!bundle2.containsKey("CounterReport.AppEnvironmentDiffKey") || !bundle2.containsKey("CounterReport.AppEnvironmentDiffValue")) ? null : new Pair<>(bundle2.getString("CounterReport.AppEnvironmentDiffKey"), bundle2.getString("CounterReport.AppEnvironmentDiffValue"));
        return g2.c(bundle2.getInt("CounterReport.TRUNCATED")).d(bundle2.getInt("CounterReport.ConnectionType")).h(bundle2.getString("CounterReport.CellularConnectionType")).d(bundle2.getString("CounterReport.ProfileID")).a(bundle2.getLong("CounterReport.CreationElapsedRealtime")).b(bundle2.getLong("CounterReport.CreationTimestamp")).a(t.a(Integer.valueOf(bundle2.getInt("CounterReport.UniquenessStatus"))));
    }

    public static i a(i iVar, s.a aVar) {
        i iVar2 = new i(iVar);
        iVar2.b("");
        iVar2.a(aVar.a());
        return iVar2;
    }

    public static i a(ac acVar, i iVar) {
        Context c2 = acVar.c();
        y a2 = new y().a();
        try {
            if (acVar.D()) {
                a2.a(c2);
            }
            if (acVar.k().E()) {
                a2.a(c2, acVar.k().F());
            }
        } catch (Exception unused) {
        }
        i iVar2 = new i(iVar);
        iVar2.a(s.a.EVENT_TYPE_IDENTITY.a()).c(a2.d());
        return iVar2;
    }

    public static i a(i iVar, List<iq> list) {
        String str;
        i iVar2 = new i(iVar);
        try {
            org.a.a aVar = new org.a.a();
            for (iq next : list) {
                aVar.put((Object) new c().put("name", (Object) next.b()).put("granted", next.a()));
            }
            str = new c().put("permissions", (Object) aVar).toString();
        } catch (b unused) {
            str = "";
        }
        return iVar2.a(s.a.EVENT_TYPE_PERMISSIONS.a()).c(str);
    }
}
