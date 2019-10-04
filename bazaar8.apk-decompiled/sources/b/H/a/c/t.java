package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: WorkSpecDao_Impl */
class t extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z f1485d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public t(z zVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1485d = zVar;
    }

    public String d() {
        return "UPDATE workspec SET period_start_time=? WHERE id=?";
    }
}
