package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: WorkSpecDao_Impl */
class y extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z f1490d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public y(z zVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1490d = zVar;
    }

    public String d() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }
}
