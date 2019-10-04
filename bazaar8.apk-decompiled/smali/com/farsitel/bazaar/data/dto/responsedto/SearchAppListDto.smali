.class public final Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;
.super Ljava/lang/Object;
.source "AppListDto.kt"


# instance fields
.field public final app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;
    .annotation runtime Lc/e/d/a/c;
        value = "app"
    .end annotation
.end field

.field public final inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;
    .annotation runtime Lc/e/d/a/c;
        value = "inline"
    .end annotation
.end field

.field public final promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "page"
    .end annotation
.end field

.field public final rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;
    .annotation runtime Lc/e/d/a/c;
        value = "rowListApp"
    .end annotation
.end field

.field public final rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;
    .annotation runtime Lc/e/d/a/c;
        value = "rowListVideo"
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
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->copy(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    return-object v0
.end method

.method public final component3()Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    return-object v0
.end method

.method public final component4()Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    return-object v0
.end method

.method public final component5()Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    return-object v0
.end method

.method public final component6()Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    return-object v0
.end method

.method public final component7()Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    return-object v0
.end method

.method public final component8()Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;
    .locals 10

    new-instance v9, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

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
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    return-object v0
.end method

.method public final getInline()Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    return-object v0
.end method

.method public final getPromo()Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    return-object v0
.end method

.method public final getRowListApp()Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    return-object v0
.end method

.method public final getRowListVideo()Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    return-object v0
.end method

.method public final getSerial()Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo()Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAppListDto(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->app:Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->promo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchPromoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->inline:Lcom/farsitel/bazaar/data/dto/responsedto/SearchInlineDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->video:Lcom/farsitel/bazaar/data/dto/responsedto/SearchVideoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->serial:Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rowListVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListVideo:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rowListApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchAppListDto;->rowListApp:Lcom/farsitel/bazaar/data/dto/responsedto/SearchRowListDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
