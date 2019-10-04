package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: WorkSpecDao_Impl */
class r extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z f1483d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public r(z zVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1483d = zVar;
    }

    public String d() {
        return "DELETE FROM workspec WHERE id=?";
    }
}
