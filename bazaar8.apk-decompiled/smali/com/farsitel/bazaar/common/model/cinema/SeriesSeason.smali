.class public final Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final index:I

.field public final title:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_LIST__ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->viewType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;ILjava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->copy(ILjava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeriesSeason(index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method