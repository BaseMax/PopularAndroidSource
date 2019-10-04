package c.c.a.b.d;

import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.LiveData;
import b.r.D;
import b.r.t;
import c.c.a.c.a.b;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.app.download.DownloadServiceNotifyType;
import com.farsitel.bazaar.common.model.DownloadStatus;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import h.c.e;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.C1128u;
import i.a.H;
import i.a.va;
import java.util.Map;

/* compiled from: EntityManager.kt */
public abstract class i implements H {

    /* renamed from: a  reason: collision with root package name */
    public final C1128u f4588a = va.a(null, 1, null);

    /* renamed from: b  reason: collision with root package name */
    public final Object f4589b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final t<h> f4590c = new t<>();

    /* renamed from: d  reason: collision with root package name */
    public final Context f4591d;

    /* renamed from: e  reason: collision with root package name */
    public final DownloadManager f4592e;

    /* renamed from: f  reason: collision with root package name */
    public final d f4593f;

    public i(Context context, DownloadManager downloadManager, d dVar) {
        j.b(context, "context");
        j.b(downloadManager, "downloadManager");
        j.b(dVar, "downloadStateManager");
        this.f4591d = context;
        this.f4592e = downloadManager;
        this.f4593f = dVar;
        C1125ra unused = C1103g.b(this, null, null, new EntityManager$1(this, null), 3, null);
    }

    public final Object b() {
        return this.f4589b;
    }

    public final void c(String str) {
        this.f4593f.a(str, EntityState.FAILED);
        e();
    }

    public final C1128u d() {
        return this.f4588a;
    }

    public final i.a.b.t<DownloadStatus> e(String str) {
        j.b(str, "entityId");
        return this.f4592e.e(str);
    }

    public final void f() {
        this.f4593f.b();
        e();
    }

    public final void g(String str) {
        j.b(str, "entityId");
        this.f4593f.a(str);
        e();
    }

    public final void h(String str) {
        j.b(str, "entityId");
        Context context = this.f4591d;
        Intent intent = new Intent(context, DownloadService.class);
        intent.setAction("STOP");
        intent.putExtras(DownloadService.f12108b.a(str));
        context.startService(intent);
    }

    public final void i(String str) {
        g(str);
    }

    public final void j(String str) {
        this.f4593f.a(str, EntityState.IN_QUEUE);
        e();
    }

    public final void k(String str) {
        this.f4593f.a(str, EntityState.FAILED);
        e();
    }

    public final boolean b(String str) {
        j.b(str, "entityId");
        return e(str) == null;
    }

    public final LiveData<EntityState> d(String str) {
        j.b(str, "entityId");
        LiveData<EntityState> a2 = D.a(this.f4590c, new h(this, str));
        j.a((Object) a2, "Transformations.map(noti…ate()[entityId]\n        }");
        return a2;
    }

    public final void e() {
        this.f4590c.b(h.f14579a);
    }

    public e a() {
        return b.f4693c.b().plus(this.f4588a);
    }

    public final LiveData<Map<String, EntityState>> c() {
        LiveData<Map<String, EntityState>> a2 = D.a(this.f4590c, new g(this));
        j.a((Object) a2, "Transformations.map(noti…EntitiesState()\n        }");
        return a2;
    }

    public final void f(String str) {
        this.f4593f.a(str, EntityState.INCOMPATIBLE);
        e();
    }

    public final void a(c.c.a.b.b.b bVar) {
        switch (f.f4583a[bVar.a().ordinal()]) {
            case 1:
                i(bVar.b());
                return;
            case 2:
                c(bVar.b());
                return;
            case 3:
                f(bVar.b());
                return;
            case 4:
                j(bVar.b());
                return;
            case 5:
                k(bVar.b());
                return;
            case 6:
                a(bVar.b());
                return;
            case 7:
                a(bVar.b(), bVar.c());
                return;
            case 8:
                a(bVar.b(), EntityState.CHECKING);
                return;
            case 9:
            case 10:
            case 11:
            case 12:
                a(bVar.b(), bVar.a());
                return;
            case 13:
                f();
                return;
            default:
                return;
        }
    }

    public final void a(String str) {
        this.f4593f.a(str, EntityState.DOWNLOADING);
        e();
    }

    public void a(String str, Boolean bool) {
        j.b(str, "entityId");
        g(str);
    }

    public final void a(String str, DownloadServiceNotifyType downloadServiceNotifyType) {
        EntityState entityState;
        j.b(str, "entityId");
        j.b(downloadServiceNotifyType, "downloadServiceNotifyType");
        d dVar = this.f4593f;
        int i2 = f.f4584b[downloadServiceNotifyType.ordinal()];
        if (i2 == 1) {
            entityState = EntityState.FAILED_STORAGE;
        } else if (i2 == 2) {
            entityState = EntityState.FAILED;
        } else if (i2 == 3) {
            entityState = EntityState.PAUSE;
        } else if (i2 != 4) {
            entityState = EntityState.FAILED;
        } else {
            entityState = EntityState.PAUSE_BY_SYSTEM;
        }
        dVar.a(str, entityState);
        e();
    }

    public final void a(String str, EntityState entityState) {
        j.b(str, "entityId");
        j.b(entityState, "state");
        this.f4593f.a(str, entityState);
        e();
    }
}
