.class public Lb/H/a/a/b/b;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lb/H/a/a;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/H/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/a/b/b;->b:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/H/a/a/b/b;->c:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/H/a/a/b/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_CONSTRAINTS_CHANGED"

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_DELAY_MET"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_EXECUTION_COMPLETED"

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 8
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_NEEDS_RESCHEDULE"

    .line 9
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static varargs a(Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 22
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_RESCHEDULE"

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_SCHEDULE_WORK"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_WORK"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;ILb/H/a/a/b/f;)V
    .locals 4

    .line 17
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Handling constraints changed %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 18
    new-instance p1, Lb/H/a/a/b/c;

    iget-object v0, p0, Lb/H/a/a/b/b;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p3}, Lb/H/a/a/b/c;-><init>(Landroid/content/Context;ILb/H/a/a/b/f;)V

    .line 19
    invoke-virtual {p1}, Lb/H/a/a/b/c;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 10
    iget-object v0, p0, Lb/H/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lb/H/a/a/b/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/H/a/a;

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1, p1, p2}, Lb/H/a/a;->a(Ljava/lang/String;Z)V

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lb/H/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lb/H/a/a/b/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Landroid/content/Intent;ILb/H/a/a/b/f;)V
    .locals 7

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lb/H/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "KEY_WORKSPEC_ID"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v2, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const-string v3, "Handing delay met for %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v5}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 10
    iget-object v1, p0, Lb/H/a/a/b/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lb/H/a/a/b/d;

    iget-object v2, p0, Lb/H/a/a/b/b;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p1, p3}, Lb/H/a/a/b/d;-><init>(Landroid/content/Context;ILjava/lang/String;Lb/H/a/a/b/f;)V

    .line 12
    iget-object p2, p0, Lb/H/a/a/b/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1}, Lb/H/a/a/b/d;->b()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p2

    sget-object p3, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const-string v1, "WorkSpec %s is already being handled for ACTION_DELAY_MET"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v6, [Ljava/lang/Throwable;

    .line 16
    invoke-virtual {p2, p3, p1, v1}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Landroid/content/Intent;ILb/H/a/a/b/f;)V
    .locals 5

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_WORKSPEC_ID"

    .line 5
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_NEEDS_RESCHEDULE"

    .line 6
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 7
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v2, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const-string p1, "Handling onExecutionCompleted %s, %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Throwable;

    .line 9
    invoke-virtual {v1, v2, p1, p2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p0, v0, p3}, Lb/H/a/a/b/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final d(Landroid/content/Intent;ILb/H/a/a/b/f;)V
    .locals 4

    .line 1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "Handling reschedule %s, %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p3}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object p1

    invoke-virtual {p1}, Lb/H/a/m;->j()V

    return-void
.end method

.method public final e(Landroid/content/Intent;ILb/H/a/a/b/f;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_WORKSPEC_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "Handling schedule work for %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v5}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p3}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v1

    .line 8
    invoke-interface {v1, p1}, Lb/H/a/c/p;->d(Ljava/lang/String;)Lb/H/a/c/o;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Skipping scheduling "

    if-nez v1, :cond_0

    .line 9
    :try_start_1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p2

    sget-object p3, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it\'s no longer in the DB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Throwable;

    invoke-virtual {p2, p3, p1, v1}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return-void

    .line 11
    :cond_0
    :try_start_2
    iget-object v5, v1, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p2

    sget-object p3, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "because it is finished."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Throwable;

    invoke-virtual {p2, p3, p1, v1}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return-void

    .line 14
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lb/H/a/c/o;->a()J

    move-result-wide v5

    .line 15
    invoke-virtual {v1}, Lb/H/a/c/o;->b()Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_2

    .line 16
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p2

    sget-object v1, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const-string v7, "Setting up Alarms for %s at %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v2

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 18
    invoke-virtual {p2, v1, v2, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 19
    iget-object p2, p0, Lb/H/a/a/b/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object p3

    invoke-static {p2, p3, p1, v5, v6}, Lb/H/a/a/b/a;->a(Landroid/content/Context;Lb/H/a/m;Ljava/lang/String;J)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v7, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const-string v8, "Opportunistically setting an alarm for %s at %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v2

    .line 22
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v1, v7, v2, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 24
    iget-object v1, p0, Lb/H/a/a/b/b;->b:Landroid/content/Context;

    .line 25
    invoke-virtual {p3}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object v2

    .line 26
    invoke-static {v1, v2, p1, v5, v6}, Lb/H/a/a/b/a;->a(Landroid/content/Context;Lb/H/a/m;Ljava/lang/String;J)V

    .line 27
    iget-object p1, p0, Lb/H/a/a/b/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lb/H/a/a/b/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 28
    new-instance v1, Lb/H/a/a/b/f$a;

    invoke-direct {v1, p3, p1, p2}, Lb/H/a/a/b/f$a;-><init>(Lb/H/a/a/b/f;Landroid/content/Intent;I)V

    invoke-virtual {p3, v1}, Lb/H/a/a/b/f;->a(Ljava/lang/Runnable;)V

    .line 29
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method

.method public final f(Landroid/content/Intent;ILb/H/a/a/b/f;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KEY_WORKSPEC_ID"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p2

    sget-object v0, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Handing stopWork work for %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p3}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/H/a/m;->d(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lb/H/a/a/b/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lb/H/a/a/b/a;->a(Landroid/content/Context;Lb/H/a/m;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, p1, v2}, Lb/H/a/a/b/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Landroid/content/Intent;ILb/H/a/a/b/f;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lb/H/a/a/b/b;->a(Landroid/content/Intent;ILb/H/a/a/b/f;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "ACTION_RESCHEDULE"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lb/H/a/a/b/b;->d(Landroid/content/Intent;ILb/H/a/a/b/f;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "KEY_WORKSPEC_ID"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lb/H/a/a/b/b;->a(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object p2, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v5

    aput-object v4, p3, v2

    const-string v0, "Invalid request for %s, requires %s."

    .line 9
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v5, [Ljava/lang/Throwable;

    .line 10
    invoke-virtual {p1, p2, p3, v0}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lb/H/a/a/b/b;->e(Landroid/content/Intent;ILb/H/a/a/b/f;)V

    goto :goto_0

    :cond_3
    const-string v1, "ACTION_DELAY_MET"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lb/H/a/a/b/b;->b(Landroid/content/Intent;ILb/H/a/a/b/f;)V

    goto :goto_0

    :cond_4
    const-string v1, "ACTION_STOP_WORK"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lb/H/a/a/b/b;->f(Landroid/content/Intent;ILb/H/a/a/b/f;)V

    goto :goto_0

    :cond_5
    const-string v1, "ACTION_EXECUTION_COMPLETED"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lb/H/a/a/b/b;->c(Landroid/content/Intent;ILb/H/a/a/b/f;)V

    goto :goto_0

    .line 19
    :cond_6
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p2

    sget-object p3, Lb/H/a/a/b/b;->a:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "Ignoring intent %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Throwable;

    invoke-virtual {p2, p3, p1, v0}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
