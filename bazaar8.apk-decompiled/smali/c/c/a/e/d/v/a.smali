.class public final Lc/c/a/e/d/v/a;
.super Ljava/lang/Object;
.source "SubscriptionRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/v/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/v/a/e;)V
    .locals 1

    const-string v0, "subscriptionRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/v/a;->a:Lc/c/a/e/d/v/a/e;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lc/c/a/e/d/v/a;->a:Lc/c/a/e/d/v/a/e;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/v/a/e;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lc/c/a/e/d/v/a;->a:Lc/c/a/e/d/v/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/v/a/e;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
