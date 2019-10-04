package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: WorkSpecDao_Impl */
class v extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z f1487d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public v(z zVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1487d = zVar;
    }

    public String d() {
        return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
    }
}
