.class public final Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;
.super Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;
.source "MyBazaarItem.kt"


# instance fields
.field public final analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

.field public badgeNumber:Ljava/lang/String;

.field public final hasArrow:Z

.field public final icon:I

.field public final id:I

.field public final navigationResId:Ljava/lang/Integer;

.field public final title:I

.field public final viewType:I


# direct methods
.method public constructor <init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;)V
    .locals 1

    const-string v0, "analyticsEvent"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;-><init>(IIILcom/farsitel/bazaar/analytics/model/what/WhatType;)V

    iput p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->id:I

    iput p2, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->title:I

    iput p3, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->icon:I

    iput-boolean p4, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->hasArrow:Z

    iput-object p5, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->badgeNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->navigationResId:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    .line 3
    sget-object p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;ILh/f/b/f;)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;-><init>(IIIZLjava/lang/String;Ljava/lang/Integer;Lcom/farsitel/bazaar/analytics/model/what/WhatType;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->badgeNumber:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->id:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->badgeNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->hasArrow:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->icon:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->b()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->g()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->e()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->hasArrow:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->hasArrow:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->badgeNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->badgeNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->navigationResId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->navigationResId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    move-result-object p1

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->navigationResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->title:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->b()I

    move-result v0

    invoke-static {v0}, La;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->g()I

    move-result v1

    invoke-static {v1}, La;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->e()I

    move-result v1

    invoke-static {v1}, La;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->hasArrow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->badgeNumber:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->navigationResId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyBazaarItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasArrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->hasArrow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", badgeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->badgeNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", navigationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->navigationResId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
