.class public final Lcom/farsitel/bazaar/work/ReportCommentWorker;
.super Landroidx/work/Worker;
.source "ReportCommentWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/ReportCommentWorker$b;,
        Lcom/farsitel/bazaar/work/ReportCommentWorker$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/farsitel/bazaar/work/ReportCommentWorker$a;


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:Landroidx/work/WorkerParameters;

.field public final i:Lc/c/a/e/d/r/a/d;

.field public final j:Lc/c/a/p/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/work/ReportCommentWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/work/ReportCommentWorker$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/work/ReportCommentWorker;->f:Lcom/farsitel/bazaar/work/ReportCommentWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/r/a/d;Lc/c/a/p/I;)V
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

    iput-object p1, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker;->h:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker;->i:Lc/c/a/e/d/r/a/d;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker;->j:Lc/c/a/p/I;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/work/ReportCommentWorker;)Lc/c/a/e/d/r/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker;->i:Lc/c/a/e/d/r/a/d;

    return-object p0
.end method


# virtual methods
.method public final a(IZLcom/farsitel/bazaar/data/entity/EntityType;)Z
    .locals 7

    const-string v0, "entityType"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/work/ReportCommentWorker$reportComment$1;-><init>(Lcom/farsitel/bazaar/work/ReportCommentWorker;IZLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, v0, p2, p1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public k()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "inputData"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/H/d;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reviewId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lb/H/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isReply"

    invoke-virtual {v1, v3, v2}, Lb/H/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    invoke-static {}, Lcom/farsitel/bazaar/data/entity/EntityType;->values()[Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v4

    const-string v5, "entityType"

    invoke-virtual {v4, v5, v2}, Lb/H/d;->a(Ljava/lang/String;I)I

    move-result v2

    aget-object v2, v3, v2

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcom/farsitel/bazaar/work/ReportCommentWorker;->a(IZLcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/work/ReportCommentWorker;->j:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->h()V

    .line 7
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "use toInputData method to create this worker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
