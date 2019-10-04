.class public final Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final description:Ljava/lang/String;

.field public maxLines:I

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILh/f/b/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x3

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;Ljava/lang/String;IILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->copy(Ljava/lang/String;I)Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    iget p1, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setMaxLines(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CinemaDescriptionItem(description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaDescriptionItem;->maxLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
