package b.H.a;

import androidx.room.RoomDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import b.C.a.b;
import b.z.b.d;
import b.z.w;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: WorkDatabase_Impl */
class l extends w.a {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ WorkDatabase_Impl f1580b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public l(WorkDatabase_Impl workDatabase_Impl, int i2) {
        super(i2);
        this.f1580b = workDatabase_Impl;
    }

    public void a(b bVar) {
        bVar.b("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        bVar.b("CREATE  INDEX `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
        bVar.b("CREATE  INDEX `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
        bVar.b("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
        bVar.b("CREATE  INDEX `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
        bVar.b("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        bVar.b("CREATE  INDEX `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
        bVar.b("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        bVar.b("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        bVar.b("CREATE  INDEX `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
        bVar.b("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        bVar.b("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"c84d23ade98552f1cec71088c1f0794c\")");
    }

    public void b(b bVar) {
        bVar.b("DROP TABLE IF EXISTS `Dependency`");
        bVar.b("DROP TABLE IF EXISTS `WorkSpec`");
        bVar.b("DROP TABLE IF EXISTS `WorkTag`");
        bVar.b("DROP TABLE IF EXISTS `SystemIdInfo`");
        bVar.b("DROP TABLE IF EXISTS `WorkName`");
    }

    public void c(b bVar) {
        if (this.f1580b.f944h != null) {
            int size = this.f1580b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f1580b.f944h.get(i2)).a(bVar);
            }
        }
    }

    public void d(b bVar) {
        b unused = this.f1580b.f937a = bVar;
        bVar.b("PRAGMA foreign_keys = ON");
        this.f1580b.a(bVar);
        if (this.f1580b.f944h != null) {
            int size = this.f1580b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f1580b.f944h.get(i2)).b(bVar);
            }
        }
    }

