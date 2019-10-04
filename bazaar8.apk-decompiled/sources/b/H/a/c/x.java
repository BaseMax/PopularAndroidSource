package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: WorkSpecDao_Impl */
class x extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z f1489d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public x(z zVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1489d = zVar;
    }

    public String d() {
        return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
    }
}
