.class public final Lcom/farsitel/bazaar/work/PendingCommentWorker;
.super Landroidx/work/Worker;
.source "PendingCommentWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/PendingCommentWorker$a;
    }
.end annotation


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Landroidx/work/WorkerParameters;

.field public final h:Lc/c/a/e/d/r/a/b;

.field public final i:Lc/c/a/e/d/r/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/r/a/b;Lc/c/a/e/d/r/b/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentActionRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postCommentRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/PendingCommentWorker;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/PendingCommentWorker;->g:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/PendingCommentWorker;->h:Lc/c/a/e/d/r/a/b;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/PendingCommentWorker;->i:Lc/c/a/e/d/r/b/b;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/work/PendingCommentWorker;->h:Lc/c/a/e/d/r/a/b;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/r/a/b;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/work/PendingCommentWorker;->i:Lc/c/a/e/d/r/b/b;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/r/b/b;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/work/PendingCommentWorker;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->b()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.retry()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final l()Z
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/work/PendingCommentWorker$sendPendingComment$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farsitel/bazaar/work/PendingCommentWorker$sendPendingComment$1;-><init>(Lcom/farsitel/bazaar/work/PendingCommentWorker;Lh/c/b;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
