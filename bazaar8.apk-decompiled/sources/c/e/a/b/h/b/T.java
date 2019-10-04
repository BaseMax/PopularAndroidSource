package c.e.a.b.h.b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import b.f.C0243b;
import c.e.a.b.d.d.r;
import c.e.a.b.g.f.C0799aa;
import c.e.a.b.g.f.F;
import c.e.a.b.g.f.Pc;
import c.e.a.b.g.f.Qc;
import c.e.a.b.g.f.S;
import c.e.a.b.g.f.U;
import c.e.a.b.g.f.X;
import c.e.a.b.g.f.Z;
import java.io.IOException;
import java.util.Map;

public final class T extends Sb implements rc {

    /* renamed from: d  reason: collision with root package name */
    public static int f10733d = 65535;

    /* renamed from: e  reason: collision with root package name */
    public static int f10734e = 2;

    /* renamed from: f  reason: collision with root package name */
    public final Map<String, Map<String, String>> f10735f = new C0243b();

    /* renamed from: g  reason: collision with root package name */
    public final Map<String, Map<String, Boolean>> f10736g = new C0243b();

    /* renamed from: h  reason: collision with root package name */
    public final Map<String, Map<String, Boolean>> f10737h = new C0243b();

    /* renamed from: i  reason: collision with root package name */
    public final Map<String, C0799aa> f10738i = new C0243b();

    /* renamed from: j  reason: collision with root package name */
    public final Map<String, Map<String, Integer>> f10739j = new C0243b();

    /* renamed from: k  reason: collision with root package name */
    public final Map<String, String> f10740k = new C0243b();

    public T(Tb tb) {
        super(tb);
    }

    public final void a(String str) {
        s();
        l();
        r.b(str);
        if (this.f10738i.get(str) == null) {
            byte[] d2 = p().d(str);
            if (d2 == null) {
                this.f10735f.put(str, null);
                this.f10736g.put(str, null);
                this.f10737h.put(str, null);
                this.f10738i.put(str, null);
                this.f10740k.put(str, null);
                this.f10739j.put(str, null);
                return;
            }
            C0799aa a2 = a(str, d2);
            this.f10735f.put(str, a(a2));
            a(str, a2);
            this.f10738i.put(str, a2);
            this.f10740k.put(str, null);
        }
    }

    public final C0799aa b(String str) {
        s();
        l();
        r.b(str);
        a(str);
        return this.f10738i.get(str);
    }

    public final String c(String str) {
        l();
        return this.f10740k.get(str);
    }

    public final void d(String str) {
        l();
        this.f10740k.put(str, null);
    }

    public final void e(String str) {
        l();
        this.f10738i.remove(str);
    }

