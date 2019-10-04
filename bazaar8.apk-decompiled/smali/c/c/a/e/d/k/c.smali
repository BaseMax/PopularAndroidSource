.class public final Lc/c/a/e/d/k/c;
.super Ljava/lang/Object;
.source "InlineRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/k/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/k/a;)V
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/k/c;->a:Lc/c/a/e/d/k/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/k/c;->a:Lc/c/a/e/d/k/a;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/k/a;->a(Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/k/c;->a:Lc/c/a/e/d/k/a;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/k/a;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
