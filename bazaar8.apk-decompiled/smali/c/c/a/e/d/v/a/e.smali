.class public final Lc/c/a/e/d/v/a/e;
.super Ljava/lang/Object;
.source "SubscriptionRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/v/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/v/a/a;)V
    .locals 1

    const-string v0, "subscriptionService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/v/a/e;->a:Lc/c/a/e/d/v/a/a;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/v/a/e;->a:Lc/c/a/e/d/v/a/a;

    new-instance v1, Lc/c/a/e/d/v/a/g;

    invoke-direct {v1}, Lc/c/a/e/d/v/a/g;-><init>()V

    invoke-interface {v0, v1}, Lc/c/a/e/d/v/a/a;->a(Lc/c/a/e/d/v/a/g;)Ll/b;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/feature/subscription/remote/SubscriptionRemoteDataSource$getAppSubscription$2;->a:Lcom/farsitel/bazaar/data/feature/subscription/remote/SubscriptionRemoteDataSource$getAppSubscription$2;

    invoke-static {v0, v1, p1}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/v/a/e;->a:Lc/c/a/e/d/v/a/a;

    .line 3
    new-instance v1, Lc/c/a/e/d/v/a/b;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/v/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, v1}, Lc/c/a/e/d/v/a/a;->a(Lc/c/a/e/d/v/a/b;)Ll/b;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/farsitel/bazaar/data/feature/subscription/remote/SubscriptionRemoteDataSource$cancelAppSubscription$2;->a:Lcom/farsitel/bazaar/data/feature/subscription/remote/SubscriptionRemoteDataSource$cancelAppSubscription$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
