package c.e.a.a.n;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import c.e.a.a.n.f;
import c.e.a.a.o.A;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0738f;
import c.e.a.a.o.I;
import c.e.a.a.o.l;
import com.crashlytics.android.answers.RetryManager;
import com.farsitel.bazaar.data.entity.Place;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: DefaultBandwidthMeter */
public final class o implements f, A {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, int[]> f9483a = c();

    /* renamed from: b  reason: collision with root package name */
    public static final long[] f9484b = {5400000, 3400000, 1900000, 1100000, 400000};

    /* renamed from: c  reason: collision with root package name */
    public static final long[] f9485c = {170000, 139000, 122000, 107000, 90000};

    /* renamed from: d  reason: collision with root package name */
    public static final long[] f9486d = {2100000, 1300000, 960000, 770000, 450000};

    /* renamed from: e  reason: collision with root package name */
    public static final long[] f9487e = {6000000, 3400000, 2100000, 1400000, 570000};

    /* renamed from: f  reason: collision with root package name */
    public final Context f9488f;

    /* renamed from: g  reason: collision with root package name */
    public final SparseArray<Long> f9489g;

    /* renamed from: h  reason: collision with root package name */
    public final l<f.a> f9490h;

    /* renamed from: i  reason: collision with root package name */
    public final A f9491i;

    /* renamed from: j  reason: collision with root package name */
    public final C0738f f9492j;

    /* renamed from: k  reason: collision with root package name */
    public int f9493k;

    /* renamed from: l  reason: collision with root package name */
    public long f9494l;
    public long m;
    public int n;
    public long o;
    public long p;
    public long q;
    public long r;
    public boolean s;
    public int t;

    /* compiled from: DefaultBandwidthMeter */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Context f9495a;

        /* renamed from: b  reason: collision with root package name */
        public SparseArray<Long> f9496b;

        /* renamed from: c  reason: collision with root package name */
        public int f9497c;

        /* renamed from: d  reason: collision with root package name */
        public C0738f f9498d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f9499e;

        public a(Context context) {
            Context context2;
            if (context == null) {
                context2 = null;
            } else {
                context2 = context.getApplicationContext();
            }
            this.f9495a = context2;
            this.f9496b = b(I.a(context));
            this.f9497c = 2000;
            this.f9498d = C0738f.f9582a;
        }

        public static SparseArray<Long> b(String str) {
            int[] a2 = a(str);
            SparseArray<Long> sparseArray = new SparseArray<>(6);
            sparseArray.append(0, Long.valueOf(RetryManager.NANOSECONDS_IN_MS));
            sparseArray.append(2, Long.valueOf(o.f9484b[a2[0]]));
            sparseArray.append(3, Long.valueOf(o.f9485c[a2[1]]));
            sparseArray.append(4, Long.valueOf(o.f9486d[a2[2]]));
            sparseArray.append(5, Long.valueOf(o.f9487e[a2[3]]));
            sparseArray.append(7, Long.valueOf(o.f9484b[a2[0]]));
            return sparseArray;
        }

        public o a() {
            o oVar = new o(this.f9495a, this.f9496b, this.f9497c, this.f9498d, this.f9499e);
            return oVar;
        }

