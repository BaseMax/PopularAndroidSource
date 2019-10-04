package b.H.a;

import b.C.a.b;
import b.z.a.a;

/* compiled from: WorkDatabaseMigrations */
class j extends a {
    public j(int i2, int i3) {
        super(i2, i3);
    }

    public void a(b bVar) {
        bVar.b("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        bVar.b("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
