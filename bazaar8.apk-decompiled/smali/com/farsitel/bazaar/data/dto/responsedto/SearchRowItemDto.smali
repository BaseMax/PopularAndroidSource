.class public final Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;
.super Ljava/lang/Object;
.source "AppListDto.kt"


# instance fields
.field public final app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;
    .annotation runtime Lc/e/d/a/c;
        value = "app"
    .end annotation
.end field

.field public final promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "page"
    .end annotation
.end field

.field public final serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
    .annotation runtime Lc/e/d/a/c;
        value = "serial"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "type"
    .end annotation
.end field

.field public final video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "video"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->copy(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    return-object v0
.end method

.method public final component3()Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    return-object v0
.end method

.method public final component4()Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    return-object v0
.end method

.method public final component5()Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;
    .locals 7

    new-instance v6, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

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

.method public final getApp()Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    return-object v0
.end method

.method public final getPromo()Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    return-object v0
.end method

.method public final getSerial()Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo()Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchRowItemDto(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowItemDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
