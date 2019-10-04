package b.H.a.c;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: WorkSpecDao_Impl */
class u extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ z f1486d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public u(z zVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f1486d = zVar;
    }

    public String d() {
        return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
    }
}
