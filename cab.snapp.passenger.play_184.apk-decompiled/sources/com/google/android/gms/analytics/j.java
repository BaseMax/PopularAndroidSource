package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.a.a;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.d;
import com.google.android.gms.internal.e;
import com.google.android.gms.internal.f;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import com.google.android.gms.internal.l;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.w;
import com.google.android.gms.internal.y;
import com.google.android.gms.internal.z;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class j extends w implements u {

    /* renamed from: a  reason: collision with root package name */
    private static DecimalFormat f2582a;

    /* renamed from: b  reason: collision with root package name */
    private final z f2583b;
    private final String c;
    private final Uri d;

    public j(z zVar, String str) {
        this(zVar, str, (byte) 0);
    }

    private j(z zVar, String str, byte b2) {
        super(zVar);
        ap.zzgm(str);
        this.f2583b = zVar;
        this.c = str;
        this.d = a(this.c);
    }

    static Uri a(String str) {
        ap.zzgm(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    private static String a(double d2) {
        if (f2582a == null) {
            f2582a = new DecimalFormat("0.######");
        }
        return f2582a.format(d2);
    }

    private static Map<String, String> a(o oVar) {
        HashMap hashMap = new HashMap();
        e eVar = (e) oVar.zza(e.class);
        if (eVar != null) {
            for (Map.Entry next : eVar.zzvt().entrySet()) {
                Object value = next.getValue();
                String str = null;
                if (value != null) {
                    if (value instanceof String) {
                        String str2 = (String) value;
                        if (!TextUtils.isEmpty(str2)) {
                            str = str2;
                        }
                    } else if (value instanceof Double) {
                        Double d2 = (Double) value;
                        if (d2.doubleValue() != 0.0d) {
                            str = a(d2.doubleValue());
                        }
                    } else if (!(value instanceof Boolean)) {
                        str = String.valueOf(value);
                    } else if (value != Boolean.FALSE) {
                        str = "1";
                    }
                }
                if (str != null) {
                    hashMap.put((String) next.getKey(), str);
                }
            }
        }
        com.google.android.gms.internal.j jVar = (com.google.android.gms.internal.j) oVar.zza(com.google.android.gms.internal.j.class);
        if (jVar != null) {
            a((Map<String, String>) hashMap, "t", jVar.zzvy());
            a((Map<String, String>) hashMap, "cid", jVar.zzvz());
            a((Map<String, String>) hashMap, "uid", jVar.getUserId());
            a((Map<String, String>) hashMap, "sc", jVar.zzwc());
            a((Map<String, String>) hashMap, "sf", jVar.zzwe());
            a((Map<String, String>) hashMap, "ni", jVar.zzwd());
            a((Map<String, String>) hashMap, "adid", jVar.zzwa());
            a((Map<String, String>) hashMap, "ate", jVar.zzwb());
        }
        k kVar = (k) oVar.zza(k.class);
        if (kVar != null) {
            a((Map<String, String>) hashMap, "cd", kVar.zzwf());
            a((Map<String, String>) hashMap, "a", (double) kVar.zzwg());
            a((Map<String, String>) hashMap, "dr", kVar.zzwh());
        }
        h hVar = (h) oVar.zza(h.class);
        if (hVar != null) {
            a((Map<String, String>) hashMap, "ec", hVar.getCategory());
            a((Map<String, String>) hashMap, "ea", hVar.getAction());
            a((Map<String, String>) hashMap, "el", hVar.getLabel());
            a((Map<String, String>) hashMap, "ev", (double) hVar.getValue());
        }
        b bVar = (b) oVar.zza(b.class);
        if (bVar != null) {
            a((Map<String, String>) hashMap, "cn", bVar.getName());
            a((Map<String, String>) hashMap, "cs", bVar.getSource());
            a((Map<String, String>) hashMap, "cm", bVar.zzvl());
            a((Map<String, String>) hashMap, "ck", bVar.zzvm());
            a((Map<String, String>) hashMap, "cc", bVar.getContent());
            a((Map<String, String>) hashMap, "ci", bVar.getId());
            a((Map<String, String>) hashMap, "anid", bVar.zzvn());
            a((Map<String, String>) hashMap, "gclid", bVar.zzvo());
            a((Map<String, String>) hashMap, "dclid", bVar.zzvp());
            a((Map<String, String>) hashMap, FirebaseAnalytics.b.ACLID, bVar.zzvq());
        }
        i iVar = (i) oVar.zza(i.class);
        if (iVar != null) {
            a((Map<String, String>) hashMap, "exd", iVar.zzdrs);
            a((Map<String, String>) hashMap, "exf", iVar.zzdrt);
        }
        l lVar = (l) oVar.zza(l.class);
        if (lVar != null) {
            a((Map<String, String>) hashMap, "sn", lVar.zzdsh);
            a((Map<String, String>) hashMap, "sa", lVar.zzdrp);
            a((Map<String, String>) hashMap, "st", lVar.zzdsi);
        }
        m mVar = (m) oVar.zza(m.class);
        if (mVar != null) {
            a((Map<String, String>) hashMap, "utv", mVar.zzdsj);
            a((Map<String, String>) hashMap, "utt", (double) mVar.zzdsk);
            a((Map<String, String>) hashMap, "utc", mVar.mCategory);
            a((Map<String, String>) hashMap, "utl", mVar.zzdrq);
        }
        c cVar = (c) oVar.zza(c.class);
        if (cVar != null) {
            for (Map.Entry next2 : cVar.zzvr().entrySet()) {
                String zzaj = l.zzaj(((Integer) next2.getKey()).intValue());
                if (!TextUtils.isEmpty(zzaj)) {
                    hashMap.put(zzaj, (String) next2.getValue());
                }
            }
        }
        d dVar = (d) oVar.zza(d.class);
        if (dVar != null) {
            for (Map.Entry next3 : dVar.zzvs().entrySet()) {
                String zzal = l.zzal(((Integer) next3.getKey()).intValue());
                if (!TextUtils.isEmpty(zzal)) {
                    hashMap.put(zzal, a(((Double) next3.getValue()).doubleValue()));
                }
            }
        }
        g gVar = (g) oVar.zza(g.class);
        if (gVar != null) {
            com.google.android.gms.analytics.a.b zzvu = gVar.zzvu();
            if (zzvu != null) {
                for (Map.Entry next4 : zzvu.build().entrySet()) {
                    hashMap.put(((String) next4.getKey()).startsWith("&") ? ((String) next4.getKey()).substring(1) : (String) next4.getKey(), (String) next4.getValue());
                }
            }
            int i = 1;
            for (com.google.android.gms.analytics.a.c zzdr : gVar.zzvx()) {
                hashMap.putAll(zzdr.zzdr(l.zzap(i)));
                i++;
            }
            int i2 = 1;
            for (a zzdr2 : gVar.zzvv()) {
                hashMap.putAll(zzdr2.zzdr(l.zzan(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry next5 : gVar.zzvw().entrySet()) {
                String zzas = l.zzas(i3);
                int i4 = 1;
                for (a aVar : (List) next5.getValue()) {
                    String valueOf = String.valueOf(zzas);
                    String valueOf2 = String.valueOf(l.zzaq(i4));
                    hashMap.putAll(aVar.zzdr(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty((CharSequence) next5.getKey())) {
                    String valueOf3 = String.valueOf(zzas);
                    hashMap.put("nm".length() != 0 ? valueOf3.concat("nm") : new String(valueOf3), (String) next5.getKey());
                }
                i3++;
            }
        }
        f fVar = (f) oVar.zza(f.class);
        if (fVar != null) {
            a((Map<String, String>) hashMap, "ul", fVar.getLanguage());
            a((Map<String, String>) hashMap, "sd", (double) fVar.zzdrm);
            a(hashMap, "sr", fVar.zzchl, fVar.zzchm);
            a(hashMap, "vp", fVar.zzdrn, fVar.zzdro);
        }
        com.google.android.gms.internal.a aVar2 = (com.google.android.gms.internal.a) oVar.zza(com.google.android.gms.internal.a.class);
        if (aVar2 != null) {
            a((Map<String, String>) hashMap, "an", aVar2.zzvi());
            a((Map<String, String>) hashMap, "aid", aVar2.getAppId());
            a((Map<String, String>) hashMap, "aiid", aVar2.zzvk());
            a((Map<String, String>) hashMap, "av", aVar2.zzvj());
        }
        return hashMap;
    }

    private static void a(Map<String, String> map, String str, double d2) {
        if (d2 != 0.0d) {
            map.put(str, a(d2));
        }
    }

    private static void a(Map<String, String> map, String str, int i, int i2) {
        if (i > 0 && i2 > 0) {
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            map.put(str, sb.toString());
        }
    }

    private static void a(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    private static void a(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, "1");
        }
    }

    public final Uri zzup() {
        return this.d;
    }

    public final void zzb(o oVar) {
        ap.checkNotNull(oVar);
        ap.checkArgument(oVar.zzuw(), "Can't deliver not submitted measurement");
        ap.zzgn("deliver should be called on worker thread");
        o zzus = oVar.zzus();
        com.google.android.gms.internal.j jVar = (com.google.android.gms.internal.j) zzus.zzb(com.google.android.gms.internal.j.class);
        if (TextUtils.isEmpty(jVar.zzvy())) {
            this.zzdta.zzwt().zzf(a(zzus), "Ignoring measurement without type");
        } else if (TextUtils.isEmpty(jVar.zzvz())) {
            this.zzdta.zzwt().zzf(a(zzus), "Ignoring measurement without client id");
        } else if (!this.f2583b.zzxi().getAppOptOut()) {
            double zzwe = jVar.zzwe();
            if (ce.zza(zzwe, jVar.zzvz())) {
                zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(zzwe));
                return;
            }
            Map<String, String> a2 = a(zzus);
            a2.put("v", "1");
            a2.put("_v", y.zzdtc);
            a2.put("tid", this.c);
            if (this.f2583b.zzxi().isDryRunEnabled()) {
                StringBuilder sb = new StringBuilder();
                for (Map.Entry next : a2.entrySet()) {
                    if (sb.length() != 0) {
                        sb.append(", ");
                    }
                    sb.append((String) next.getKey());
                    sb.append("=");
                    sb.append((String) next.getValue());
                }
                zzc("Dry run is enabled. GoogleAnalytics would have sent", sb.toString());
                return;
            }
            HashMap hashMap = new HashMap();
            ce.zzb((Map<String, String>) hashMap, "uid", jVar.getUserId());
            com.google.android.gms.internal.a aVar = (com.google.android.gms.internal.a) oVar.zza(com.google.android.gms.internal.a.class);
            if (aVar != null) {
                ce.zzb((Map<String, String>) hashMap, "an", aVar.zzvi());
                ce.zzb((Map<String, String>) hashMap, "aid", aVar.getAppId());
                ce.zzb((Map<String, String>) hashMap, "av", aVar.zzvj());
                ce.zzb((Map<String, String>) hashMap, "aiid", aVar.zzvk());
            }
            ac acVar = new ac(0, jVar.zzvz(), this.c, !TextUtils.isEmpty(jVar.zzwa()), 0, hashMap);
            a2.put("_s", String.valueOf(this.zzdta.zzwx().zza(acVar)));
            bk bkVar = new bk(this.zzdta.zzwt(), a2, oVar.zzuu(), true);
            this.zzdta.zzwx().zza(bkVar);
        }
    }
}
