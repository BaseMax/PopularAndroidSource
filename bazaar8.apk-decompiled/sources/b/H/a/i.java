package b.H.a;

import android.os.Build;
import b.C.a.b;
import b.z.a.a;

/* compiled from: WorkDatabaseMigrations */
class i extends a {
    public i(int i2, int i3) {
        super(i2, i3);
    }

    public void a(b bVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            bVar.b("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
        }
    }
}
