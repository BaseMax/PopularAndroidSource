.class public Lb/H/a/d/d;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lb/H/a/f;

.field public final c:Lb/H/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/d/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lb/H/a/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/d/d;->b:Lb/H/a/f;

    .line 3
    new-instance p1, Lb/H/a/b;

    invoke-direct {p1}, Lb/H/a/b;-><init>()V

    iput-object p1, p0, Lb/H/a/d/d;->c:Lb/H/a/b;

    return-void
.end method

.method public static a(Lb/H/a/c/o;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 70
    invoke-virtual {v0}, Lb/H/b;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lb/H/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    iget-object v0, p0, Lb/H/a/c/o;->e:Ljava/lang/String;

    .line 72
    new-instance v1, Lb/H/d$a;

    invoke-direct {v1}, Lb/H/d$a;-><init>()V

    .line 73
    iget-object v2, p0, Lb/H/a/c/o;->g:Lb/H/d;

    invoke-virtual {v1, v2}, Lb/H/d$a;->a(Lb/H/d;)Lb/H/d$a;

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 74
    invoke-virtual {v1, v2, v0}, Lb/H/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/H/d$a;

    .line 75
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/c/o;->e:Ljava/lang/String;

    .line 76
    invoke-virtual {v1}, Lb/H/d$a;->a()Lb/H/d;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/c/o;->g:Lb/H/d;

    :cond_1
    return-void
.end method

.method public static a(Lb/H/a/f;)Z
    .locals 5

    .line 7
    invoke-static {p0}, Lb/H/a/f;->a(Lb/H/a/f;)Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lb/H/a/f;->g()Lb/H/a/m;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lb/H/a/f;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lb/H/a/f;->d()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lb/H/a/f;->b()Landroidx/work/ExistingWorkPolicy;

    move-result-object v4

    .line 13
    invoke-static {v1, v2, v0, v3, v4}, Lb/H/a/d/d;->a(Lb/H/a/m;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z

    move-result v0

    .line 14
    invoke-virtual {p0}, Lb/H/a/f;->j()V

    return v0
.end method

.method public static a(Lb/H/a/m;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lb/H/a/m;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/H/a/d;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static a(Lb/H/a/m;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/m;",
            "Ljava/util/List<",
            "+",
            "Lb/H/n;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v6

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    .line 17
    array-length v9, v1

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_5

    .line 18
    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v15, v1, v11

    .line 19
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v7

    invoke-interface {v7, v15}, Lb/H/a/c/p;->d(Ljava/lang/String;)Lb/H/a/c/o;

    move-result-object v7

    if-nez v7, :cond_1

    .line 20
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/d/d;->a:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const-string v4, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 21
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 22
    invoke-virtual {v0, v1, v2, v4}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v3

    .line 23
    :cond_1
    iget-object v7, v7, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 24
    sget-object v15, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v7, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    and-int/2addr v12, v15

    .line 25
    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v7, v15, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    .line 26
    :cond_3
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v7, v15, :cond_4

    const/4 v14, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 27
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v8

    if-eqz v7, :cond_7

    if-nez v9, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_e

    .line 28
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v10

    invoke-interface {v10, v2}, Lb/H/a/c/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 29
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    .line 30
    sget-object v11, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    if-ne v3, v11, :cond_f

    .line 31
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->p()Lb/H/a/c/b;

    move-result-object v3

    .line 32
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/H/a/c/o$a;

    .line 34
    iget-object v15, v11, Lb/H/a/c/o$a;->a:Ljava/lang/String;

    invoke-interface {v3, v15}, Lb/H/a/c/b;->c(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 35
    iget-object v15, v11, Lb/H/a/c/o$a;->b:Landroidx/work/WorkInfo$State;

    sget-object v8, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v15, v8, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    and-int/2addr v8, v12

    .line 36
    iget-object v12, v11, Lb/H/a/c/o$a;->b:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v12, v15, :cond_9

    const/4 v13, 0x1

    goto :goto_7

    .line 37
    :cond_9
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v12, v15, :cond_a

    const/4 v14, 0x1

    .line 38
    :cond_a
    :goto_7
    iget-object v11, v11, Lb/H/a/c/o$a;->a:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v8

    :cond_b
    const/4 v8, 0x1

    goto :goto_5

    .line 39
    :cond_c
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 40
    array-length v3, v1

    if-lez v3, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :cond_e
    :goto_8
    const/4 v3, 0x0

    goto :goto_a

    .line 41
    :cond_f
    sget-object v8, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v3, v8, :cond_12

    .line 42
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/H/a/c/o$a;

    .line 43
    iget-object v8, v8, Lb/H/a/c/o$a;->b:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v8, v11, :cond_11

    sget-object v11, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v8, v11, :cond_10

    :cond_11
    const/4 v3, 0x0

    return v3

    :cond_12
    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v0, v3}, Lb/H/a/d/c;->a(Ljava/lang/String;Lb/H/a/m;Z)Lb/H/a/d/c;

    move-result-object v8

    invoke-virtual {v8}, Lb/H/a/d/c;->run()V

    .line 45
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v8

    .line 46
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/H/a/c/o$a;

    .line 47
    iget-object v11, v11, Lb/H/a/c/o$a;->a:Ljava/lang/String;

    invoke-interface {v8, v11}, Lb/H/a/c/p;->delete(Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    const/16 v16, 0x1

    goto :goto_b

    :goto_a
    const/16 v16, 0x0

    .line 48
    :goto_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/H/n;

    .line 49
    invoke-virtual {v10}, Lb/H/n;->c()Lb/H/a/c/o;

    move-result-object v11

    if-eqz v9, :cond_16

    if-nez v12, :cond_16

    if-eqz v13, :cond_14

    .line 50
    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    iput-object v15, v11, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    goto :goto_d

    :cond_14
    if-eqz v14, :cond_15

    .line 51
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    iput-object v15, v11, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    goto :goto_d

    .line 52
    :cond_15
    sget-object v15, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v15, v11, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    goto :goto_d

    .line 53
    :cond_16
    invoke-virtual {v11}, Lb/H/a/c/o;->d()Z

    move-result v15

    if-nez v15, :cond_17

    .line 54
    iput-wide v4, v11, Lb/H/a/c/o;->p:J

    :goto_d
    move-wide/from16 v17, v4

    goto :goto_e

    :cond_17
    move-wide/from16 v17, v4

    const-wide/16 v3, 0x0

    .line 55
    iput-wide v3, v11, Lb/H/a/c/o;->p:J

    .line 56
    :goto_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_18

    const/16 v4, 0x19

    if-gt v3, v4, :cond_18

    .line 57
    invoke-static {v11}, Lb/H/a/d/d;->a(Lb/H/a/c/o;)V

    goto :goto_f

    .line 58
    :cond_18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-gt v3, v4, :cond_19

    const-string v3, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 59
    invoke-static {v0, v3}, Lb/H/a/d/d;->a(Lb/H/a/m;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 60
    invoke-static {v11}, Lb/H/a/d/d;->a(Lb/H/a/c/o;)V

    .line 61
    :cond_19
    :goto_f
    iget-object v3, v11, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v3, v4, :cond_1a

    const/16 v16, 0x1

    .line 62
    :cond_1a
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v3

    invoke-interface {v3, v11}, Lb/H/a/c/p;->a(Lb/H/a/c/o;)V

    if-eqz v9, :cond_1b

    .line 63
    array-length v3, v1

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1b

    aget-object v5, v1, v4

    .line 64
    new-instance v11, Lb/H/a/c/a;

    invoke-virtual {v10}, Lb/H/n;->a()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15, v5}, Lb/H/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->p()Lb/H/a/c/b;

    move-result-object v5

    invoke-interface {v5, v11}, Lb/H/a/c/b;->a(Lb/H/a/c/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 66
    :cond_1b
    invoke-virtual {v10}, Lb/H/n;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->w()Lb/H/a/c/B;

    move-result-object v5

    new-instance v11, Lb/H/a/c/A;

    invoke-virtual {v10}, Lb/H/n;->a()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v4, v15}, Lb/H/a/c/A;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Lb/H/a/c/B;->a(Lb/H/a/c/A;)V

    goto :goto_11

    :cond_1c
    if-eqz v7, :cond_1d

    .line 68
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->u()Lb/H/a/c/k;

    move-result-object v3

    new-instance v4, Lb/H/a/c/j;

    invoke-virtual {v10}, Lb/H/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lb/H/a/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lb/H/a/c/k;->a(Lb/H/a/c/j;)V

    :cond_1d
    move-wide/from16 v4, v17

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_1e
    return v16
.end method

.method public static b(Lb/H/a/f;)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Lb/H/a/f;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/H/a/f;

    .line 4
    invoke-virtual {v3}, Lb/H/a/f;->i()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {v3}, Lb/H/a/d/d;->b(Lb/H/a/f;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v4

    sget-object v5, Lb/H/a/d/d;->a:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v3}, Lb/H/a/f;->c()Ljava/util/List;

    move-result-object v3

    const-string v7, ", "

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Already enqueued work ids (%s)."

    .line 8
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v3, v6}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 9
    :cond_2
    invoke-static {p0}, Lb/H/a/d/d;->a(Lb/H/a/f;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/d/d;->b:Lb/H/a/f;

    invoke-virtual {v0}, Lb/H/a/f;->g()Lb/H/a/m;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lb/H/a/d/d;->b:Lb/H/a/f;

    invoke-static {v1}, Lb/H/a/d/d;->b(Lb/H/a/f;)Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw v1
.end method

.method public b()Lb/H/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/d/d;->c:Lb/H/a/b;

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/H/a/d/d;->b:Lb/H/a/f;

    invoke-virtual {v0}, Lb/H/a/f;->g()Lb/H/a/m;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lb/H/a/m;->c()Lb/H/a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lb/H/a/m;->f()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v1, v2, v0}, Lb/H/a/e;->a(Lb/H/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/H/a/d/d;->b:Lb/H/a/f;

    invoke-virtual {v0}, Lb/H/a/f;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lb/H/a/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/H/a/d/d;->b:Lb/H/a/f;

    .line 4
    invoke-virtual {v0}, Lb/H/a/f;->g()Lb/H/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/H/a/m;->b()Landroid/content/Context;

    move-result-object v0

    .line 5
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Lb/H/a/d/f;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 6
    invoke-virtual {p0}, Lb/H/a/d/d;->c()V

    .line 7
    :cond_0
    iget-object v0, p0, Lb/H/a/d/d;->c:Lb/H/a/b;

    sget-object v1, Lb/H/i;->a:Lb/H/i$a$c;

    invoke-virtual {v0, v1}, Lb/H/a/b;->a(Lb/H/i$a;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/H/a/d/d;->b:Lb/H/a/f;

    aput-object v4, v1, v3

    .line 9
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lb/H/a/d/d;->c:Lb/H/a/b;

    new-instance v2, Lb/H/i$a$a;

    invoke-direct {v2, v0}, Lb/H/i$a$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lb/H/a/b;->a(Lb/H/i$a;)V

    :goto_0
    return-void
.end method
