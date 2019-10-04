.class public final Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;
.super Lcom/farsitel/bazaar/common/model/page/MovieItem;
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
    name = "VideoItem"
.end annotation


# instance fields
.field public final coverUrl:Ljava/lang/String;

.field public final entityId:Ljava/lang/String;

.field public final info:Ljava/lang/String;

.field public final isAd:Z

.field public isBought:Z

.field public final isFree:Z

.field public final isLive:Z

.field public isLoading:Z

.field public final moreInfo:Ljava/lang/String;

.field public final price:I

.field public final priceString:Ljava/lang/String;

.field public final rate:Ljava/lang/Float;

.field public final referrer:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;

.field public final videoName:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p11, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->videoId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->videoName:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->info:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->moreInfo:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->rate:Ljava/lang/Float;

    iput p6, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->price:I

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->priceString:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isAd:Z

    iput-boolean p9, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isLive:Z

    iput-object p10, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->coverUrl:Ljava/lang/String;

    iput-object p11, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->referrer:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isLoading:Z

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->videoId:Ljava/lang/String;

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->entityId:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->viewType:I

    .line 5
    iget p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->price:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isFree:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZILh/f/b/f;)V
    .locals 14

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    move/from16 v13, p12

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 1
    invoke-direct/range {v1 .. v13}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getCanBePlayed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isFree:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isBought()Z

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

.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getMoreInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->moreInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->price:I

    return v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getCanBePlayed()Z

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
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->priceString:Ljava/lang/String;

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

    iget v3, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->price:I

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
.end method

.method public final getRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->viewType:I

    return v0
.end method

.method public final isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isAd:Z

    return v0
.end method

.method public isBought()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isBought:Z

    return v0
.end method

.method public final isFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isFree:Z

    return v0
.end method

.method public final isLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isLive:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isLoading:Z

    return v0
.end method

.method public setBought(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isBought:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isLoading:Z

    return-void
.end method
