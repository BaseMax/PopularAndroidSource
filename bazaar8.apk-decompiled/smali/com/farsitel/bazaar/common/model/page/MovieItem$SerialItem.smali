.class public Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;
.super Lcom/farsitel/bazaar/common/model/page/MovieItem;
.source "MovieItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/MovieItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerialItem"
.end annotation


# instance fields
.field public final coverUrl:Ljava/lang/String;

.field public final episodeIdx:Ljava/lang/Integer;

.field public final isAd:Z

.field public final isFree:Z

.field public final name:Ljava/lang/String;

.field public final price:Ljava/lang/Integer;

.field public final priceBeforeDiscountString:Ljava/lang/String;

.field public final priceString:Ljava/lang/String;

.field public final rate:Ljava/lang/Float;

.field public final referrer:Ljava/lang/String;

.field public final seasonIdx:Ljava/lang/Integer;

.field public final serialId:Ljava/lang/String;

.field public final shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;)V
    .locals 1

    const-string v0, "serialId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->serialId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->episodeIdx:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->seasonIdx:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->coverUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->price:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->priceString:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->priceBeforeDiscountString:Ljava/lang/String;

    iput-object p9, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->rate:Ljava/lang/Float;

    iput-boolean p10, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->isAd:Z

    iput-object p11, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    iput-object p12, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->referrer:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->viewType:I

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->price:Ljava/lang/Integer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->isFree:Z

    return-void
.end method


# virtual methods
.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeIdx()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->episodeIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->price:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPriceBeforeDiscountString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->priceBeforeDiscountString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeasonIdx()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->seasonIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSerialId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->serialId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->viewType:I

    return v0
.end method

.method public final isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->isAd:Z

    return v0
.end method

.method public final isFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->isFree:Z

    return v0
.end method
