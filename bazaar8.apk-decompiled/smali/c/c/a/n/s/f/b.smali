.class public final Lc/c/a/n/s/f/b;
.super Lc/c/a/d/f/p;
.source "StartPaymentViewModel.kt"


# instance fields
.field public final d:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "accountRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/f/b;->e:Lc/c/a/e/d/a/a;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/f/b;->d:Lc/c/a/c/h/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/f/b;->d:Lc/c/a/c/h/g;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/f/b;->e:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lc/c/a/n/s/f/b;->d:Lc/c/a/c/h/g;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToCreditOptions;->a:Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToCreditOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lc/c/a/n/s/f/b;->d:Lc/c/a/c/h/g;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToBuyProduct;->a:Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToBuyProduct;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Lc/c/a/n/s/f/b;->d:Lc/c/a/c/h/g;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$NotLoggedIn;->a:Lcom/farsitel/bazaar/core/model/PaymentState$NotLoggedIn;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/f/b;->d:Lc/c/a/c/h/g;

    return-object v0
.end method
