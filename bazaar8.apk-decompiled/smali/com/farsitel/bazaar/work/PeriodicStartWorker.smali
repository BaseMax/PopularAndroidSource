.class public final Lcom/farsitel/bazaar/work/PeriodicStartWorker;
.super Landroidx/work/Worker;
.source "PeriodicStartWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/PeriodicStartWorker$b;,
        Lcom/farsitel/bazaar/work/PeriodicStartWorker$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/farsitel/bazaar/work/PeriodicStartWorker$a;


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:Landroidx/work/WorkerParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/work/PeriodicStartWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/work/PeriodicStartWorker$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/work/PeriodicStartWorker;->f:Lcom/farsitel/bazaar/work/PeriodicStartWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/PeriodicStartWorker;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/PeriodicStartWorker;->h:Landroidx/work/WorkerParameters;

    return-void
.end method


# virtual methods
.method public final a(Lb/H/d;)Lb/H/b;
    .locals 8

    .line 1
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "networkConstraint"

    invoke-virtual {p1, v1, v0}, Lb/H/d;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "requireCharging"

    .line 2
    invoke-virtual {p1, v2, v1}, Lb/H/d;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "batteryNotLowConstraint"

    .line 3
    invoke-virtual {p1, v3, v1}, Lb/H/d;->a(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "storageNotLowConstraint"

    .line 4
    invoke-virtual {p1, v4, v1}, Lb/H/d;->a(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "deviceIdleConstraint"

    .line 5
    invoke-virtual {p1, v5, v1}, Lb/H/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "triggerContentMaxDelay"

    const-wide/16 v6, -0x1

    .line 6
    invoke-virtual {p1, v5, v6, v7}, Lb/H/d;->a(Ljava/lang/String;J)J

    move-result-wide v5

    .line 7
    new-instance p1, Lb/H/b$a;

    invoke-direct {p1}, Lb/H/b$a;-><init>()V

    .line 8
    invoke-static {}, Landroidx/work/NetworkType;->values()[Landroidx/work/NetworkType;

    move-result-object v7

    aget-object v0, v7, v0

    invoke-virtual {p1, v0}, Lb/H/b$a;->a(Landroidx/work/NetworkType;)Lb/H/b$a;

    .line 9
    invoke-virtual {p1, v2}, Lb/H/b$a;->b(Z)Lb/H/b$a;

    .line 10
    invoke-virtual {p1, v3}, Lb/H/b$a;->a(Z)Lb/H/b$a;

    .line 11
    invoke-virtual {p1, v4}, Lb/H/b$a;->d(Z)Lb/H/b$a;

    const-string v0, "Constraints.Builder()\n  \u2026NotLow(storageConstraint)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x17

    .line 12
    invoke-static {v0}, Lc/c/a/c/h/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1, v1}, Lb/H/b$a;->c(Z)Lb/H/b$a;

    :cond_0
    const/16 v0, 0x18

    .line 14
    invoke-static {v0}, Lc/c/a/c/h/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6, v0}, Lb/H/b$a;->a(JLjava/util/concurrent/TimeUnit;)Lb/H/b$a;

    .line 16
    :cond_1
    invoke-virtual {p1}, Lb/H/b$a;->a()Lb/H/b;

    move-result-object p1

    const-string v0, "constraintBuilder.build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public k()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "className"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v1

    const-string v2, "intervalInHour"

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lb/H/d;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v3

    const-string v4, "tags"

    invoke-virtual {v3, v4}, Lb/H/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lb/H/j$a;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-direct {v4, v0, v1, v2, v5}, Lb/H/j$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 8
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "inputData"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/work/PeriodicStartWorker;->a(Lb/H/d;)Lb/H/b;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/H/n$a;->a(Lb/H/b;)Lb/H/n$a;

    if-eqz v3, :cond_0

    .line 9
    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, v3, v1

    .line 10
    invoke-virtual {v4, v2}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lb/H/m;->a()Lb/H/m;

    move-result-object v0

    invoke-virtual {v4}, Lb/H/n$a;->a()Lb/H/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/H/m;->a(Lb/H/n;)Lb/H/i;

    .line 12
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<out androidx.work.ListenableWorker>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
