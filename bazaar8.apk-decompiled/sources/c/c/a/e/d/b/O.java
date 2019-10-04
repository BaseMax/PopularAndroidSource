package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0355d;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;

/* compiled from: UpgradableAppDao_Impl */
class O extends C0355d<LocalUpgradableApp> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ V f4950d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public O(V v, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4950d = v;
    }

    public String d() {
        return "UPDATE OR ABORT `upgradable_app` SET `packageName` = ?,`versionCode` = ?,`packageWolf` = ?,`isNotified` = ?,`isUpdateEnabled` = ?,`lastUpdateTime` = ? WHERE `packageName` = ?";
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
        if (localUpgradableApp.getPackageName() == null) {
            fVar.a(7);
        } else {
            fVar.a(7, localUpgradableApp.getPackageName());
        }
    }
}
