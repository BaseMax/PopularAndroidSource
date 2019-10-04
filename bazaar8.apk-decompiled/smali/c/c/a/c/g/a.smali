.class public final Lc/c/a/c/g/a;
.super Ljava/lang/Object;
.source "CinemaData.kt"


# direct methods
.method public static final a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)I"
        }
    .end annotation

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 20
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 21
    invoke-interface {v0}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-interface {v0}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v0

    sget-object v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    goto :goto_2

    :cond_3
    const/4 p0, -0x1

    :goto_2
    add-int/2addr p0, v1

    return p0
.end method

.method public static final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "list"

    invoke-static {v0, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reviews"

    invoke-static {v1, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p0 .. p0}, Lc/c/a/c/g/a;->a(Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3
    new-instance v3, Lcom/farsitel/bazaar/common/model/cinema/VideoAddReviewItem;

    invoke-direct {v3}, Lcom/farsitel/bazaar/common/model/cinema/VideoAddReviewItem;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_5

    add-int/2addr v2, v5

    .line 5
    new-instance v3, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewTitleItem;

    invoke-direct {v3, v4, v5, v6}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewTitleItem;-><init>(IILh/f/b/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x4

    if-lt v3, v7, :cond_2

    const/4 v3, 0x3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    add-int/2addr v2, v5

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v3, v9}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 9
    move-object v11, v10

    check-cast v11, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 10
    new-instance v10, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewItem;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x37ff

    const/16 v27, 0x0

    .line 11
    invoke-static/range {v11 .. v27}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->copy$default(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object v11

    .line 12
    invoke-direct {v10, v11}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewItem;-><init>(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    .line 13
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_3
    invoke-interface {v0, v2, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v7, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v2, v1

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;

    invoke-direct {v1, v4, v5, v6}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;-><init>(IILh/f/b/f;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v10, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;

    const/4 v6, 0x0

    const/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;-><init>(IZIILh/f/b/f;)V

    invoke-interface {v0, v2, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v8, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;-><init>(IZIILh/f/b/f;)V

    invoke-interface {v0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    :goto_4
    return-object v0
.end method
