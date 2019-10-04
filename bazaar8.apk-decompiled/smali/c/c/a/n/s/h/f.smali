.class public final Lc/c/a/n/s/h/f;
.super Lc/c/a/d/f/p;
.source "PaymentWebViewModel.kt"


# instance fields
.field public final d:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/PaymentWebState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/c/h/g;

    invoke-direct {v0}, Lc/c/a/c/h/g;-><init>()V

    iput-object v0, p0, Lc/c/a/n/s/h/f;->d:Lc/c/a/c/h/g;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/h/f;->d:Lc/c/a/c/h/g;

    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentWebState$WebProcessFinished;->a:Lcom/farsitel/bazaar/core/model/PaymentWebState$WebProcessFinished;

    invoke-virtual {v0, v1}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/PaymentWebState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/h/f;->d:Lc/c/a/c/h/g;

    return-object v0
.end method
