.class public final Lc/c/a/p/I;
.super Ljava/lang/Object;
.source "WorkManagerScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/p/I$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/p/I$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/p/I$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/p/I$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/p/I;->a:Lc/c/a/p/I$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/p/I;IZLcom/farsitel/bazaar/data/entity/EntityType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 18
    sget-object p3, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/p/I;->a(IZLcom/farsitel/bazaar/data/entity/EntityType;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    .line 36
    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    sget-object v1, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/app/BazaarApp$a;->a()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->B()Z

    move-result v1

    .line 38
    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->q()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 42
    div-long/2addr v0, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final a(Lb/H/b;)Lb/H/g;
    .locals 2

    .line 7
    new-instance v0, Lb/H/g$a;

    const-class v1, Lcom/farsitel/bazaar/work/UpgradableAppsWorker;

    invoke-direct {v0, v1}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    move-result-object p1

    check-cast p1, Lb/H/g$a;

    invoke-virtual {p1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object p1

    const-string v0, "OneTimeWorkRequest.Build\u2026ints(constraints).build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lb/H/g;

    return-object p1
.end method

.method public final a(IZLcom/farsitel/bazaar/data/entity/EntityType;)V
    .locals 3

    const-string v0, "entityType"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 20
    new-instance v1, Lb/H/g$a;

    const-class v2, Lcom/farsitel/bazaar/work/ReportCommentWorker;

    invoke-direct {v1, v2}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 21
    sget-object v2, Lcom/farsitel/bazaar/work/ReportCommentWorker;->f:Lcom/farsitel/bazaar/work/ReportCommentWorker$a;

    invoke-virtual {v2, p1, p2, p3}, Lcom/farsitel/bazaar/work/ReportCommentWorker$a;->a(IZLcom/farsitel/bazaar/data/entity/EntityType;)Lb/H/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lb/H/n$a;->a(Lb/H/d;)Lb/H/n$a;

    move-result-object p1

    check-cast p1, Lb/H/g$a;

    .line 22
    invoke-virtual {p1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    return-void
.end method

.method public final a(IZZ)V
    .locals 3

    .line 13
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 14
    new-instance v1, Lb/H/g$a;

    const-class v2, Lcom/farsitel/bazaar/work/CommentActionWorker;

    invoke-direct {v1, v2}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 15
    sget-object v2, Lcom/farsitel/bazaar/work/CommentActionWorker;->f:Lcom/farsitel/bazaar/work/CommentActionWorker$a;

    invoke-virtual {v2, p1, p2, p3}, Lcom/farsitel/bazaar/work/CommentActionWorker$a;->a(IZZ)Lb/H/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lb/H/n$a;->a(Lb/H/d;)Lb/H/n$a;

    move-result-object p1

    check-cast p1, Lb/H/g$a;

    .line 16
    invoke-virtual {p1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 30
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 31
    new-instance v1, Lb/H/g$a;

    const-class v2, Lcom/farsitel/bazaar/work/StopScheduleUpdateWorker;

    invoke-direct {v1, v2}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-virtual {v1, p1, p2, v2}, Lb/H/g$a;->a(JLjava/util/concurrent/TimeUnit;)Lb/H/g$a;

    .line 34
    invoke-virtual {v1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)V
    .locals 9

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 9
    new-instance v8, Lb/H/g$a;

    const-class v1, Lcom/farsitel/bazaar/work/PostCommentWorker;

    invoke-direct {v8, v1}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 10
    sget-object v1, Lcom/farsitel/bazaar/work/PostCommentWorker;->f:Lcom/farsitel/bazaar/work/PostCommentWorker$a;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/farsitel/bazaar/work/PostCommentWorker$a;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)Lb/H/d;

    move-result-object v1

    invoke-virtual {v8, v1}, Lb/H/n$a;->a(Lb/H/d;)Lb/H/n$a;

    move-result-object v1

    check-cast v1, Lb/H/g$a;

    .line 11
    invoke-virtual {v1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedReason"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 44
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 45
    new-instance v2, Lb/H/g$a;

    const-class v3, Lcom/farsitel/bazaar/work/ReportApplicationWorker;

    invoke-direct {v2, v3}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 46
    sget-object v3, Lcom/farsitel/bazaar/work/ReportApplicationWorker;->f:Lcom/farsitel/bazaar/work/ReportApplicationWorker$a;

    invoke-virtual {v3, p1, p2, p3}, Lcom/farsitel/bazaar/work/ReportApplicationWorker$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/H/d;

    move-result-object p1

    invoke-virtual {v2, p1}, Lb/H/n$a;->a(Lb/H/d;)Lb/H/n$a;

    move-result-object p1

    check-cast p1, Lb/H/g$a;

    invoke-virtual {p1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object p1

    check-cast p1, Lb/H/g;

    const-string p2, "reportApp"

    .line 47
    invoke-virtual {v0, p2, v1, p1}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Lb/H/g;)Lb/H/i;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 9

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appIconURL"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 25
    new-instance v8, Lb/H/g$a;

    const-class v1, Lcom/farsitel/bazaar/work/BookmarkWorker;

    invoke-direct {v8, v1}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 26
    sget-object v1, Lcom/farsitel/bazaar/work/BookmarkWorker;->f:Lcom/farsitel/bazaar/work/BookmarkWorker$a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move-object v6, p6

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/farsitel/bazaar/work/BookmarkWorker$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lb/H/d;

    move-result-object v1

    .line 27
    invoke-virtual {v8, v1}, Lb/H/n$a;->a(Lb/H/d;)Lb/H/n$a;

    move-result-object v1

    check-cast v1, Lb/H/g$a;

    .line 28
    invoke-virtual {v1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 3
    :goto_0
    new-instance v0, Lb/H/b$a;

    invoke-direct {v0}, Lb/H/b$a;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lb/H/b$a;->a(Landroidx/work/NetworkType;)Lb/H/b$a;

    .line 5
    invoke-virtual {v0}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object p1

    const-string v0, "Constraints.Builder()\n  \u2026ype)\n            .build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    invoke-virtual {p0, p1}, Lc/c/a/p/I;->a(Lb/H/b;)Lb/H/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    return-void
.end method

.method public final b(Lb/H/b;)Lb/H/j;
    .locals 5

    .line 1
    new-instance v0, Lb/H/j$a;

    const-class v1, Lcom/farsitel/bazaar/work/UpgradableAppsWorker;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc

    invoke-direct {v0, v1, v3, v4, v2}, Lb/H/j$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-virtual {v0, p1}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    move-result-object p1

    check-cast p1, Lb/H/j$a;

    const-string v0, "upgradable_apps"

    .line 3
    invoke-virtual {p1, v0}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    move-result-object p1

    check-cast p1, Lb/H/j$a;

    .line 4
    invoke-virtual {p1}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object p1

    const-string v0, "PeriodicWorkRequest\n    \u2026TAG)\n            .build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lb/H/j;

    return-object p1
.end method

.method public final b()V
    .locals 1

    const-string v0, "oneTimeScheduler"

    .line 5
    invoke-static {v0}, Lc/c/a/p/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/I;->m()V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 3
    invoke-virtual {p0}, Lc/c/a/p/I;->e()Lb/H/j;

    move-result-object v2

    const-string v3, "location"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/i;

    .line 5
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 6
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 7
    invoke-virtual {p0}, Lc/c/a/p/I;->g()Lb/H/j;

    move-result-object v2

    const-string v3, "send_action_logs"

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/i;

    .line 9
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 10
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 11
    invoke-virtual {p0}, Lc/c/a/p/I;->f()Lb/H/j;

    move-result-object v2

    const-string v3, "registerDevice"

    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/i;

    return-void
.end method

.method public final e()Lb/H/j;
    .locals 5

    .line 1
    new-instance v0, Lb/H/j$a;

    const-class v1, Lcom/farsitel/bazaar/work/LocationUpdatesWorker;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x6

    invoke-direct {v0, v1, v3, v4, v2}, Lb/H/j$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    const-string v1, "location"

    .line 2
    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/j$a;

    .line 3
    invoke-virtual {v0}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v0

    const-string v1, "PeriodicWorkRequest\n    \u2026KER_TAG)\n        .build()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lb/H/j;

    return-object v0
.end method

.method public final f()Lb/H/j;
    .locals 5

    .line 1
    new-instance v0, Lb/H/j$a;

    const-class v1, Lcom/farsitel/bazaar/work/RegisterDeviceWorker;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x6

    invoke-direct {v0, v1, v3, v4, v2}, Lb/H/j$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    new-instance v1, Lb/H/b$a;

    invoke-direct {v1}, Lb/H/b$a;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Lb/H/b$a;->a(Landroidx/work/NetworkType;)Lb/H/b$a;

    invoke-virtual {v1}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/j$a;

    const-string v1, "registerDevice"

    .line 3
    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/j$a;

    .line 4
    invoke-virtual {v0}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v0

    const-string v1, "PeriodicWorkRequest\n    \u2026_DEVICE)\n        .build()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lb/H/j;

    return-object v0
.end method

.method public final g()Lb/H/j;
    .locals 5

    .line 1
    new-instance v0, Lb/H/j$a;

    const-class v1, Lcom/farsitel/bazaar/work/SendActionLogsWorker;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x6

    invoke-direct {v0, v1, v3, v4, v2}, Lb/H/j$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    new-instance v1, Lb/H/b$a;

    invoke-direct {v1}, Lb/H/b$a;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Lb/H/b$a;->a(Landroidx/work/NetworkType;)Lb/H/b$a;

    invoke-virtual {v1}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/j$a;

    const-string v1, "send_action_logs"

    .line 3
    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/j$a;

    .line 4
    invoke-virtual {v0}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v0

    const-string v1, "PeriodicWorkRequest\n    \u2026KER_TAG)\n        .build()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lb/H/j;

    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 1
    new-instance v0, Lb/H/g$a;

    const-class v1, Lcom/farsitel/bazaar/work/PendingCommentWorker;

    invoke-direct {v0, v1}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 2
    new-instance v1, Lb/H/b$a;

    invoke-direct {v1}, Lb/H/b$a;-><init>()V

    .line 3
    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Lb/H/b$a;->a(Landroidx/work/NetworkType;)Lb/H/b$a;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lb/H/b$a;->a(Z)Lb/H/b$a;

    .line 5
    invoke-virtual {v1}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/g$a;

    const-string v1, "comment"

    .line 7
    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/g$a;

    .line 8
    invoke-virtual {v0}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v0

    const-string v2, "OneTimeWorkRequest.Build\u2026TAG)\n            .build()"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast v0, Lb/H/g;

    .line 10
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v2

    sget-object v3, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v2, v1, v3, v0}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Lb/H/g;)Lb/H/i;

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    new-instance v0, Lb/H/g$a;

    const-class v1, Lcom/farsitel/bazaar/work/SyncPurchasesWorker;

    invoke-direct {v0, v1}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 2
    new-instance v1, Lb/H/b$a;

    invoke-direct {v1}, Lb/H/b$a;-><init>()V

    .line 3
    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Lb/H/b$a;->a(Landroidx/work/NetworkType;)Lb/H/b$a;

    .line 4
    invoke-virtual {v1}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/g$a;

    const-string v1, "sync_purchases"

    .line 6
    invoke-virtual {v0, v1}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    move-result-object v0

    check-cast v0, Lb/H/g$a;

    .line 7
    invoke-virtual {v0}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v0

    const-string v2, "OneTimeWorkRequest.Build\u2026TAG)\n            .build()"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    check-cast v0, Lb/H/g;

    .line 9
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v2

    .line 10
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v2, v1, v3, v0}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Lb/H/g;)Lb/H/i;

    return-void
.end method

.method public final j()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/I;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    .line 2
    const-class v0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;

    const-wide/16 v3, 0x18

    const/4 v5, 0x1

    .line 3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "oneTimeScheduler"

    aput-object v7, v5, v6

    .line 4
    sget-object v6, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0x180

    const/4 v13, 0x0

    .line 5
    invoke-static/range {v0 .. v13}, Lc/c/a/p/n;->a(Ljava/lang/Class;JJ[Ljava/lang/String;Landroidx/work/NetworkType;ZZZJILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 6

    .line 1
    new-instance v0, Lb/H/b$a;

    invoke-direct {v0}, Lb/H/b$a;-><init>()V

    invoke-virtual {v0}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object v0

    const-string v1, "Constraints.Builder().build()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v1

    const-string v2, "upgradable_apps"

    invoke-virtual {v1, v2}, Lb/H/m;->b(Ljava/lang/String;)Lc/e/b/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v3, "workerInfo"

    .line 3
    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/WorkInfo;

    const-string v5, "it"

    .line 5
    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/work/WorkInfo;->a()Landroidx/work/WorkInfo$State;

    move-result-object v4

    const-string v5, "it.state"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->f()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 6
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v1

    .line 7
    sget-object v4, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 8
    invoke-virtual {p0, v0}, Lc/c/a/p/I;->b(Lb/H/b;)Lb/H/j;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v2, v4, v0}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lb/H/j;)Lb/H/i;

    :cond_2
    return v3
.end method

.method public final l()V
    .locals 7

    .line 1
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 3
    new-instance v2, Lb/H/g$a;

    const-class v3, Lcom/farsitel/bazaar/work/PendingBookmarkWorker;

    invoke-direct {v2, v3}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    .line 4
    new-instance v3, Lb/H/b$a;

    invoke-direct {v3}, Lb/H/b$a;-><init>()V

    .line 5
    sget-object v4, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v3, v4}, Lb/H/b$a;->a(Landroidx/work/NetworkType;)Lb/H/b$a;

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v4}, Lb/H/b$a;->a(Z)Lb/H/b$a;

    .line 7
    invoke-virtual {v3}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    move-result-object v2

    check-cast v2, Lb/H/g$a;

    .line 9
    sget-object v3, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v2, v3, v5, v6, v4}, Lb/H/n$a;->a(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Lb/H/n$a;

    move-result-object v2

    check-cast v2, Lb/H/g$a;

    invoke-virtual {v2}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v2

    check-cast v2, Lb/H/g;

    const-string v3, "bookmark"

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Lb/H/g;)Lb/H/i;

    return-void
.end method

.method public final m()V
    .locals 1

    const-string v0, "reportApp"

    .line 1
    invoke-static {v0}, Lc/c/a/p/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 3
    new-instance v2, Lb/H/g$a;

    const-class v3, Lcom/farsitel/bazaar/work/SyncBookmarkWorker;

    invoke-direct {v2, v3}, Lb/H/g$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v2

    check-cast v2, Lb/H/g;

    const-string v3, "bookmark"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lb/H/m;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Lb/H/g;)Lb/H/i;

    return-void
.end method
