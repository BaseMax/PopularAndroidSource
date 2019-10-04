package c.c.a.b;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import b.H.a;
import c.c.a.b.d.m;
import c.c.a.d.g.a.a;
import c.c.a.e.b.c;
import c.c.a.e.d.b.ba;
import c.c.a.g.b;
import c.c.a.p.C0681f;
import c.c.a.p.I;
import com.crashlytics.android.Crashlytics;
import com.farsitel.bazaar.app.receiver.PackageChangeReceiver;
import h.c.e;
import h.f.b.f;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.C1128u;
import i.a.H;
import i.a.va;
import java.io.File;

/* compiled from: BazaarHelper.kt */
public final class d implements H {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4557a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final c.c.a.e.d.u.a f4558b = c.c.a.d.a.a.f4744b.a(this.f4560d);

    /* renamed from: c  reason: collision with root package name */
    public final C1128u f4559c = va.a(null, 1, null);

    /* renamed from: d  reason: collision with root package name */
    public final Context f4560d;

    /* renamed from: e  reason: collision with root package name */
    public final ba f4561e;

    /* renamed from: f  reason: collision with root package name */
    public final c.c.a.e.d.u.a f4562f;

    /* renamed from: g  reason: collision with root package name */
    public final c.c.a.d.g.a.a f4563g;

    /* renamed from: h  reason: collision with root package name */
    public final b f4564h;

    /* renamed from: i  reason: collision with root package name */
    public final C0681f f4565i;

    /* renamed from: j  reason: collision with root package name */
    public final f.a.a.c.a f4566j;

    /* renamed from: k  reason: collision with root package name */
    public final c.c.a.d.c.b f4567k;

    /* renamed from: l  reason: collision with root package name */
    public final c.c.a.a.b.a.a f4568l;
    public final c.c.a.a.b.a m;
    public final I n;
    public final m o;
    public final c.c.a.e.d.a.a p;
    public final c q;
    public final c.c.a.e.b.a r;
    public final c.c.a.e.a.a.a s;
    public final c.c.a.d.h.a.a t;
    public final c.c.a.e.h.a.c u;

