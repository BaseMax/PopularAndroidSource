.class public final Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;
.super Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;
.source "MovieItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;
.implements Lcom/farsitel/bazaar/common/model/PurchasableEntity;
.implements Lcom/farsitel/bazaar/common/model/common/LoadableEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/MovieItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EpisodeItem"
.end annotation


# instance fields
.field public final entityId:Ljava/lang/String;

.field public final episodeId:Ljava/lang/String;

.field public isBought:Z

.field public isLoading:Z

.field public showLoadingButton:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Z)V
    .locals 15

    move-object v13, p0

    move-object/from16 v14, p2

    const-string v0, "serialId"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeId"

    invoke-static {v14, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    move-object/from16 v12, p13

    invoke-static {v12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    .line 2
    invoke-direct/range {v0 .. v12}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;)V

    iput-object v14, v13, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->episodeId:Ljava/lang/String;

    move/from16 v0, p14

    iput-boolean v0, v13, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->isLoading:Z

    .line 3
    iget-object v0, v13, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->episodeId:Ljava/lang/String;

    iput-object v0, v13, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->entityId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;ZILh/f/b/f;)V
    .locals 16

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    move/from16 v15, p14

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 1
    invoke-direct/range {v1 .. v15}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getCanBePlayed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->isFree()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->isBought()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getCanBePlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lc/c/a/c/a;->play:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.play)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getPriceString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lh/f/b/n;->a:Lh/f/b/n;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lc/c/a/c/a;->price_placeholder:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.string.price_placeholder)"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getPrice()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 6
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getShowLoadingButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->showLoadingButton:Z

    return v0
.end method

.method public isBought()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->isBought:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->isLoading:Z

    return v0
.end method

.method public setBought(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->isBought:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->isLoading:Z

    return-void
.end method

.method public final setShowLoadingButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->showLoadingButton:Z

    return-void
.end method
