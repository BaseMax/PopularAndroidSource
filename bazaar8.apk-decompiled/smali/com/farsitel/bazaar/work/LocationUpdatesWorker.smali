.class public final Lcom/farsitel/bazaar/work/LocationUpdatesWorker;
.super Landroidx/work/Worker;
.source "LocationUpdatesWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/work/LocationUpdatesWorker$a;
    }
.end annotation


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Landroidx/work/WorkerParameters;

.field public final h:Lc/c/a/e/i/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/i/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/work/LocationUpdatesWorker;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/farsitel/bazaar/work/LocationUpdatesWorker;->g:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/farsitel/bazaar/work/LocationUpdatesWorker;->h:Lc/c/a/e/i/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/work/LocationUpdatesWorker;)Lc/c/a/e/i/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/work/LocationUpdatesWorker;->h:Lc/c/a/e/i/c;

    return-object p0
.end method


# virtual methods
.method public k()Landroidx/work/ListenableWorker$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/work/LocationUpdatesWorker;->l()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method

.method public final l()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/work/LocationUpdatesWorker$findUserLocation$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farsitel/bazaar/work/LocationUpdatesWorker$findUserLocation$1;-><init>(Lcom/farsitel/bazaar/work/LocationUpdatesWorker;Lh/c/b;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runBlocking {\n        Lo\u2026failure()\n        }\n    }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0
.end method