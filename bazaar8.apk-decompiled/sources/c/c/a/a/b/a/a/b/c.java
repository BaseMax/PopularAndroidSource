package c.c.a.a.b.a.a.b;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0355d;

/* compiled from: ActionLogDao_Impl */
class c extends C0355d<i> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ e f4517d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(e eVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4517d = eVar;
    }

    public String d() {
        return "DELETE FROM `actionLog` WHERE `id` = ?";
    }

    public void a(f fVar, i iVar) {
        fVar.a(1, iVar.a());
    }
}
