package b.H.a;

import b.C.a.b;
import b.z.a.a;

/* compiled from: WorkDatabaseMigrations */
class h extends a {
    public h(int i2, int i3) {
        super(i2, i3);
    }

    public void a(b bVar) {
        bVar.b("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        bVar.b("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
        bVar.b("DROP TABLE IF EXISTS alarmInfo");
        bVar.b("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
    }
}
