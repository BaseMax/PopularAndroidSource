.class public final Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;
.super Landroidx/work/Worker;
.source "StartScheduleUpdateWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$a;
    }
.end annotation


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lc/c/a/e/d/b/E;

.field public final h:Lc/c/a/p/I;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/b/E;Lc/c/a/p/I;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->g:Lc/c/a/e/d/b/E;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->h:Lc/c/a/p/I;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;)Lc/c/a/e/d/b/E;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->g:Lc/c/a/e/d/b/E;

    return-object p0
.end method


# virtual methods
.method public k()Landroidx/work/ListenableWorker$a;
    .locals 8

    .line 1
    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->q()Ljava/util/Calendar;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->r()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xb

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v3, v0, :cond_0

    const/4 v0, 0x6

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v4, "Calendar.getInstance()"

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->l()Landroid/content/ComponentName;

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;->h:Lc/c/a/p/I;

    const-wide/16 v2, 0x0

    .line 9
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lc/c/a/p/I;->a(J)V

    .line 11
    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l()Landroid/content/ComponentName;
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$updateApplication$1;-><init>(Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;Lh/c/b;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method
