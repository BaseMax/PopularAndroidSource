.class public final Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReviewRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/r/h;",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $currentVersionCode:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviews$2;->$currentVersionCode:Ljava/lang/Long;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/r/h;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviews$2;->a(Lc/c/a/e/d/r/h;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/c/a/e/d/r/h;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/d/r/h;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;",
            ">;"
        }
    .end annotation

    const-string v0, "reviews"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/d/r/h;->a()Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lc/c/a/e/d/r/b;

    .line 6
    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/review/ReviewRemoteDataSource$getReviews$2;->$currentVersionCode:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lc/c/a/e/d/r/b;->a(Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
