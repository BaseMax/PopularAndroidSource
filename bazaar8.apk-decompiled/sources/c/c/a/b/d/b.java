package c.c.a.b.d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.c.b.h;
import c.c.a.c.h.e;
import c.c.a.e.c;
import c.c.a.e.d.b.ba;
import c.c.a.e.d.u.a;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.common.model.ui.PackageChangeModel;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.io.File;

/* compiled from: AppManager.kt */
public final class b extends i {

    /* renamed from: g  reason: collision with root package name */
    public final t<PackageChangeModel> f4570g = new t<>();

    /* renamed from: h  reason: collision with root package name */
    public final Context f4571h;

    /* renamed from: i  reason: collision with root package name */
    public final c f4572i;

    /* renamed from: j  reason: collision with root package name */
    public final ba f4573j;

    /* renamed from: k  reason: collision with root package name */
    public final a f4574k;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(Context context, DownloadManager downloadManager, c cVar, ba baVar, a aVar, d dVar) {
        super(context, downloadManager, dVar);
        j.b(context, "context");
        j.b(downloadManager, "downloadManager");
        j.b(cVar, "storageManager");
        j.b(baVar, "upgradableAppRepository");
        j.b(aVar, "settingsRepository");
        j.b(dVar, "downloadStateManager");
        this.f4571h = context;
        this.f4572i = cVar;
        this.f4573j = baVar;
        this.f4574k = aVar;
    }

    public final LiveData<PackageChangeModel> g() {
        return this.f4570g;
    }

    public final Intent l(String str) {
        j.b(str, "entityId");
        File d2 = this.f4572i.d(str, EntityType.APP);
        if (d2 == null || !d2.exists()) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(m(str), "application/vnd.android.package-archive");
        intent.putExtra("android.intent.extra.NOT_UNKNOWN_SOURCE", true);
        intent.setFlags(268435456);
        intent.addFlags(1);
        return intent;
    }

    public final Uri m(String str) {
        j.b(str, "packageName");
        File d2 = this.f4572i.d(str, EntityType.APP);
        if (d2 != null) {
            return this.f4572i.c(d2);
        }
        return null;
    }

    public final Intent n(String str) {
        j.b(str, "packageName");
        return this.f4571h.getPackageManager().getLaunchIntentForPackage(str);
    }

    public final Intent o(String str) {
        j.b(str, "packageName");
        Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
        intent.setData(Uri.parse("package:" + str));
        return intent;
    }

    public final boolean p(String str) {
        j.b(str, "packageName");
        return e.f4731a.e(this.f4571h, str) != null;
    }

    public final void q(String str) {
        this.f4572i.k(str, EntityType.APP);
    }

    public final EntityState a(String str, Long l2) {
        j.b(str, "entityId");
        PackageInfo e2 = e.f4731a.e(this.f4571h, str);
        if (e(str) != null) {
            return EntityState.DOWNLOADING;
        }
        if (e2 != null) {
            if (h.b(e2) >= (l2 != null ? l2.longValue() : 0)) {
                return EntityState.INSTALLED;
            }
        }
        if (this.f4572i.j(str, EntityType.APP)) {
            return EntityState.FILE_EXISTS;
        }
        if (e2 != null) {
            return EntityState.UPDATE_NEEDED;
        }
        return EntityState.NONE;
    }

    public final void a(AppDownloaderModel appDownloaderModel) {
        j.b(appDownloaderModel, "appDownloadModel");
        synchronized (b()) {
            if (b(appDownloaderModel.getPackageName())) {
                h.h hVar = h.h.f14579a;
                Context context = this.f4571h;
                Intent intent = new Intent(context, DownloadService.class);
                intent.setAction("DOWNLOAD");
                intent.putExtras(DownloadService.f12108b.a(appDownloaderModel));
                context.startService(intent);
                a(appDownloaderModel.getPackageName(), EntityState.PREPARING);
            }
        }
    }

    public void a(String str, Boolean bool) {
        j.b(str, "packageName");
        super.a(str, bool);
        if (this.f4574k.E() && j.a((Object) bool, (Object) true)) {
            this.f4572i.a(str, EntityType.APP);
        }
    }

    public final void a(PackageChangeModel packageChangeModel) {
        j.b(packageChangeModel, "packageChangeModel");
        this.f4570g.a(packageChangeModel);
        g(packageChangeModel.getPackageName());
        C1125ra unused = C1103g.b(this, c.c.a.c.a.b.f4693c.a().plus(d()), null, new AppManager$packageChanged$1(this, packageChangeModel, null), 2, null);
    }
}
