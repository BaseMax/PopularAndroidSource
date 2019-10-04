.class public final Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;
.super Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarRowItem;
.source "MyBazaarItem.kt"


# instance fields
.field public final title:I

.field public final viewType:I


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;->title:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;

    iget v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;->title:I

    iget p1, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;->title:I

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

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;->title:I

    invoke-static {v0}, La;->a(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyBazaarHeaderItem(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarHeaderItem;->title:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