    public void g(b bVar) {
        b bVar2 = bVar;
        HashMap hashMap = new HashMap(2);
        hashMap.put("work_spec_id", new d.a("work_spec_id", "TEXT", true, 1));
        hashMap.put("prerequisite_id", new d.a("prerequisite_id", "TEXT", true, 2));
        HashSet hashSet = new HashSet(2);
        String str = "id";
        d.b bVar3 = new d.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[]{"work_spec_id"}), Arrays.asList(new String[]{"id"}));
        hashSet.add(bVar3);
        d.b bVar4 = new d.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[]{"prerequisite_id"}), Arrays.asList(new String[]{str}));
        hashSet.add(bVar4);
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(new d.C0048d("index_Dependency_work_spec_id", false, Arrays.asList(new String[]{"work_spec_id"})));
        hashSet2.add(new d.C0048d("index_Dependency_prerequisite_id", false, Arrays.asList(new String[]{"prerequisite_id"})));
        d dVar = new d("Dependency", hashMap, hashSet, hashSet2);
        d a2 = d.a(bVar2, "Dependency");
        if (dVar.equals(a2)) {
            HashMap hashMap2 = new HashMap(23);
            hashMap2.put(str, new d.a(str, "TEXT", true, 1));
            hashMap2.put("state", new d.a("state", "INTEGER", true, 0));
            hashMap2.put("worker_class_name", new d.a("worker_class_name", "TEXT", true, 0));
            hashMap2.put("input_merger_class_name", new d.a("input_merger_class_name", "TEXT", false, 0));
            hashMap2.put("input", new d.a("input", "BLOB", true, 0));
            hashMap2.put("output", new d.a("output", "BLOB", true, 0));
            hashMap2.put("initial_delay", new d.a("initial_delay", "INTEGER", true, 0));
            hashMap2.put("interval_duration", new d.a("interval_duration", "INTEGER", true, 0));
            hashMap2.put("flex_duration", new d.a("flex_duration", "INTEGER", true, 0));
            hashMap2.put("run_attempt_count", new d.a("run_attempt_count", "INTEGER", true, 0));
            hashMap2.put("backoff_policy", new d.a("backoff_policy", "INTEGER", true, 0));
            hashMap2.put("backoff_delay_duration", new d.a("backoff_delay_duration", "INTEGER", true, 0));
            hashMap2.put("period_start_time", new d.a("period_start_time", "INTEGER", true, 0));
            hashMap2.put("minimum_retention_duration", new d.a("minimum_retention_duration", "INTEGER", true, 0));
            hashMap2.put("schedule_requested_at", new d.a("schedule_requested_at", "INTEGER", true, 0));
            hashMap2.put("required_network_type", new d.a("required_network_type", "INTEGER", false, 0));
            hashMap2.put("requires_charging", new d.a("requires_charging", "INTEGER", true, 0));
            hashMap2.put("requires_device_idle", new d.a("requires_device_idle", "INTEGER", true, 0));
            hashMap2.put("requires_battery_not_low", new d.a("requires_battery_not_low", "INTEGER", true, 0));
            hashMap2.put("requires_storage_not_low", new d.a("requires_storage_not_low", "INTEGER", true, 0));
            hashMap2.put("trigger_content_update_delay", new d.a("trigger_content_update_delay", "INTEGER", true, 0));
            hashMap2.put("trigger_max_content_delay", new d.a("trigger_max_content_delay", "INTEGER", true, 0));
            hashMap2.put("content_uri_triggers", new d.a("content_uri_triggers", "BLOB", false, 0));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(1);
            hashSet4.add(new d.C0048d("index_WorkSpec_schedule_requested_at", false, Arrays.asList(new String[]{"schedule_requested_at"})));
            d dVar2 = new d("WorkSpec", hashMap2, hashSet3, hashSet4);
            d a3 = d.a(bVar2, "WorkSpec");
            if (dVar2.equals(a3)) {
                HashMap hashMap3 = new HashMap(2);
                hashMap3.put("tag", new d.a("tag", "TEXT", true, 1));
                hashMap3.put("work_spec_id", new d.a("work_spec_id", "TEXT", true, 2));
                HashSet hashSet5 = new HashSet(1);
                d.b bVar5 = new d.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[]{"work_spec_id"}), Arrays.asList(new String[]{str}));
                hashSet5.add(bVar5);
                HashSet hashSet6 = new HashSet(1);
                hashSet6.add(new d.C0048d("index_WorkTag_work_spec_id", false, Arrays.asList(new String[]{"work_spec_id"})));
                d dVar3 = new d("WorkTag", hashMap3, hashSet5, hashSet6);
                d a4 = d.a(bVar2, "WorkTag");
                if (dVar3.equals(a4)) {
                    HashMap hashMap4 = new HashMap(2);
                    hashMap4.put("work_spec_id", new d.a("work_spec_id", "TEXT", true, 1));
                    hashMap4.put("system_id", new d.a("system_id", "INTEGER", true, 0));
                    HashSet hashSet7 = new HashSet(1);
                    d.b bVar6 = new d.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[]{"work_spec_id"}), Arrays.asList(new String[]{str}));
                    hashSet7.add(bVar6);
                    d dVar4 = new d("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
                    d a5 = d.a(bVar2, "SystemIdInfo");
                    if (dVar4.equals(a5)) {
                        HashMap hashMap5 = new HashMap(2);
                        hashMap5.put(DefaultAppMeasurementEventListenerRegistrar.NAME, new d.a(DefaultAppMeasurementEventListenerRegistrar.NAME, "TEXT", true, 1));
                        hashMap5.put("work_spec_id", new d.a("work_spec_id", "TEXT", true, 2));
                        HashSet hashSet8 = new HashSet(1);
                        d.b bVar7 = new d.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[]{"work_spec_id"}), Arrays.asList(new String[]{str}));
                        hashSet8.add(bVar7);
                        HashSet hashSet9 = new HashSet(1);
                        hashSet9.add(new d.C0048d("index_WorkName_work_spec_id", false, Arrays.asList(new String[]{"work_spec_id"})));
                        d dVar5 = new d("WorkName", hashMap5, hashSet8, hashSet9);
                        d a6 = d.a(bVar2, "WorkName");
                        if (!dVar5.equals(a6)) {
                            throw new IllegalStateException("Migration didn't properly handle WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + dVar5 + "\n Found:\n" + a6);
                        }
                        return;
                    }
                    throw new IllegalStateException("Migration didn't properly handle SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + dVar4 + "\n Found:\n" + a5);
                }
                throw new IllegalStateException("Migration didn't properly handle WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + dVar3 + "\n Found:\n" + a4);
            }
            throw new IllegalStateException("Migration didn't properly handle WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + dVar2 + "\n Found:\n" + a3);
        }
        throw new IllegalStateException("Migration didn't properly handle Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + dVar + "\n Found:\n" + a2);
    }
}
