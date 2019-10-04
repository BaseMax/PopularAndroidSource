package c.c.a.a.b.a.a.b;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;

/* compiled from: ActionLogDao_Impl */
class b extends C0356e<i> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ e f4516d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(e eVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4516d = eVar;
    }

    public String d() {
        return "INSERT OR ABORT INTO `actionLog`(`id`,`when`,`json`) VALUES (nullif(?, 0),?,?)";
    }

    public void a(f fVar, i iVar) {
        fVar.a(1, iVar.a());
        fVar.a(2, iVar.c());
        if (iVar.b() == null) {
            fVar.a(3);
        } else {
            fVar.a(3, iVar.b());
        }
    }
}
