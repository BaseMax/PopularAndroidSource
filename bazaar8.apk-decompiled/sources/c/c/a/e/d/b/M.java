package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;

/* compiled from: UpgradableAppDao_Impl */
class M extends C0356e<LocalUpgradableApp> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ V f4948d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public M(V v, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4948d = v;
    }

    public String d() {
        return "INSERT OR IGNORE INTO `upgradable_app`(`packageName`,`versionCode`,`packageWolf`,`isNotified`,`isUpdateEnabled`,`lastUpdateTime`) VALUES (?,?,?,?,?,?)";
    }

    public void a(f fVar, LocalUpgradableApp localUpgradableApp) {
        if (localUpgradableApp.getPackageName() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, localUpgradableApp.getPackageName());
        }
        fVar.a(2, localUpgradableApp.getVersionCode());
        fVar.a(3, localUpgradableApp.isFree() ? 1 : 0);
        fVar.a(4, localUpgradableApp.isNotified() ? 1 : 0);
        fVar.a(5, localUpgradableApp.isUpdateEnabled() ? 1 : 0);
        fVar.a(6, localUpgradableApp.getLastUpdateTime());
    }
}
