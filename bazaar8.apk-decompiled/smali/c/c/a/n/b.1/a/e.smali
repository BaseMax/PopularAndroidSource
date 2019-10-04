.class public final Lc/c/a/n/b/a/e;
.super Lc/c/a/n/c/d/g;
.source "MoreArticleViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;)V
    .locals 11

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;->getArticles()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;->getArticles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 6
    new-instance v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;-><init>(IZIILh/f/b/f;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v2, v4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/b/a/e;->a(Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;)V

    return-void
.end method
