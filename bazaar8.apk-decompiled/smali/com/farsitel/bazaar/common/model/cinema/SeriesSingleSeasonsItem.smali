.class public final Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

.field public final viewType:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->viewType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->copy(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    return-object v0
.end method

.method public final copy(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;-><init>(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getItem()Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeriesSingleSeasonsItem(item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSingleSeasonsItem;->item:Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