        public static int[] a(String str) {
            int[] iArr = o.f9483a.get(str);
            return iArr == null ? new int[]{2, 2, 2, 2} : iArr;
        }
    }

    /* compiled from: DefaultBandwidthMeter */
    private static class b extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        public static b f9500a;

        /* renamed from: b  reason: collision with root package name */
        public final Handler f9501b = new Handler(Looper.getMainLooper());

        /* renamed from: c  reason: collision with root package name */
        public final ArrayList<WeakReference<o>> f9502c = new ArrayList<>();

        public static synchronized b a(Context context) {
            b bVar;
            synchronized (b.class) {
                if (f9500a == null) {
                    f9500a = new b();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    context.registerReceiver(f9500a, intentFilter);
                }
                bVar = f9500a;
            }
            return bVar;
        }

        public synchronized void b(o oVar) {
            a();
            this.f9502c.add(new WeakReference(oVar));
            this.f9501b.post(new b(this, oVar));
        }

        /* renamed from: c */
        public final void a(o oVar) {
            oVar.d();
        }

        public synchronized void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                a();
                for (int i2 = 0; i2 < this.f9502c.size(); i2++) {
                    o oVar = (o) this.f9502c.get(i2).get();
                    if (oVar != null) {
                        a(oVar);
                    }
                }
            }
        }

        public final void a() {
            for (int size = this.f9502c.size() - 1; size >= 0; size--) {
                if (((o) this.f9502c.get(size).get()) == null) {
                    this.f9502c.remove(size);
                }
            }
        }
    }

    public static Map<String, int[]> c() {
        HashMap hashMap = new HashMap();
        hashMap.put("AD", new int[]{1, 0, 0, 1});
        hashMap.put("AE", new int[]{1, 4, 4, 4});
        hashMap.put("AF", new int[]{4, 4, 3, 3});
        hashMap.put("AG", new int[]{3, 2, 1, 1});
        hashMap.put("AI", new int[]{1, 0, 1, 3});
        hashMap.put("AL", new int[]{1, 2, 1, 1});
        hashMap.put("AM", new int[]{2, 2, 3, 2});
        hashMap.put("AO", new int[]{3, 4, 2, 0});
        hashMap.put("AQ", new int[]{4, 2, 2, 2});
        hashMap.put("AR", new int[]{2, 3, 2, 2});
        hashMap.put("AS", new int[]{3, 3, 4, 1});
        hashMap.put("AT", new int[]{0, 2, 0, 0});
        hashMap.put("AU", new int[]{0, 1, 1, 1});
        hashMap.put("AW", new int[]{1, 1, 0, 2});
        hashMap.put("AX", new int[]{0, 2, 1, 0});
        hashMap.put("AZ", new int[]{3, 3, 2, 2});
        hashMap.put("BA", new int[]{1, 1, 1, 2});
        hashMap.put("BB", new int[]{0, 1, 0, 0});
        hashMap.put("BD", new int[]{2, 2, 3, 2});
        hashMap.put("BE", new int[]{0, 0, 0, 1});
        hashMap.put("BF", new int[]{4, 4, 3, 1});
        hashMap.put("BG", new int[]{0, 1, 0, 0});
        hashMap.put("BH", new int[]{2, 1, 3, 4});
        hashMap.put("BI", new int[]{4, 3, 4, 4});
        hashMap.put("BJ", new int[]{4, 3, 4, 4});
        hashMap.put("BL", new int[]{1, 0, 2, 3});
        hashMap.put("BM", new int[]{1, 0, 0, 0});
        hashMap.put("BN", new int[]{4, 2, 3, 3});
        hashMap.put("BO", new int[]{2, 2, 3, 2});
        hashMap.put("BQ", new int[]{1, 0, 3, 4});
        hashMap.put("BR", new int[]{2, 3, 3, 2});
        hashMap.put("BS", new int[]{2, 0, 1, 4});
        hashMap.put("BT", new int[]{3, 0, 2, 1});
        hashMap.put("BW", new int[]{4, 4, 1, 2});
        hashMap.put("BY", new int[]{0, 1, 1, 2});
        hashMap.put("BZ", new int[]{2, 2, 3, 1});
        hashMap.put("CA", new int[]{0, 3, 3, 3});
        hashMap.put("CD", new int[]{4, 4, 3, 2});
        hashMap.put("CF", new int[]{4, 3, 3, 4});
        hashMap.put("CG", new int[]{4, 4, 4, 4});
        hashMap.put("CH", new int[]{0, 0, 1, 1});
        hashMap.put("CI", new int[]{3, 4, 3, 3});
        hashMap.put("CK", new int[]{2, 4, 1, 0});
        hashMap.put("CL", new int[]{2, 2, 2, 3});
        hashMap.put("CM", new int[]{3, 4, 2, 1});
        hashMap.put("CN", new int[]{2, 2, 2, 3});
        hashMap.put("CO", new int[]{2, 3, 2, 2});
        hashMap.put("CR", new int[]{2, 2, 4, 4});
        hashMap.put("CU", new int[]{4, 4, 3, 1});
        hashMap.put("CV", new int[]{2, 3, 2, 4});
        hashMap.put("CW", new int[]{1, 0, 0, 0});
        hashMap.put("CX", new int[]{2, 2, 2, 2});
        hashMap.put("CY", new int[]{1, 1, 1, 1});
        hashMap.put("CZ", new int[]{0, 1, 0, 0});
        hashMap.put("DE", new int[]{0, 2, 2, 2});
        hashMap.put("DJ", new int[]{3, 3, 4, 0});
        hashMap.put("DK", new int[]{0, 0, 0, 0});
        hashMap.put("DM", new int[]{1, 0, 0, 3});
        hashMap.put("DO", new int[]{3, 3, 4, 4});
        hashMap.put("DZ", new int[]{3, 3, 4, 4});
        hashMap.put("EC", new int[]{2, 4, 4, 2});
        hashMap.put("EE", new int[]{0, 0, 0, 0});
        hashMap.put("EG", new int[]{3, 4, 2, 2});
        hashMap.put("EH", new int[]{2, 0, 3, 3});
        hashMap.put("ER", new int[]{4, 2, 2, 2});
        hashMap.put("ES", new int[]{0, 1, 1, 1});
        hashMap.put("ET", new int[]{4, 4, 4, 0});
        hashMap.put("FI", new int[]{0, 0, 1, 0});
        hashMap.put("FJ", new int[]{3, 1, 3, 3});
        hashMap.put("FK", new int[]{4, 2, 2, 3});
        hashMap.put("FM", new int[]{4, 2, 4, 0});
        hashMap.put("FO", new int[]{0, 0, 0, 0});
        hashMap.put("FR", new int[]{1, 0, 3, 1});
        hashMap.put("GA", new int[]{3, 3, 2, 1});
        hashMap.put("GB", new int[]{0, 1, 3, 3});
        hashMap.put("GD", new int[]{2, 0, 4, 4});
        hashMap.put("GE", new int[]{1, 1, 0, 3});
        hashMap.put("GF", new int[]{1, 2, 4, 4});
        hashMap.put("GG", new int[]{0, 0, 0, 0});
        hashMap.put("GH", new int[]{3, 3, 3, 2});
        hashMap.put("GI", new int[]{0, 0, 0, 1});
        hashMap.put("GL", new int[]{2, 2, 3, 4});
        hashMap.put("GM", new int[]{4, 3, 3, 2});
        hashMap.put("GN", new int[]{4, 4, 4, 0});
        hashMap.put("GP", new int[]{2, 2, 1, 3});
        hashMap.put("GQ", new int[]{4, 3, 3, 0});
        hashMap.put("GR", new int[]{1, 1, 0, 1});
        hashMap.put("GT", new int[]{3, 3, 3, 4});
        hashMap.put("GU", new int[]{1, 2, 4, 4});
        hashMap.put("GW", new int[]{4, 4, 4, 0});
        hashMap.put("GY", new int[]{3, 4, 1, 0});
        hashMap.put("HK", new int[]{0, 1, 4, 4});
        hashMap.put("HN", new int[]{3, 3, 2, 2});
        hashMap.put("HR", new int[]{1, 0, 0, 2});
        hashMap.put("HT", new int[]{3, 4, 4, 3});
        hashMap.put("HU", new int[]{0, 0, 1, 0});
        hashMap.put("ID", new int[]{3, 2, 3, 4});
        hashMap.put("IE", new int[]{0, 0, 3, 2});
        hashMap.put("IL", new int[]{0, 1, 2, 3});
        hashMap.put("IM", new int[]{0, 0, 0, 1});
        hashMap.put("IN", new int[]{2, 2, 4, 4});
        hashMap.put("IO", new int[]{4, 4, 2, 2});
        hashMap.put("IQ", new int[]{3, 3, 4, 4});
        hashMap.put("IR", new int[]{1, 0, 1, 0});
        hashMap.put("IS", new int[]{0, 0, 0, 0});
        hashMap.put("IT", new int[]{1, 0, 1, 1});
        hashMap.put("JE", new int[]{1, 0, 0, 1});
        hashMap.put("JM", new int[]{3, 2, 2, 1});
        hashMap.put("JO", new int[]{1, 1, 1, 2});
        hashMap.put("JP", new int[]{0, 2, 2, 2});
        hashMap.put("KE", new int[]{3, 3, 3, 3});
        hashMap.put("KG", new int[]{1, 1, 2, 3});
        hashMap.put("KH", new int[]{2, 0, 4, 4});
        hashMap.put("KI", new int[]{4, 4, 4, 4});
        hashMap.put("KM", new int[]{4, 4, 3, 3});
        hashMap.put("KN", new int[]{1, 0, 1, 4});
        hashMap.put("KP", new int[]{1, 2, 0, 2});
        hashMap.put("KR", new int[]{0, 3, 0, 2});
        hashMap.put("KW", new int[]{2, 2, 1, 2});
        hashMap.put("KY", new int[]{1, 1, 0, 2});
        hashMap.put("KZ", new int[]{1, 2, 2, 2});
        hashMap.put("LA", new int[]{2, 1, 1, 0});
        hashMap.put("LB", new int[]{3, 2, 0, 0});
        hashMap.put("LC", new int[]{2, 1, 0, 0});
        hashMap.put("LI", new int[]{0, 0, 2, 2});
        hashMap.put("LK", new int[]{1, 1, 2, 2});
        hashMap.put("LR", new int[]{3, 4, 4, 1});
        hashMap.put("LS", new int[]{3, 3, 2, 0});
        hashMap.put("LT", new int[]{0, 0, 0, 0});
        hashMap.put("LU", new int[]{0, 1, 0, 0});
        hashMap.put("LV", new int[]{0, 0, 0, 0});
        hashMap.put("LY", new int[]{4, 3, 4, 4});
        hashMap.put("MA", new int[]{2, 1, 2, 2});
        hashMap.put("MC", new int[]{1, 0, 1, 0});
        hashMap.put("MD", new int[]{1, 1, 0, 0});
        hashMap.put("ME", new int[]{1, 2, 2, 3});
        hashMap.put("MF", new int[]{1, 4, 2, 1});
        hashMap.put("MG", new int[]{3, 4, 1, 3});
        hashMap.put("MH", new int[]{4, 0, 2, 3});
        hashMap.put("MK", new int[]{1, 0, 0, 0});
        hashMap.put("ML", new int[]{4, 4, 4, 3});
        hashMap.put("MM", new int[]{2, 3, 1, 2});
        hashMap.put("MN", new int[]{2, 3, 2, 4});
        hashMap.put("MO", new int[]{0, 0, 4, 4});
        hashMap.put("MP", new int[]{0, 2, 4, 4});
        hashMap.put("MQ", new int[]{1, 1, 1, 3});
        hashMap.put("MR", new int[]{4, 4, 4, 4});
        hashMap.put("MS", new int[]{1, 4, 0, 3});
        hashMap.put("MT", new int[]{0, 1, 0, 0});
        hashMap.put("MU", new int[]{2, 2, 3, 4});
        hashMap.put("MV", new int[]{3, 2, 1, 1});
        hashMap.put("MW", new int[]{4, 2, 1, 1});
        hashMap.put("MX", new int[]{2, 4, 3, 2});
        hashMap.put("MY", new int[]{2, 2, 2, 3});
        hashMap.put("MZ", new int[]{3, 4, 2, 2});
        hashMap.put(Place.NA, new int[]{3, 2, 2, 1});
        hashMap.put("NC", new int[]{2, 1, 3, 2});
        hashMap.put("NE", new int[]{4, 4, 4, 3});
        hashMap.put("NF", new int[]{1, 2, 2, 2});
        hashMap.put("NG", new int[]{3, 4, 3, 2});
        hashMap.put("NI", new int[]{3, 3, 3, 4});
        hashMap.put("NL", new int[]{0, 2, 4, 3});
        hashMap.put("NO", new int[]{0, 1, 0, 0});
        hashMap.put("NP", new int[]{3, 3, 2, 2});
        hashMap.put("NR", new int[]{4, 0, 4, 0});
        hashMap.put("NU", new int[]{2, 2, 2, 1});
        hashMap.put("NZ", new int[]{0, 0, 0, 1});
        hashMap.put("OM", new int[]{2, 2, 1, 3});
        hashMap.put("PA", new int[]{1, 3, 3, 4});
        hashMap.put("PE", new int[]{2, 3, 4, 4});
        hashMap.put("PF", new int[]{3, 1, 0, 1});
        hashMap.put("PG", new int[]{4, 3, 1, 1});
        hashMap.put("PH", new int[]{3, 0, 4, 4});
        hashMap.put("PK", new int[]{3, 3, 3, 3});
        hashMap.put("PL", new int[]{1, 1, 1, 3});
        hashMap.put("PM", new int[]{0, 2, 0, 0});
        hashMap.put("PR", new int[]{2, 1, 3, 3});
        hashMap.put("PS", new int[]{3, 3, 1, 4});
        hashMap.put("PT", new int[]{1, 1, 0, 1});
        hashMap.put("PW", new int[]{2, 2, 1, 1});
        hashMap.put("PY", new int[]{3, 1, 3, 3});
        hashMap.put("QA", new int[]{2, 3, 0, 1});
        hashMap.put("RE", new int[]{1, 0, 2, 2});
        hashMap.put("RO", new int[]{0, 1, 1, 2});
        hashMap.put("RS", new int[]{1, 2, 0, 0});
        hashMap.put("RU", new int[]{0, 1, 1, 1});
        hashMap.put("RW", new int[]{3, 4, 2, 4});
        hashMap.put("SA", new int[]{2, 2, 1, 2});
        hashMap.put("SB", new int[]{4, 4, 3, 0});
        hashMap.put("SC", new int[]{4, 2, 0, 1});
        hashMap.put("SD", new int[]{4, 4, 4, 2});
        hashMap.put("SE", new int[]{0, 1, 0, 0});
        hashMap.put("SG", new int[]{1, 2, 3, 3});
        hashMap.put("SH", new int[]{4, 4, 2, 3});
        hashMap.put("SI", new int[]{0, 1, 0, 1});
        hashMap.put("SJ", new int[]{0, 0, 2, 0});
        hashMap.put("SK", new int[]{0, 1, 0, 1});
        hashMap.put("SL", new int[]{4, 3, 2, 4});
        hashMap.put("SM", new int[]{0, 0, 1, 3});
        hashMap.put("SN", new int[]{4, 4, 4, 3});
        hashMap.put("SO", new int[]{4, 4, 4, 4});
        hashMap.put("SR", new int[]{3, 2, 2, 4});
        hashMap.put("SS", new int[]{4, 2, 4, 2});
        hashMap.put("ST", new int[]{3, 4, 2, 2});
        hashMap.put("SV", new int[]{2, 3, 3, 4});
        hashMap.put("SX", new int[]{2, 4, 1, 0});
        hashMap.put("SY", new int[]{4, 4, 1, 0});
        hashMap.put("SZ", new int[]{3, 4, 2, 3});
        hashMap.put("TC", new int[]{1, 1, 3, 1});
        hashMap.put("TD", new int[]{4, 4, 4, 3});
        hashMap.put("TG", new int[]{3, 3, 1, 0});
        hashMap.put("TH", new int[]{1, 3, 4, 4});
        hashMap.put("TJ", new int[]{4, 4, 4, 4});
        hashMap.put("TL", new int[]{4, 2, 4, 4});
        hashMap.put("TM", new int[]{4, 1, 2, 3});
        hashMap.put("TN", new int[]{2, 1, 1, 1});
        hashMap.put("TO", new int[]{3, 3, 3, 1});
        hashMap.put("TR", new int[]{1, 2, 0, 1});
        hashMap.put("TT", new int[]{2, 3, 1, 2});
        hashMap.put("TV", new int[]{4, 2, 2, 4});
        hashMap.put("TW", new int[]{0, 0, 0, 1});
        hashMap.put("TZ", new int[]{3, 3, 4, 3});
        hashMap.put("UA", new int[]{0, 2, 1, 2});
        hashMap.put("UG", new int[]{4, 3, 2, 3});
        hashMap.put("US", new int[]{0, 1, 3, 3});
        hashMap.put("UY", new int[]{2, 2, 2, 2});
        hashMap.put("UZ", new int[]{3, 2, 2, 2});
        hashMap.put("VA", new int[]{1, 2, 2, 2});
        hashMap.put("VC", new int[]{2, 1, 0, 0});
        hashMap.put("VE", new int[]{4, 4, 4, 3});
        hashMap.put("VG", new int[]{2, 1, 1, 2});
        hashMap.put("VI", new int[]{1, 0, 2, 4});
        hashMap.put("VN", new int[]{0, 2, 4, 4});
        hashMap.put("VU", new int[]{4, 1, 3, 1});
        hashMap.put("WS", new int[]{3, 2, 3, 1});
        hashMap.put("XK", new int[]{1, 2, 1, 0});
        hashMap.put("YE", new int[]{4, 4, 4, 2});
        hashMap.put("YT", new int[]{2, 0, 2, 3});
        hashMap.put("ZA", new int[]{2, 3, 2, 2});
        hashMap.put("ZM", new int[]{3, 3, 2, 1});
        hashMap.put("ZW", new int[]{3, 3, 3, 1});
        return Collections.unmodifiableMap(hashMap);
    }

    public A a() {
        return this;
    }

    public synchronized long b() {
        return this.q;
    }

    public void c(j jVar, l lVar, boolean z) {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0059, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void d() {
        /*
            r10 = this;
            monitor-enter(r10)
            boolean r0 = r10.s     // Catch:{ all -> 0x005a }
            r1 = 0
            if (r0 == 0) goto L_0x0009
            int r0 = r10.t     // Catch:{ all -> 0x005a }
            goto L_0x0015
        L_0x0009:
            android.content.Context r0 = r10.f9488f     // Catch:{ all -> 0x005a }
            if (r0 != 0) goto L_0x000f
            r0 = 0
            goto L_0x0015
        L_0x000f:
            android.content.Context r0 = r10.f9488f     // Catch:{ all -> 0x005a }
            int r0 = c.e.a.a.o.I.b((android.content.Context) r0)     // Catch:{ all -> 0x005a }
        L_0x0015:
            int r2 = r10.n     // Catch:{ all -> 0x005a }
            if (r2 != r0) goto L_0x001b
            monitor-exit(r10)
            return
        L_0x001b:
            r10.n = r0     // Catch:{ all -> 0x005a }
            r2 = 1
            if (r0 == r2) goto L_0x0058
            if (r0 == 0) goto L_0x0058
            r2 = 8
            if (r0 != r2) goto L_0x0027
            goto L_0x0058
        L_0x0027:
            long r2 = r10.a((int) r0)     // Catch:{ all -> 0x005a }
            r10.q = r2     // Catch:{ all -> 0x005a }
            c.e.a.a.o.f r0 = r10.f9492j     // Catch:{ all -> 0x005a }
            long r2 = r0.a()     // Catch:{ all -> 0x005a }
            int r0 = r10.f9493k     // Catch:{ all -> 0x005a }
            if (r0 <= 0) goto L_0x003e
            long r0 = r10.f9494l     // Catch:{ all -> 0x005a }
            long r0 = r2 - r0
            int r1 = (int) r0     // Catch:{ all -> 0x005a }
            r5 = r1
            goto L_0x003f
        L_0x003e:
            r5 = 0
        L_0x003f:
            long r6 = r10.m     // Catch:{ all -> 0x005a }
            long r8 = r10.q     // Catch:{ all -> 0x005a }
            r4 = r10
            r4.a((int) r5, (long) r6, (long) r8)     // Catch:{ all -> 0x005a }
            r10.f9494l = r2     // Catch:{ all -> 0x005a }
            r0 = 0
            r10.m = r0     // Catch:{ all -> 0x005a }
            r10.p = r0     // Catch:{ all -> 0x005a }
            r10.o = r0     // Catch:{ all -> 0x005a }
            c.e.a.a.o.A r0 = r10.f9491i     // Catch:{ all -> 0x005a }
            r0.c()     // Catch:{ all -> 0x005a }
            monitor-exit(r10)
            return
        L_0x0058:
            monitor-exit(r10)
            return
        L_0x005a:
            r0 = move-exception
            monitor-exit(r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.n.o.d():void");
    }

    @Deprecated
    public o() {
        this(null, new SparseArray(), 2000, C0738f.f9582a, false);
    }

    public void a(Handler handler, f.a aVar) {
        this.f9490h.a(handler, aVar);
    }

    public synchronized void b(j jVar, l lVar, boolean z) {
        if (z) {
            if (this.f9493k == 0) {
                this.f9494l = this.f9492j.a();
            }
            this.f9493k++;
        }
    }

    public o(Context context, SparseArray<Long> sparseArray, int i2, C0738f fVar, boolean z) {
        Context context2;
        int i3;
        if (context == null) {
            context2 = null;
        } else {
            context2 = context.getApplicationContext();
        }
        this.f9488f = context2;
        this.f9489g = sparseArray;
        this.f9490h = new l<>();
        this.f9491i = new A(i2);
        this.f9492j = fVar;
        if (context == null) {
            i3 = 0;
        } else {
            i3 = I.b(context);
        }
        this.n = i3;
        this.q = a(this.n);
        if (context != null && z) {
            b.a(context).b(this);
        }
    }

    public void a(f.a aVar) {
        this.f9490h.a(aVar);
    }

    public synchronized void a(j jVar, l lVar, boolean z, int i2) {
        if (z) {
            this.m += (long) i2;
        }
    }

    public synchronized void a(j jVar, l lVar, boolean z) {
        if (z) {
            C0737e.b(this.f9493k > 0);
            long a2 = this.f9492j.a();
            int i2 = (int) (a2 - this.f9494l);
            long j2 = (long) i2;
            this.o += j2;
            this.p += this.m;
            if (i2 > 0) {
                this.f9491i.a((int) Math.sqrt((double) this.m), (float) ((this.m * 8000) / j2));
                if (this.o >= 2000 || this.p >= 524288) {
                    this.q = (long) this.f9491i.a(0.5f);
                }
                a(i2, this.m, this.q);
                this.f9494l = a2;
                this.m = 0;
            }
            this.f9493k--;
        }
    }

    public final void a(int i2, long j2, long j3) {
        if (i2 != 0 || j2 != 0 || j3 != this.r) {
            this.r = j3;
            l<f.a> lVar = this.f9490h;
            C0731a aVar = new C0731a(i2, j2, j3);
            lVar.a((l.a<f.a>) aVar);
        }
    }

    public final long a(int i2) {
        Long l2 = this.f9489g.get(i2);
        if (l2 == null) {
            l2 = this.f9489g.get(0);
        }
        if (l2 == null) {
            l2 = Long.valueOf(RetryManager.NANOSECONDS_IN_MS);
        }
        return l2.longValue();
    }
}
