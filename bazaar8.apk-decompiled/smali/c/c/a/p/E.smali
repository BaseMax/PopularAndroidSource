.class public final Lc/c/a/p/E;
.super Ljava/lang/Object;
.source "SyncPurchasesWorker_AssistedFactory.java"

# interfaces
.implements Lcom/farsitel/bazaar/work/SyncPurchasesWorker$a;


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/E;->a:Lg/a/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 2

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/work/SyncPurchasesWorker;

    iget-object v1, p0, Lc/c/a/p/E;->a:Lg/a/a;

    .line 2
    invoke-interface {v1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/d/m/d;

    invoke-direct {v0, p1, p2, v1}, Lcom/farsitel/bazaar/work/SyncPurchasesWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lc/c/a/e/d/m/d;)V

    return-object v0
.end method
