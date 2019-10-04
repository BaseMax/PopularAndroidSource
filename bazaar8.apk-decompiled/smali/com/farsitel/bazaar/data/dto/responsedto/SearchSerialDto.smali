.class public final Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
.super Ljava/lang/Object;
.source "AppListDto.kt"


# instance fields
.field public final coverUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "coverUrl"
    .end annotation
.end field

.field public final episodeId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "episodeId"
    .end annotation
.end field

.field public final episodeIdx:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "episodeIdx"
    .end annotation
.end field

.field public final isAd:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isAd"
    .end annotation
.end field

.field public final jsonReferrer:Lc/e/d/p;
    .annotation runtime Lc/e/d/a/c;
        value = "jsonReferrer"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final price:I
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final priceBeforeDiscount:I
    .annotation runtime Lc/e/d/a/c;
        value = "priceBeforeDiscount"
    .end annotation
.end field

.field public final rate:Ljava/lang/Float;
    .annotation runtime Lc/e/d/a/c;
        value = "rate"
    .end annotation
.end field

.field public final referrer:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "referrer"
    .end annotation
.end field

.field public final seasonIdx:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "seasonIdx"
    .end annotation
.end field

.field public final serialId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "serialId"
    .end annotation
.end field

.field public final shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "shortInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;ILcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Lc/e/d/p;Ljava/lang/Integer;Z)V
    .locals 1

    const-string v0, "serialId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUrl"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortInfo"

    invoke-static {p10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    iput p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    iput p9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    iput-object p10, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    iput-object p11, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    iput-object p12, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    iput-boolean p13, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;ILcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Lc/e/d/p;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    goto :goto_c

    :cond_c
    move/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;ILcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Lc/e/d/p;Ljava/lang/Integer;Z)Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    return-object v0
.end method

.method public final component11()Lc/e/d/p;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    return v0
.end method

.method public final component7()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;ILcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Lc/e/d/p;Ljava/lang/Integer;Z)Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;
    .locals 15

    const-string v0, "serialId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUrl"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortInfo"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    move-object v1, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;ILcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;Lc/e/d/p;Ljava/lang/Integer;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    iget v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    iget v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeIdx()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getJsonReferrer()Lc/e/d/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    return v0
.end method

.method public final getPriceBeforeDiscount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    return v0
.end method

.method public final getRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSeasonIdx()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSerialId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortInfo()Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :cond_a
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchSerialDto(serialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->serialId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seasonIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->seasonIdx:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->episodeIdx:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->rate:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceBeforeDiscount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->priceBeforeDiscount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shortInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jsonReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->jsonReferrer:Lc/e/d/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->referrer:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SearchSerialDto;->isAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
