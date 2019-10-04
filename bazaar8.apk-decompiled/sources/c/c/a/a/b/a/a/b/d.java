package c.c.a.a.b.a.a.b;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: ActionLogDao_Impl */
class d extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ e f4518d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(e eVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4518d = eVar;
    }

    public String d() {
        return "DELETE FROM actionLog";
    }
}
