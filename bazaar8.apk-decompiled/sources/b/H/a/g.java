package b.H.a;

import androidx.room.RoomDatabase;
import androidx.work.impl.WorkDatabase;
import b.C.a.b;

/* compiled from: WorkDatabase */
class g extends RoomDatabase.b {
    public void b(b bVar) {
        super.b(bVar);
        bVar.n();
        try {
            bVar.b("UPDATE workspec SET state=0, schedule_requested_at=-1 WHERE state=1");
            bVar.b(WorkDatabase.s());
            bVar.p();
        } finally {
            bVar.q();
        }
    }
}