    /* compiled from: BazaarHelper.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(Context context, ba baVar, c.c.a.e.d.u.a aVar, c.c.a.d.g.a.a aVar2, b bVar, C0681f fVar, f.a.a.c.a aVar3, c.c.a.d.c.b bVar2, c.c.a.a.b.a.a aVar4, c.c.a.a.b.a aVar5, I i2, m mVar, c.c.a.e.d.a.a aVar6, c cVar, c.c.a.e.b.a aVar7, c.c.a.e.a.a.a aVar8, c.c.a.d.h.a.a aVar9, c.c.a.e.h.a.c cVar2) {
        Context context2 = context;
        ba baVar2 = baVar;
        c.c.a.e.d.u.a aVar10 = aVar;
        c.c.a.d.g.a.a aVar11 = aVar2;
        b bVar3 = bVar;
        C0681f fVar2 = fVar;
        f.a.a.c.a aVar12 = aVar3;
        c.c.a.d.c.b bVar4 = bVar2;
        c.c.a.a.b.a.a aVar13 = aVar4;
        c.c.a.a.b.a aVar14 = aVar5;
        I i3 = i2;
        m mVar2 = mVar;
        c.c.a.e.d.a.a aVar15 = aVar6;
        c cVar3 = cVar;
        c.c.a.e.a.a.a aVar16 = aVar8;
        j.b(context2, "context");
        j.b(baVar2, "upgradableAppRepository");
        j.b(aVar10, "settingsRepository");
        j.b(aVar11, "foregroundDetector");
        j.b(bVar3, "developerTools");
        j.b(fVar2, "workerFactory");
        j.b(aVar12, "inlineNetwork");
        j.b(bVar4, "accountManager");
        j.b(aVar13, "actionLogTracker");
        j.b(aVar14, "firebaseAnalyticsTracker");
        j.b(i3, "workManagerScheduler");
        j.b(mVar2, "paymentManager");
        j.b(aVar15, "accountRepository");
        j.b(cVar3, "deviceInfoDataSource");
        j.b(aVar7, "deviceDisplayInfoDataSource");
        j.b(aVar8, "legacyDataImporterRepository");
        j.b(aVar9, "customTabsActivityLifecycleCallbacks");
        j.b(cVar2, "networkCache");
        this.f4560d = context2;
        this.f4561e = baVar2;
        this.f4562f = aVar10;
        this.f4563g = aVar11;
        this.f4564h = bVar3;
        this.f4565i = fVar2;
        this.f4566j = aVar12;
        this.f4567k = bVar4;
        this.f4568l = aVar13;
        this.m = aVar14;
        this.n = i3;
        this.o = mVar2;
        this.p = aVar15;
        this.q = cVar3;
        this.r = aVar7;
        this.s = aVar8;
        this.t = aVar9;
        this.u = cVar2;
    }

    public e a() {
        return c.c.a.c.a.b.f4693c.b().plus(this.f4559c);
    }

    public final void b() {
        Crashlytics.setUserIdentifier(this.p.k());
        Crashlytics.setInt("device_id_int", this.p.d());
        Crashlytics.setString("android_id_int", this.q.a());
        Crashlytics.setBool("is_tablet", this.r.a());
        Crashlytics.setString("net_type", this.q.m());
        Crashlytics.setString("net_operator", this.q.l());
        Crashlytics.setString("locale", this.f4558b.l());
    }

    public final void c(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(new PackageChangeReceiver(), intentFilter);
    }

    public final void d(Context context) {
        C1125ra unused = C1103g.b(this, null, null, new BazaarHelper$syncUpgradableAppsWithLocal$1(this, context, null), 3, null);
    }

    public final void e() {
        this.n.d();
        if (!this.n.k()) {
            C1125ra unused = C1103g.b(this, null, null, new BazaarHelper$scheduleWorkers$1(this, null), 3, null);
        }
    }

    public final void a(Application application) {
        j.b(application, "application");
        c.c.a.m.a.a(application, this.u);
        c.c.a.c.c.a.f4699b.a(new c.c.a.d.g.b.b(0), new c.c.a.b.a.a(2));
        e.a.a.a.f.a((Context) application, new Crashlytics());
        c.c.a.a.a.f4477c.a(application, new BazaarHelper$initializeRequirements$1(this));
        b(application);
        f.a.a.b.a.f13941e.a(application, this.f4566j, this.f4567k, this.f4562f);
        a.C0017a aVar = new a.C0017a();
        aVar.a(this.f4565i);
        b.H.m.a(application, aVar.a());
        c.c.a.d.g.a.a aVar2 = this.f4563g;
        aVar2.a((Context) application);
        aVar2.a((a.C0077a) this.t);
        this.f4564h.a(application);
        c((Context) application);
        d((Context) application);
        e();
        C1125ra unused = C1103g.b(this, null, null, new BazaarHelper$initializeRequirements$3(this, null), 3, null);
        b();
        a((Context) application);
    }

    public final void d() {
        this.p.z();
    }

    public final void c() {
        String b2 = b(this.f4560d);
        if (b2 != null) {
            this.f4562f.d(b2);
        }
    }

    public final void b(Application application) {
        d();
        if (this.f4562f.z()) {
            c();
            C1125ra unused = C1103g.b(this, null, null, new BazaarHelper$runDataMigrations$1(this, application, null), 3, null);
        }
    }

    public final String b(Context context) {
        return context.getSharedPreferences("BazaarPreferences", 0).getString("bazaar_unique_id", null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x004a  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x006a A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object b(android.content.Context r6, h.c.b<? super h.h> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.farsitel.bazaar.app.BazaarHelper$prepareDataForBazaar8$1
            if (r0 == 0) goto L_0x0013
            r0 = r7
            com.farsitel.bazaar.app.BazaarHelper$prepareDataForBazaar8$1 r0 = (com.farsitel.bazaar.app.BazaarHelper$prepareDataForBazaar8$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.app.BazaarHelper$prepareDataForBazaar8$1 r0 = new com.farsitel.bazaar.app.BazaarHelper$prepareDataForBazaar8$1
            r0.<init>(r5, r7)
        L_0x0018:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x004a
            if (r2 == r4) goto L_0x003c
            if (r2 != r3) goto L_0x0034
            java.lang.Object r6 = r0.L$1
            android.content.Context r6 = (android.content.Context) r6
            java.lang.Object r6 = r0.L$0
            c.c.a.b.d r6 = (c.c.a.b.d) r6
            h.e.a((java.lang.Object) r7)
            goto L_0x006b
        L_0x0034:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L_0x003c:
            java.lang.Object r6 = r0.L$1
            android.content.Context r6 = (android.content.Context) r6
            java.lang.Object r2 = r0.L$0
            c.c.a.b.d r2 = (c.c.a.b.d) r2
            h.e.a((java.lang.Object) r7)
            r7 = r6
            r6 = r2
            goto L_0x005e
        L_0x004a:
            h.e.a((java.lang.Object) r7)
            c.c.a.e.a.a.a r7 = r5.s
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L_0x005c
            return r1
        L_0x005c:
            r7 = r6
            r6 = r5
        L_0x005e:
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r7 = r6.a(r7, r0)
            if (r7 != r1) goto L_0x006b
            return r1
        L_0x006b:
            c.c.a.e.d.u.a r6 = r6.f4562f
            r6.C()
            h.h r6 = h.h.f14579a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.b.d.b(android.content.Context, h.c.b):java.lang.Object");
    }

    public final /* synthetic */ Object a(Context context, h.c.b<? super h> bVar) {
        File cacheDir = context.getCacheDir();
        j.a((Object) cacheDir, "cacheDirectory");
        File file = new File(cacheDir.getParent());
        if (file.exists()) {
            for (String str : file.list()) {
                if (j.a((Object) str, (Object) "shared_prefs")) {
                    h.e.h.b(new File(file, str));
                }
            }
        }
        return h.f14579a;
    }

    public final void a(Context context) {
        C1125ra unused = C1103g.b(this, null, null, new BazaarHelper$getAdvertisingId$1(this, context, null), 3, null);
    }
}
