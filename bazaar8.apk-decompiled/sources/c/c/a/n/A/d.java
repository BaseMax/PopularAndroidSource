package c.c.a.n.A;

import android.content.Intent;
import b.o.a.C0285i;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsFragment;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppsFragment.kt */
public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UpgradableAppsFragment f6156a;

    public d(UpgradableAppsFragment upgradableAppsFragment) {
        this.f6156a = upgradableAppsFragment;
    }

    public void a(boolean z) {
        String str;
        ArrayList<Intent> arrayList = new ArrayList<>();
        List<ListItem.App> r = UpgradableAppsFragment.a(this.f6156a).r();
        if (r != null) {
            for (ListItem.App app : r) {
                Intent a2 = UpgradableAppsFragment.a(this.f6156a).a(app.getApp());
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
        }
        for (Intent a3 : arrayList) {
            this.f6156a.a(a3);
        }
        List<UpgradableApp> q = UpgradableAppsFragment.a(this.f6156a).q();
        if (!q.isEmpty()) {
            C0285i Ga = this.f6156a.Ga();
            Intent intent = new Intent(this.f6156a.Ha(), DownloadService.class);
            if (z) {
                intent.putExtras(DownloadService.f12108b.a(q));
                str = "BATCH_DOWNLOAD";
            } else {
                str = "STOP_ALL";
            }
            intent.setAction(str);
            Ga.startService(intent);
        }
    }
}
