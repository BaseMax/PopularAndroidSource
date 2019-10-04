package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: UpgradableAppDao_Impl */
class Q extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ V f4952d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Q(V v, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4952d = v;
    }

    public String d() {
        return "DELETE FROM upgradable_app WHERE packageName = ? and versionCode = ?";
    }
}
