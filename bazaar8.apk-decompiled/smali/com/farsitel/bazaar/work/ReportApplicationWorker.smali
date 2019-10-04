.class public final Lcom/farsitel/bazaar/work/ReportApplicationWorker;
.super Landroidx/work/Worker;
.source "ReportApplicationWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/ReportApplicationWorker$b;,
        Lcom/farsitel/bazaar/work/ReportApplicationWorker$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/farsitel/bazaar/work/ReportApplicationWorker$a;


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:Lc/c/a/e/d/p/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/work/ReportApplicationWorker$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/work/ReportApplicationWorker;->f:Lcom/farsitel/bazaar/work/ReportApplicationWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/p/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportAppRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker;->h:Lc/c/a/e/d/p/a;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/work/ReportApplicationWorker;)Lc/c/a/e/d/p/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/ReportApplicationWorker;->h:Lc/c/a/e/d/p/a;

    return-object p0
.end method


# virtual methods
.method public k()Landroidx/work/ListenableWorker$a;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "selectedReason"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/work/ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/c/b;Lcom/farsitel/bazaar/work/ReportApplicationWorker;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runBlocking {\n          \u2026ult.retry()\n            }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.failure()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
