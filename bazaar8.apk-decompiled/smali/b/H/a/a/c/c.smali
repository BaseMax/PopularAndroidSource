.class public Lb/H/a/a/c/c;
.super Ljava/lang/Object;
.source "SystemJobScheduler.java"

# interfaces
.implements Lb/H/a/d;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/app/job/JobScheduler;

.field public final c:Lb/H/a/m;

.field public final d:Lb/H/a/d/e;

.field public final e:Lb/H/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/a/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/H/a/m;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Lb/H/a/a/c/b;

    invoke-direct {v1, p1}, Lb/H/a/a/c/b;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lb/H/a/a/c/c;-><init>(Landroid/content/Context;Lb/H/a/m;Landroid/app/job/JobScheduler;Lb/H/a/a/c/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/H/a/m;Landroid/app/job/JobScheduler;Lb/H/a/a/c/b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    .line 5
    iput-object p3, p0, Lb/H/a/a/c/c;->b:Landroid/app/job/JobScheduler;

    .line 6
    new-instance p2, Lb/H/a/d/e;

    invoke-direct {p2, p1}, Lb/H/a/d/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lb/H/a/a/c/c;->d:Lb/H/a/d/e;

    .line 7
    iput-object p4, p0, Lb/H/a/a/c/c;->e:Lb/H/a/a/c/b;

    return-void
.end method

.method public static a(Landroid/app/job/JobScheduler;Ljava/lang/String;)Landroid/app/job/JobInfo;
    .locals 4

    .line 60
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 62
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EXTRA_WORK_SPEC_ID"

    .line 63
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "jobscheduler"

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 57
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "EXTRA_WORK_SPEC_ID"

    .line 58
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lb/H/a/c/o;I)V
    .locals 6

    .line 30
    iget-object v0, p0, Lb/H/a/a/c/c;->e:Lb/H/a/a/c/b;

    invoke-virtual {v0, p1, p2}, Lb/H/a/a/c/b;->a(Lb/H/a/c/o;I)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 31
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v1

    sget-object v2, Lb/H/a/a/c/c;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lb/H/a/c/o;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const-string p1, "Scheduling work ID %s Job ID %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 33
    invoke-virtual {v1, v2, p1, v4}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 34
    :try_start_0
    iget-object p1, p0, Lb/H/a/a/c/c;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lb/H/a/a/c/c;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 37
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v4, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 38
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    .line 40
    invoke-virtual {v1}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v1

    invoke-interface {v1}, Lb/H/a/c/p;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p2

    iget-object p2, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    .line 41
    invoke-virtual {p2}, Lb/H/a/m;->c()Lb/H/a;

    move-result-object p2

    invoke-virtual {p2}, Lb/H/a;->d()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 42
    invoke-static {v0, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/a/c/c;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p2, v2}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lb/H/a/a/c/c;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 47
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    invoke-virtual {v2}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->t()Lb/H/a/c/f;

    move-result-object v2

    .line 51
    invoke-interface {v2, p1}, Lb/H/a/c/f;->b(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lb/H/a/a/c/c;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    :cond_1
    return-void
.end method

.method public varargs a([Lb/H/a/c/o;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v5

    iget-object v6, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-interface {v5, v6}, Lb/H/a/c/p;->d(Ljava/lang/String;)Lb/H/a/c/o;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Skipping scheduling "

    if-nez v5, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v5

    sget-object v7, Lb/H/a/a/c/c;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because it\'s no longer in the DB"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v4, v6}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    goto/16 :goto_3

    .line 7
    :cond_0
    :try_start_2
    iget-object v5, v5, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    sget-object v7, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v5, v7, :cond_1

    .line 8
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v5

    sget-object v7, Lb/H/a/a/c/c;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because it is no longer enqueued"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v4, v6}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lb/H/a/c/f;

    move-result-object v5

    iget-object v6, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    .line 10
    invoke-interface {v5, v6}, Lb/H/a/c/f;->a(Ljava/lang/String;)Lb/H/a/c/e;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 11
    iget-object v6, p0, Lb/H/a/a/c/c;->b:Landroid/app/job/JobScheduler;

    iget-object v7, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lb/H/a/a/c/c;->a(Landroid/app/job/JobScheduler;Ljava/lang/String;)Landroid/app/job/JobInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v5

    sget-object v6, Lb/H/a/a/c/c;->a:Ljava/lang/String;

    const-string v7, "Skipping scheduling %s because JobScheduler is aware of it already."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v4, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v4, v7}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 13
    iget v6, v5, Lb/H/a/c/e;->b:I

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lb/H/a/a/c/c;->d:Lb/H/a/d/e;

    iget-object v7, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    .line 14
    invoke-virtual {v7}, Lb/H/a/m;->c()Lb/H/a;

    move-result-object v7

    invoke-virtual {v7}, Lb/H/a;->e()I

    move-result v7

    iget-object v8, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    .line 15
    invoke-virtual {v8}, Lb/H/a/m;->c()Lb/H/a;

    move-result-object v8

    invoke-virtual {v8}, Lb/H/a;->c()I

    move-result v8

    .line 16
    invoke-virtual {v6, v7, v8}, Lb/H/a/d/e;->a(II)I

    move-result v6

    :goto_2
    if-nez v5, :cond_4

    .line 17
    new-instance v5, Lb/H/a/c/e;

    iget-object v7, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-direct {v5, v7, v6}, Lb/H/a/c/e;-><init>(Ljava/lang/String;I)V

    .line 18
    iget-object v7, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    invoke-virtual {v7}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v7

    .line 19
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->t()Lb/H/a/c/f;

    move-result-object v7

    .line 20
    invoke-interface {v7, v5}, Lb/H/a/c/f;->a(Lb/H/a/c/e;)V

    .line 21
    :cond_4
    invoke-virtual {p0, v4, v6}, Lb/H/a/a/c/c;->a(Lb/H/a/c/o;I)V

    .line 22
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ne v5, v6, :cond_5

    .line 23
    iget-object v5, p0, Lb/H/a/a/c/c;->d:Lb/H/a/d/e;

    iget-object v6, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    .line 24
    invoke-virtual {v6}, Lb/H/a/m;->c()Lb/H/a;

    move-result-object v6

    invoke-virtual {v6}, Lb/H/a;->e()I

    move-result v6

    iget-object v7, p0, Lb/H/a/a/c/c;->c:Lb/H/a/m;

    .line 25
    invoke-virtual {v7}, Lb/H/a/m;->c()Lb/H/a;

    move-result-object v7

    invoke-virtual {v7}, Lb/H/a;->c()I

    move-result v7

    .line 26
    invoke-virtual {v5, v6, v7}, Lb/H/a/d/e;->a(II)I

    move-result v5

    .line 27
    invoke-virtual {p0, v4, v5}, Lb/H/a/a/c/c;->a(Lb/H/a/c/o;I)V

    .line 28
    :cond_5
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1

    :cond_6
    return-void
.end method
