.class public final Lcom/farsitel/bazaar/work/BookmarkWorker;
.super Landroidx/work/Worker;
.source "BookmarkWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/BookmarkWorker$b;,
        Lcom/farsitel/bazaar/work/BookmarkWorker$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/farsitel/bazaar/work/BookmarkWorker$a;


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:Landroidx/work/WorkerParameters;

.field public final i:Lc/c/a/e/d/d/b;

.field public final j:Lc/c/a/p/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/work/BookmarkWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/work/BookmarkWorker$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/work/BookmarkWorker;->f:Lcom/farsitel/bazaar/work/BookmarkWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/d/b;Lc/c/a/p/I;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmarkRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/BookmarkWorker;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/BookmarkWorker;->h:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/BookmarkWorker;->i:Lc/c/a/e/d/d/b;

    iput-object p4, p0, Lcom/farsitel/bazaar/work/BookmarkWorker;->j:Lc/c/a/p/I;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/work/BookmarkWorker;)Lc/c/a/e/d/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/BookmarkWorker;->i:Lc/c/a/e/d/d/b;

    return-object p0
.end method


# virtual methods
.method public k()Landroidx/work/ListenableWorker$a;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "bookmarked"

    invoke-virtual {v0, v2, v1}, Lb/H/d;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 5
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v2, "price"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lb/H/d;->a(Ljava/lang/String;I)I

    move-result v8

    .line 6
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Lb/H/d;

    move-result-object v0

    const-string v2, "priceStirng"

    invoke-virtual {v0, v2}, Lb/H/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "Required value was null."

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_1

    .line 7
    new-instance v0, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/farsitel/bazaar/work/BookmarkWorker$doWork$result$1;-><init>(Lcom/farsitel/bazaar/work/BookmarkWorker;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lh/c/b;)V

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/work/BookmarkWorker;->j:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->l()V

    .line 9
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
