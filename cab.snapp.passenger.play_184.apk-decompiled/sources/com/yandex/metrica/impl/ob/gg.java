package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.kh;
import com.yandex.metrica.impl.ob.lp;
import com.yandex.metrica.impl.ob.ma;
import java.util.List;
import org.a.b;
import org.a.c;

@Deprecated
public class gg extends ge {

    /* renamed from: a  reason: collision with root package name */
    static final je f6061a = new je("PREF_KEY_UID_");

    /* renamed from: b  reason: collision with root package name */
    static final je f6062b = new je("PREF_KEY_DEVICE_ID_");
    private static final je c = new je("PREF_KEY_HOST_URL_");
    private static final je d = new je("PREF_KEY_HOST_URLS_FROM_STARTUP");
    private static final je e = new je("PREF_KEY_HOST_URLS_FROM_CLIENT");
    @Deprecated
    private static final je f = new je("PREF_KEY_REPORT_URL_");
    private static final je g = new je("PREF_KEY_REPORT_URLS_");
    @Deprecated
    private static final je h = new je("PREF_L_URL");
    private static final je i = new je("PREF_L_URLS");
    private static final je j = new je("PREF_KEY_GET_AD_URL");
    private static final je k = new je("PREF_KEY_REPORT_AD_URL");
    private static final je l = new je("PREF_KEY_STARTUP_OBTAIN_TIME_");
    private static final je m = new je("PREF_KEY_STARTUP_ENCODED_CLIDS_");
    private static final je n = new je("PREF_KEY_DISTRIBUTION_REFERRER_");
    private static final je o = new je("STARTUP_CLIDS_MATCH_WITH_APP_CLIDS_");
    private static final je p = new je("PREF_KEY_EASY_COLLECTING_ENABLED_");
    private static final je q = new je("PREF_KEY_COLLECTING_PACKAGE_INFO_ENABLED_");
    private static final je r = new je("PREF_KEY_PERMISSIONS_COLLECTING_ENABLED_");
    private static final je s = new je("PREF_KEY_FEATURES_COLLECTING_ENABLED_");
    private static final je t = new je("PREF_KEY_TELEPHONY_TRACKING_RESTRICTED_");
    private static final je u = new je("SOCKET_CONFIG_");
    private static final je v = new je("LAST_STARTUP_REQUEST_CLIDS");
    private static final je w = new je("FLCC");
    private static final je x = new je("BKCC");
    private je A = o(c.a());
    private je B = o(d.a());
    private je C = o(e.a());
    @Deprecated
    private je D = o(f.a());
    private je E = o(g.a());
    @Deprecated
    private je F = o(h.a());
    private je G = o(i.a());
    private je H = o(j.a());
    private je I = o(k.a());
    private je J = o(l.a());
    private je K = o(m.a());
    private je L = o(n.a());
    private je M = o(o.a());
    private je N = o(p.a());
    private je O = o(q.a());
    private je P = o(r.a());
    private je Q = o(s.a());
    private je R = o(t.a());
    private je S = o(u.a());
    private je T = o(v.a());
    private je U = o(w.a());
    private je V = o(x.a());
    private je y = new je(f6062b.a());
    private je z = o(f6061a.a());

    static {
        new je("PREF_KEY_PINNING_UPDATE_URL");
    }

    public gg(fr frVar, String str) {
        super(frVar, str);
    }

    public gg a(String str) {
        return (gg) b(this.z.b(), str);
    }

    @Deprecated
    public gg b(String str) {
        return (gg) b(this.y.b(), str);
    }

    @Deprecated
    public gg c(String str) {
        return (gg) b(this.D.b(), str);
    }

    public gg a(List<String> list) {
        return (gg) b(this.E.b(), ne.a(list));
    }

    public gg b(List<String> list) {
        return (gg) b(this.G.b(), ne.a(list));
    }

    public gg d(String str) {
        return (gg) b(this.I.b(), str);
    }

    public gg e(String str) {
        return (gg) b(this.H.b(), str);
    }

    public gg f(String str) {
        return (gg) b(this.A.b(), str);
    }

    public gg a(long j2) {
        return (gg) a(this.J.b(), j2);
    }

    public gg g(String str) {
        return (gg) b(this.K.b(), str);
    }

    public gg h(String str) {
        return (gg) b(this.L.b(), str);
    }

    public gg a(boolean z2) {
        return (gg) a(this.M.b(), z2);
    }

    public ma a() {
        return new ma.a(new lp.a().a(b(this.N.b(), lp.b.f6399a)).b(b(this.O.b(), lp.b.f6400b)).c(b(this.P.b(), lp.b.c)).d(b(this.Q.b(), lp.b.d)).g(b(this.R.b(), lp.b.g)).a()).a(q(this.z.b())).a(hg.a().d()).c(ne.b(q(this.B.b()))).d(ne.b(q(this.C.b()))).d(q(this.K.b())).a(ne.b(q(this.E.b()))).b(ne.b(q(this.G.b()))).b(q(this.H.b())).c(q(this.I.b())).f(c(this.L.b(), null)).a(k(q(this.U.b()))).a(l(q(this.V.b()))).a(lr.a(q(this.S.b()))).e(q(this.T.b())).b(b(this.M.b(), true)).a(b(this.J.b(), -1)).a();
    }

    private static hq k(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return new gt().a(a(new c(str)));
            } catch (b unused) {
            }
        }
        return null;
    }

    static kh.a.c a(c cVar) {
        kh.a.c cVar2 = new kh.a.c();
        cVar2.f6221b = nt.a(ne.a(cVar, "uti"), cVar2.f6221b);
        cVar2.c = nt.a(ne.d(cVar, "udi"), cVar2.c);
        cVar2.d = nt.a(ne.b(cVar, "rcff"), cVar2.d);
        cVar2.e = nt.a(ne.b(cVar, "mbs"), cVar2.e);
        cVar2.f = nt.a(ne.a(cVar, "maff"), cVar2.f);
        cVar2.g = nt.a(ne.b(cVar, "mrsl"), cVar2.g);
        cVar2.h = nt.a(ne.c(cVar, "ce"), cVar2.h);
        return cVar2;
    }

    private static hl l(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                c cVar = new c(str);
                kh.a.C0118a aVar = new kh.a.C0118a();
                aVar.f6219b = a(cVar);
                aVar.c = nt.a(ne.a(cVar, "cd"), aVar.c);
                aVar.d = nt.a(ne.a(cVar, "ci"), aVar.d);
                return new gq().a(aVar);
            } catch (b unused) {
            }
        }
        return null;
    }

    @Deprecated
    public String i(String str) {
        return c(this.D.b(), str);
    }

    @Deprecated
    public String j(String str) {
        return c(this.F.b(), str);
    }
}
