package j;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* renamed from: j.m  reason: case insensitive filesystem */
/* compiled from: CipherSuite */
public final class C1146m {
    public static final C1146m A = a("TLS_KRB5_WITH_RC4_128_MD5", 36);
    public static final C1146m Aa = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
    public static final C1146m B = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
    public static final C1146m Ba = a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
    public static final C1146m C = a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
    public static final C1146m Ca = a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
    public static final C1146m D = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
    public static final C1146m Da = a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
    public static final C1146m E = a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
    public static final C1146m Ea = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
    public static final C1146m F = a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
    public static final C1146m Fa = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
    public static final C1146m G = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
    public static final C1146m Ga = a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
    public static final C1146m H = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
    public static final C1146m Ha = a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
    public static final C1146m I = a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
    public static final C1146m Ia = a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
    public static final C1146m J = a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
    public static final C1146m Ja = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
    public static final C1146m K = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
    public static final C1146m Ka = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
    public static final C1146m L = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
    public static final C1146m La = a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
    public static final C1146m M = a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
    public static final C1146m Ma = a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
    public static final C1146m N = a("TLS_RSA_WITH_NULL_SHA256", 59);
    public static final C1146m Na = a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
    public static final C1146m O = a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
    public static final C1146m Oa = a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
    public static final C1146m P = a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
    public static final C1146m Pa = a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
    public static final C1146m Q = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
    public static final C1146m Qa = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
    public static final C1146m R = a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
    public static final C1146m Ra = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
    public static final C1146m S = a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
    public static final C1146m Sa = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
    public static final C1146m T = a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
    public static final C1146m Ta = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
    public static final C1146m U = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
    public static final C1146m Ua = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
    public static final C1146m V = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
    public static final C1146m Va = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
    public static final C1146m W = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
    public static final C1146m Wa = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
    public static final C1146m X = a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
    public static final C1146m Xa = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
    public static final C1146m Y = a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
    public static final C1146m Ya = a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
    public static final C1146m Z = a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
    public static final C1146m Za = a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
    public static final C1146m _a = a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<String> f15663a = new C1145l();
    public static final C1146m aa = a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
    public static final C1146m ab = a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    /* renamed from: b  reason: collision with root package name */
    public static final Map<String, C1146m> f15664b = new LinkedHashMap();
    public static final C1146m ba = a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
    public static final C1146m bb = a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* renamed from: c  reason: collision with root package name */
    public static final C1146m f15665c = a("SSL_RSA_WITH_NULL_MD5", 1);
    public static final C1146m ca = a("TLS_PSK_WITH_RC4_128_SHA", 138);
    public static final C1146m cb = a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* renamed from: d  reason: collision with root package name */
    public static final C1146m f15666d = a("SSL_RSA_WITH_NULL_SHA", 2);
    public static final C1146m da = a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
    public static final C1146m db = a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    /* renamed from: e  reason: collision with root package name */
    public static final C1146m f15667e = a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
    public static final C1146m ea = a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
    public static final C1146m eb = a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    /* renamed from: f  reason: collision with root package name */
    public static final C1146m f15668f = a("SSL_RSA_WITH_RC4_128_MD5", 4);
    public static final C1146m fa = a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
    public static final C1146m fb = a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    /* renamed from: g  reason: collision with root package name */
    public static final C1146m f15669g = a("SSL_RSA_WITH_RC4_128_SHA", 5);
    public static final C1146m ga = a("TLS_RSA_WITH_SEED_CBC_SHA", 150);
    public static final C1146m gb = a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    /* renamed from: h  reason: collision with root package name */
    public static final C1146m f15670h = a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
    public static final C1146m ha = a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
    public static final C1146m hb = a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* renamed from: i  reason: collision with root package name */
    public static final C1146m f15671i = a("SSL_RSA_WITH_DES_CBC_SHA", 9);
    public static final C1146m ia = a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
    public static final C1146m ib = a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    /* renamed from: j  reason: collision with root package name */
    public static final C1146m f15672j = a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
    public static final C1146m ja = a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
    public static final C1146m jb = a("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);

    /* renamed from: k  reason: collision with root package name */
    public static final C1146m f15673k = a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
    public static final C1146m ka = a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
    public static final C1146m kb = a("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);

    /* renamed from: l  reason: collision with root package name */
    public static final C1146m f15674l = a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
    public static final C1146m la = a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
    public static final C1146m lb = a("TLS_AES_128_GCM_SHA256", 4865);
    public static final C1146m m = a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
    public static final C1146m ma = a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
    public static final C1146m mb = a("TLS_AES_256_GCM_SHA384", 4866);
    public static final C1146m n = a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
    public static final C1146m na = a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
    public static final C1146m nb = a("TLS_CHACHA20_POLY1305_SHA256", 4867);
    public static final C1146m o = a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
    public static final C1146m oa = a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
    public static final C1146m ob = a("TLS_AES_128_CCM_SHA256", 4868);
    public static final C1146m p = a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
    public static final C1146m pa = a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
    public static final C1146m pb = a("TLS_AES_256_CCM_8_SHA256", 4869);
    public static final C1146m q = a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
    public static final C1146m qa = a("TLS_FALLBACK_SCSV", 22016);
    public static final C1146m r = a("SSL_DH_anon_WITH_RC4_128_MD5", 24);
    public static final C1146m ra = a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
    public static final C1146m s = a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
    public static final C1146m sa = a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
    public static final C1146m t = a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
    public static final C1146m ta = a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
    public static final C1146m u = a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
    public static final C1146m ua = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
    public static final C1146m v = a("TLS_KRB5_WITH_DES_CBC_SHA", 30);
    public static final C1146m va = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
    public static final C1146m w = a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
    public static final C1146m wa = a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
    public static final C1146m x = a("TLS_KRB5_WITH_RC4_128_SHA", 32);
    public static final C1146m xa = a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
    public static final C1146m y = a("TLS_KRB5_WITH_DES_CBC_MD5", 34);
    public static final C1146m ya = a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
    public static final C1146m z = a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
    public static final C1146m za = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
    public final String qb;

    public C1146m(String str) {
        if (str != null) {
            this.qb = str;
            return;
        }
        throw new NullPointerException();
    }

    public static synchronized C1146m a(String str) {
        C1146m mVar;
        synchronized (C1146m.class) {
            mVar = f15664b.get(str);
            if (mVar == null) {
                mVar = f15664b.get(b(str));
                if (mVar == null) {
                    mVar = new C1146m(str);
                }
                f15664b.put(str, mVar);
            }
        }
        return mVar;
    }

    public static String b(String str) {
        if (str.startsWith("TLS_")) {
            return "SSL_" + str.substring(4);
        }
        if (str.startsWith("SSL_")) {
            str = "TLS_" + str.substring(4);
        }
        return str;
    }

    public String toString() {
        return this.qb;
    }

    public static List<C1146m> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String a2 : strArr) {
            arrayList.add(a(a2));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static C1146m a(String str, int i2) {
        C1146m mVar = new C1146m(str);
        f15664b.put(str, mVar);
        return mVar;
    }

    public String a() {
        return this.qb;
    }
}
