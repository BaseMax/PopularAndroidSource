.class public Lb/H/a/l;
.super Lb/z/w$a;
.source "WorkDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase_Impl;->a(Lb/z/c;)Lb/C/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-direct {p0, p2}, Lb/z/w$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 2
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 3
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))"

    .line 4
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 5
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 6
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 7
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 8
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 9
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 10
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 11
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"c84d23ade98552f1cec71088c1f0794c\")"

    .line 12
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lb/C/a/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `Dependency`"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 2
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 3
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 4
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkName`"

    .line 5
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lb/C/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->a(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v1}, Landroidx/work/impl/WorkDatabase_Impl;->b(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->c(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->a(Lb/C/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lb/C/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->a(Landroidx/work/impl/WorkDatabase_Impl;Lb/C/a/b;)Lb/C/a/b;

    const-string v0, "PRAGMA foreign_keys = ON"

    .line 2
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->b(Landroidx/work/impl/WorkDatabase_Impl;Lb/C/a/b;)V

    .line 4
    iget-object v0, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->d(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v1}, Landroidx/work/impl/WorkDatabase_Impl;->e(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 6
    iget-object v2, p0, Lb/H/a/l;->b:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->f(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->b(Lb/C/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lb/C/a/b;)V
    .locals 23

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v3, Lb/z/b/d$a;

    const-string v4, "TEXT"

    const-string v5, "work_spec_id"

    const/4 v6, 0x1

    invoke-direct {v3, v5, v4, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "prerequisite_id"

    invoke-direct {v3, v7, v4, v6, v2}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    new-instance v14, Lb/z/b/d$b;

    new-array v8, v6, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v5, v8, v15

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-array v8, v6, [Ljava/lang/String;

    const-string v13, "id"

    aput-object v13, v8, v15

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const-string v9, "WorkSpec"

    const-string v10, "CASCADE"

    const-string v11, "CASCADE"

    move-object v8, v14

    move-object v2, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lb/z/b/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v8, Lb/z/b/d$b;

    new-array v9, v6, [Ljava/lang/String;

    aput-object v7, v9, v15

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    new-array v9, v6, [Ljava/lang/String;

    aput-object v2, v9, v15

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const-string v18, "WorkSpec"

    const-string v19, "CASCADE"

    const-string v20, "CASCADE"

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v22}, Lb/z/b/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v8, Ljava/util/HashSet;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 8
    new-instance v9, Lb/z/b/d$d;

    new-array v10, v6, [Ljava/lang/String;

    aput-object v5, v10, v15

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_Dependency_work_spec_id"

    invoke-direct {v9, v11, v15, v10}, Lb/z/b/d$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v9, Lb/z/b/d$d;

    new-array v10, v6, [Ljava/lang/String;

    aput-object v7, v10, v15

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v10, "index_Dependency_prerequisite_id"

    invoke-direct {v9, v10, v15, v7}, Lb/z/b/d$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v7, Lb/z/b/d;

    const-string v9, "Dependency"

    invoke-direct {v7, v9, v1, v3, v8}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 11
    invoke-static {v0, v9}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 12
    invoke-virtual {v7, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "\n Found:\n"

    if-eqz v3, :cond_4

    .line 13
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x17

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 14
    new-instance v3, Lb/z/b/d$a;

    invoke-direct {v3, v2, v4, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "state"

    const-string v9, "INTEGER"

    invoke-direct {v3, v7, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "worker_class_name"

    invoke-direct {v3, v7, v4, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "input_merger_class_name"

    invoke-direct {v3, v7, v4, v15, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "BLOB"

    const-string v10, "input"

    invoke-direct {v3, v10, v7, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "input"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "output"

    invoke-direct {v3, v10, v7, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "output"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "initial_delay"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "initial_delay"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "interval_duration"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "interval_duration"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "flex_duration"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "flex_duration"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "run_attempt_count"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "run_attempt_count"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "backoff_policy"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "backoff_policy"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "backoff_delay_duration"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "backoff_delay_duration"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "period_start_time"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "period_start_time"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "minimum_retention_duration"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "minimum_retention_duration"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "schedule_requested_at"

    invoke-direct {v3, v10, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "required_network_type"

    invoke-direct {v3, v11, v9, v15, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v11, "required_network_type"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "requires_charging"

    invoke-direct {v3, v11, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v11, "requires_charging"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "requires_device_idle"

    invoke-direct {v3, v11, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v11, "requires_device_idle"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "requires_battery_not_low"

    invoke-direct {v3, v11, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v11, "requires_battery_not_low"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "requires_storage_not_low"

    invoke-direct {v3, v11, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v11, "requires_storage_not_low"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "trigger_content_update_delay"

    invoke-direct {v3, v11, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v11, "trigger_content_update_delay"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "trigger_max_content_delay"

    invoke-direct {v3, v11, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v11, "trigger_max_content_delay"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "content_uri_triggers"

    invoke-direct {v3, v11, v7, v15, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v7, "content_uri_triggers"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 38
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 39
    new-instance v11, Lb/z/b/d$d;

    new-array v12, v6, [Ljava/lang/String;

    aput-object v10, v12, v15

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v12, "index_WorkSpec_schedule_requested_at"

    invoke-direct {v11, v12, v15, v10}, Lb/z/b/d$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v10, Lb/z/b/d;

    const-string v11, "WorkSpec"

    invoke-direct {v10, v11, v1, v3, v7}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "WorkSpec"

    .line 41
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 42
    invoke-virtual {v10, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 44
    new-instance v7, Lb/z/b/d$a;

    const-string v10, "tag"

    invoke-direct {v7, v10, v4, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "tag"

    invoke-virtual {v1, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v7, Lb/z/b/d$a;

    invoke-direct {v7, v5, v4, v6, v3}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 47
    new-instance v7, Lb/z/b/d$b;

    new-array v10, v6, [Ljava/lang/String;

    aput-object v5, v10, v15

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    new-array v10, v6, [Ljava/lang/String;

    aput-object v2, v10, v15

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const-string v18, "WorkSpec"

    const-string v19, "CASCADE"

    const-string v20, "CASCADE"

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v22}, Lb/z/b/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 49
    new-instance v10, Lb/z/b/d$d;

    new-array v11, v6, [Ljava/lang/String;

    aput-object v5, v11, v15

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "index_WorkTag_work_spec_id"

    invoke-direct {v10, v12, v15, v11}, Lb/z/b/d$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v10, Lb/z/b/d;

    const-string v11, "WorkTag"

    invoke-direct {v10, v11, v1, v3, v7}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "WorkTag"

    .line 51
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 52
    invoke-virtual {v10, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 54
    new-instance v3, Lb/z/b/d$a;

    invoke-direct {v3, v5, v4, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "system_id"

    invoke-direct {v3, v7, v9, v6, v15}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v7, "system_id"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 57
    new-instance v7, Lb/z/b/d$b;

    new-array v9, v6, [Ljava/lang/String;

    aput-object v5, v9, v15

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-array v9, v6, [Ljava/lang/String;

    aput-object v2, v9, v15

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v10, "WorkSpec"

    const-string v11, "CASCADE"

    const-string v12, "CASCADE"

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lb/z/b/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 59
    new-instance v9, Lb/z/b/d;

    const-string v10, "SystemIdInfo"

    invoke-direct {v9, v10, v1, v3, v7}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "SystemIdInfo"

    .line 60
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 61
    invoke-virtual {v9, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    new-instance v7, Lb/z/b/d$a;

    const-string v9, "name"

    invoke-direct {v7, v9, v4, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v9, "name"

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v7, Lb/z/b/d$a;

    invoke-direct {v7, v5, v4, v6, v3}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 66
    new-instance v4, Lb/z/b/d$b;

    new-array v7, v6, [Ljava/lang/String;

    aput-object v5, v7, v15

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-array v7, v6, [Ljava/lang/String;

    aput-object v2, v7, v15

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v10, "WorkSpec"

    const-string v11, "CASCADE"

    const-string v12, "CASCADE"

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lb/z/b/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 68
    new-instance v4, Lb/z/b/d$d;

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v15

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "index_WorkName_work_spec_id"

    invoke-direct {v4, v6, v15, v5}, Lb/z/b/d$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v4, Lb/z/b/d;

    const-string v5, "WorkName"

    invoke-direct {v4, v5, v1, v3, v2}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "WorkName"

    .line 70
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v0

    .line 71
    invoke-virtual {v4, v0}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
