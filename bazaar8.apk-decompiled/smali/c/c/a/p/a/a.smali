.class public final Lc/c/a/p/a/a;
.super Ljava/lang/Object;
.source "StartScheduleUpdateWorker_AssistedFactory.java"

# interfaces
.implements Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker$a;


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/b/E;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/b/E;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/a/a;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/p/a/a;->b:Lg/a/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;

    iget-object v1, p0, Lc/c/a/p/a/a;->a:Lg/a/a;

    .line 2
    invoke-interface {v1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/d/b/E;

    iget-object v2, p0, Lc/c/a/p/a/a;->b:Lg/a/a;

    .line 3
    invoke-interface {v2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/p/I;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/farsitel/bazaar/work/periodicdelay/StartScheduleUpdateWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/b/E;Lc/c/a/p/I;)V

    return-object v0
.end method
