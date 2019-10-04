package b.H.a.c;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;

/* compiled from: SystemIdInfoDao_Impl */
class g extends C0356e<C0184e> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ i f1454d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(i iVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1454d = iVar;
    }

    public String d() {
        return "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)";
    }

    public void a(f fVar, C0184e eVar) {
        String str = eVar.f1452a;
        if (str == null) {
            fVar.a(1);
        } else {
            fVar.a(1, str);
        }
        fVar.a(2, (long) eVar.f1453b);
    }
}
