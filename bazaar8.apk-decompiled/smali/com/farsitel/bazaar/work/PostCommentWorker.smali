.class public final Lcom/farsitel/bazaar/work/PostCommentWorker;
.super Landroidx/work/Worker;
.source "PostCommentWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/PostCommentWorker$b;,
        Lcom/farsitel/bazaar/work/PostCommentWorker$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/farsitel/bazaar/work/PostCommentWorker$a;


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:Landroidx/work/WorkerParameters;

.field public final i:Lc/c/a/e/d/r/b/b;

.field public final j:Lc/c/a/p/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/work/PostCommentWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/work/PostCommentWorker$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/work/PostCommentWorker;->f:Lcom/farsitel/bazaar/work/PostCommentWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/r/b/b;Lc/c/a/p/I;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postCommentRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/PostCommentWorker;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/PostCommentWorker;->h:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/PostCommentWorker;->i:Lc/c/a/e/d/r/b/b;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/PostCommentWorker;->j:Lc/c/a/p/I;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/work/PostCommentWorker;)Lc/c/a/e/d/r/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/PostCommentWorker;->i:Lc/c/a/e/d/r/b/b;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)Z
    .locals 10

    const-string v0, "entityId"

    move-object v3, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/work/PostCommentWorker$sendComment$1;-><init>(Lcom/farsitel/bazaar/work/PostCommentWorker;Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Landroidx/work/ListenableWorker$a;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "entityId"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "rateValue"

    invoke-virtual {v0, v2, v1}, Lb/H/d;->a(Ljava/lang/String;I)I

    move-result v4

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v2, "comment"

    invoke-virtual {v0, v2}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v2, "appVersion"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v2, v6, v7}, Lb/H/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 5
    invoke-static {}, Lcom/farsitel/bazaar/data/entity/EntityType;->values()[Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v2

    const-string v8, "entityType"

    invoke-virtual {v2, v8, v1}, Lb/H/d;->a(Ljava/lang/String;I)I

    move-result v1

    aget-object v8, v0, v1

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 6
    invoke-virtual/range {v2 .. v8}, Lcom/farsitel/bazaar/work/PostCommentWorker;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/work/PostCommentWorker;->j:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->h()V

    .line 8
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "use toInputData function to schedule this worker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
