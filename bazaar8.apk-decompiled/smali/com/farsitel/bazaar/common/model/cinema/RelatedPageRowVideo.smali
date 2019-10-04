.class public final Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;
.super Ljava/lang/Object;
.source "Cinema.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final coverUrl:Ljava/lang/String;

.field public final jref:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final price:I

.field public final priceBeforeDiscount:I

.field public final rate:Ljava/lang/Integer;

.field public final referrer:Ljava/lang/String;

.field public final shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

.field public final type:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    iput p4, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    iput p5, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    iput-object p9, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    iput-object p10, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    return v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;
    .locals 12

    new-instance v11, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getJref()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    return v0
.end method

.method public final getPriceBeforeDiscount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    return v0
.end method

.method public final getRate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/ShortInfo;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelatedPageRowVideo(coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->jref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priceBeforeDiscount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->priceBeforeDiscount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->rate:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shortInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/RelatedPageRowVideo;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
