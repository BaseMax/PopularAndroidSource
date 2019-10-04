.class public final Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;
.super Ljava/lang/Object;
.source "SubscriptionPromotDetailsResponseDto.kt"


# instance fields
.field public final actionText:Ljava/lang/String;

.field public final directBuy:Z

.field public final duration:I

.field public final image:Ljava/lang/String;

.field public final isTrial:Z

.field public final price:I

.field public final sku:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final titleBackgroundColor:Ljava/lang/String;

.field public final titleTextColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "actionText"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleBackgroundColor"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleTextColor"

    invoke-static {p9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    iput p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    iput p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    goto :goto_9

    :cond_9
    move/from16 v1, p10

    :goto_9
    move-object p1, v2

    move p2, v3

    move p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->copy(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;
    .locals 12

    const-string v0, "actionText"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleBackgroundColor"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleTextColor"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move/from16 v6, p5

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;-><init>(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    iget v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    iget v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getActionText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectBuy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    return v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    return v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isTrial()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriptionDataDto(actionText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->actionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", directBuy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->directBuy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->titleTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/SubscriptionDataDto;->isTrial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
