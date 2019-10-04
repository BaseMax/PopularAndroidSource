package e.a.a.a.a.g;

import android.content.Context;
import e.a.a.a.a.b.B;
import e.a.a.a.a.b.i;
import e.a.a.a.a.b.n;
import e.a.a.a.a.e.f;
import e.a.a.a.l;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.settings.SettingsCacheBehavior;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Settings */
public class s {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReference<u> f13840a;

    /* renamed from: b  reason: collision with root package name */
    public final CountDownLatch f13841b;

    /* renamed from: c  reason: collision with root package name */
    public t f13842c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f13843d;

    /* compiled from: Settings */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final s f13844a = new s();
    }

    public static s b() {
        return a.f13844a;
    }

    public synchronized s a(l lVar, IdManager idManager, f fVar, String str, String str2, String str3, n nVar) {
        l lVar2 = lVar;
        synchronized (this) {
            if (this.f13843d) {
                return this;
            }
            if (this.f13842c == null) {
                Context context = lVar.getContext();
                String d2 = idManager.d();
                String d3 = new i().d(context);
                String g2 = idManager.g();
                B b2 = new B();
                l lVar3 = new l();
                j jVar = new j(lVar2);
                String c2 = CommonUtils.c(context);
                String str4 = str3;
                m mVar = new m(lVar2, str4, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", new Object[]{d2}), fVar);
                String h2 = idManager.h();
                String str5 = h2;
                String str6 = str2;
                String str7 = str;
                x xVar = new x(d3, str5, idManager.i(), idManager.j(), idManager.e(), CommonUtils.a(CommonUtils.n(context)), str6, str7, DeliveryMechanism.a(g2).getId(), c2);
                k kVar = new k(lVar, xVar, b2, lVar3, jVar, mVar, nVar);
                this.f13842c = kVar;
            }
            this.f13843d = true;
            return this;
        }
    }

    public synchronized boolean c() {
        u a2;
        a2 = this.f13842c.a();
        a(a2);
        return a2 != null;
    }

    public synchronized boolean d() {
        u a2;
        a2 = this.f13842c.a(SettingsCacheBehavior.SKIP_CACHE_LOOKUP);
        a(a2);
        if (a2 == null) {
            e.a.a.a.f.e().b("Fabric", "Failed to force reload of settings from Crashlytics.", null);
        }
        return a2 != null;
    }

    public s() {
        this.f13840a = new AtomicReference<>();
        this.f13841b = new CountDownLatch(1);
        this.f13843d = false;
    }

    public u a() {
        try {
            this.f13841b.await();
            return this.f13840a.get();
        } catch (InterruptedException unused) {
            e.a.a.a.f.e().b("Fabric", "Interrupted while waiting for settings data.");
            return null;
        }
    }

    public final void a(u uVar) {
        this.f13840a.set(uVar);
        this.f13841b.countDown();
    }
}