    public final boolean f(String str) {
        l();
        Boolean bool = b(str).f10322j;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final long g(String str) {
        String a2 = a(str, "measurement.account.time_zone_offset_minutes");
        if (!TextUtils.isEmpty(a2)) {
            try {
                return Long.parseLong(a2);
            } catch (NumberFormatException e2) {
                e().w().a("Unable to parse timezone offset. appId", C0957t.a(str), e2);
            }
        }
        return 0;
    }

    public final boolean h(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean i(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_public"));
    }

    public final boolean u() {
        return false;
    }

    public final boolean c(String str, String str2) {
        l();
        a(str);
        if ("ecommerce_purchase".equals(str2)) {
            return true;
        }
        Map map = this.f10737h.get(str);
        if (map == null) {
            return false;
        }
        Boolean bool = (Boolean) map.get(str2);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final int d(String str, String str2) {
        l();
        a(str);
        Map map = this.f10739j.get(str);
        if (map == null) {
            return 1;
        }
        Integer num = (Integer) map.get(str2);
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }

    public final boolean b(String str, String str2) {
        l();
        a(str);
        if (h(str) && cc.g(str2)) {
            return true;
        }
        if (i(str) && cc.a(str2)) {
            return true;
        }
        Map map = this.f10736g.get(str);
        if (map == null) {
            return false;
        }
        Boolean bool = (Boolean) map.get(str2);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final String a(String str, String str2) {
        l();
        a(str);
        Map map = this.f10735f.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    public static Map<String, String> a(C0799aa aaVar) {
        C0243b bVar = new C0243b();
        if (aaVar != null) {
            F[] fArr = aaVar.f10318f;
            if (fArr != null) {
                for (F f2 : fArr) {
                    if (f2 != null) {
                        bVar.put(f2.q(), f2.r());
                    }
                }
            }
        }
        return bVar;
    }

    public final void a(String str, C0799aa aaVar) {
        C0243b bVar = new C0243b();
        C0243b bVar2 = new C0243b();
        C0243b bVar3 = new C0243b();
        if (aaVar != null) {
            Z[] zArr = aaVar.f10319g;
            if (zArr != null) {
                for (Z z : zArr) {
                    if (TextUtils.isEmpty(z.f10297d)) {
                        e().w().a("EventConfig contained null event name");
                    } else {
                        String a2 = C0973ya.a(z.f10297d);
                        if (!TextUtils.isEmpty(a2)) {
                            z.f10297d = a2;
                        }
                        bVar.put(z.f10297d, z.f10298e);
                        bVar2.put(z.f10297d, z.f10299f);
                        Integer num = z.f10300g;
                        if (num != null) {
                            if (num.intValue() < f10734e || z.f10300g.intValue() > f10733d) {
                                e().w().a("Invalid sampling rate. Event name, sample rate", z.f10297d, z.f10300g);
                            } else {
                                bVar3.put(z.f10297d, z.f10300g);
                            }
                        }
                    }
                }
            }
        }
        this.f10736g.put(str, bVar);
        this.f10737h.put(str, bVar2);
        this.f10739j.put(str, bVar3);
    }

    public final boolean a(String str, byte[] bArr, String str2) {
        byte[] bArr2;
        String str3 = str;
        s();
        l();
        r.b(str);
        C0799aa a2 = a(str, bArr);
        if (a2 == null) {
            return false;
        }
        a(str3, a2);
        this.f10738i.put(str3, a2);
        this.f10740k.put(str3, str2);
        this.f10735f.put(str3, a(a2));
        lc o = o();
        S[] sArr = a2.f10320h;
        r.a(sArr);
        for (S s : sArr) {
            for (c.e.a.b.g.f.T t : s.f10217f) {
                String a3 = C0973ya.a(t.f10223e);
                if (a3 != null) {
                    t.f10223e = a3;
                }
                for (U u : t.f10224f) {
                    String a4 = C0976za.a(u.f10238g);
                    if (a4 != null) {
                        u.f10238g = a4;
                    }
                }
            }
            for (X x : s.f10216e) {
                String a5 = Aa.a(x.f10278e);
                if (a5 != null) {
                    x.f10278e = a5;
                }
            }
        }
        o.p().a(str3, sArr);
        try {
            a2.f10320h = null;
            bArr2 = new byte[a2.b()];
            a2.a(Qc.a(bArr2, 0, bArr2.length));
        } catch (IOException e2) {
            e().w().a("Unable to serialize reduced-size config. Storing full config instead. appId", C0957t.a(str), e2);
            bArr2 = bArr;
        }
        sc p = p();
        r.b(str);
        p.l();
        p.s();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr2);
        try {
            if (((long) p.x().update("apps", contentValues, "app_id = ?", new String[]{str3})) == 0) {
                p.e().t().a("Failed to update remote config (got 0). appId", C0957t.a(str));
            }
        } catch (SQLiteException e3) {
            p.e().t().a("Error storing remote config. appId", C0957t.a(str), e3);
        }
        return true;
    }

    public final C0799aa a(String str, byte[] bArr) {
        if (bArr == null) {
            return new C0799aa();
        }
        Pc a2 = Pc.a(bArr, 0, bArr.length);
        C0799aa aaVar = new C0799aa();
        try {
            aaVar.a(a2);
            e().B().a("Parsed config. version, gmp_app_id", aaVar.f10315c, aaVar.f10316d);
            return aaVar;
        } catch (IOException e2) {
            e().w().a("Unable to merge remote config. appId", C0957t.a(str), e2);
            return new C0799aa();
        }
    }
}
