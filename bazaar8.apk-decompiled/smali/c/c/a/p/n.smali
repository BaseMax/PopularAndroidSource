.class public final Lc/c/a/p/n;
.super Ljava/lang/Object;
.source "PeriodicStartWorker.kt"


# direct methods
.method public static final a(Ljava/lang/Class;JJ[Ljava/lang/String;Landroidx/work/NetworkType;ZZZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/Worker;",
            ">;JJ[",
            "Ljava/lang/String;",
            "Landroidx/work/NetworkType;",
            "ZZZJ)V"
        }
    .end annotation

    const-string v0, "workerClass"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lb/H/g$a;

    const-class v1, Lcom/farsitel/bazaar/work/PeriodicStartWorker;

    invoke-direct {v0, v1}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lb/H/g$a;->a(JLjava/util/concurrent/TimeUnit;)Lb/H/g$a;

    const-string p1, "OneTimeWorkRequest\n     \u2026Minute, TimeUnit.MINUTES)"

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lb/H/d$a;

    invoke-direct {p1}, Lb/H/d$a;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "className"

    invoke-virtual {p1, p2, p0}, Lb/H/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/H/d$a;

    const-string p0, "intervalInHour"

    .line 7
    invoke-virtual {p1, p0, p3, p4}, Lb/H/d$a;->a(Ljava/lang/String;J)Lb/H/d$a;

    .line 8
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string p2, "networkConstraint"

    invoke-virtual {p1, p2, p0}, Lb/H/d$a;->a(Ljava/lang/String;I)Lb/H/d$a;

    const-string p0, "batteryNotLowConstraint"

    .line 9
    invoke-virtual {p1, p0, p7}, Lb/H/d$a;->a(Ljava/lang/String;Z)Lb/H/d$a;

    const-string p0, "storageNotLowConstraint"

    .line 10
    invoke-virtual {p1, p0, p8}, Lb/H/d$a;->a(Ljava/lang/String;Z)Lb/H/d$a;

    const-string p0, "deviceIdleConstraint"

    .line 11
    invoke-virtual {p1, p0, p9}, Lb/H/d$a;->a(Ljava/lang/String;Z)Lb/H/d$a;

    const-string p0, "triggerContentMaxDelay"

    .line 12
    invoke-virtual {p1, p0, p10, p11}, Lb/H/d$a;->a(Ljava/lang/String;J)Lb/H/d$a;

    const-string p0, "Data.Builder()\n        .\u2026rContentMaxDelayInMinute)"

    invoke-static {p1, p0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string p0, "tags"

    .line 13
    invoke-virtual {p1, p0, p5}, Lb/H/d$a;->a(Ljava/lang/String;[Ljava/lang/String;)Lb/H/d$a;

    .line 14
    array-length p0, p5

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_0

    aget-object p3, p5, p2

    .line 15
    invoke-virtual {v0, p3}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object p0

    invoke-virtual {p1}, Lb/H/d$a;->a()Lb/H/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/H/n$a;->a(Lb/H/d;)Lb/H/n$a;

    move-result-object p1

    check-cast p1, Lb/H/g$a;

    invoke-virtual {p1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;JJ[Ljava/lang/String;Landroidx/work/NetworkType;ZZZJILjava/lang/Object;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 1
    sget-object v1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    move/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    move/from16 v11, p9

    :goto_4
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    const-wide/16 v0, -0x1

    move-wide v12, v0

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p10

    :goto_5
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    .line 2
    invoke-static/range {v2 .. v13}, Lc/c/a/p/n;->a(Ljava/lang/Class;JJ[Ljava/lang/String;Landroidx/work/NetworkType;ZZZJ)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/H/m;->a(Ljava/lang/String;)Lb/H/i;

    return-void
.end method
