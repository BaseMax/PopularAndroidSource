.class public final Lcom/farsitel/bazaar/common/model/cinema/GenreItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final name:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final slug:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    iput p4, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 2
    sget-object p4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->GENRE:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/GenreItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/GenreItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getViewType()I

    move-result p4

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/farsitel/bazaar/common/model/cinema/GenreItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getViewType()I

    move-result v0

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/farsitel/bazaar/common/model/cinema/GenreItem;
    .locals 1

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getViewType()I

    move-result v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getViewType()I

    move-result p1

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

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getViewType()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenreItem(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", slug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/GenreItem;->getViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
