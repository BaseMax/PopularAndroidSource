package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: UpgradableAppDao_Impl */
class S extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ V f4953d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public S(V v, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4953d = v;
    }

    public String d() {
        return "UPDATE upgradable_app SET isNotified = 1";
    }
}
