.class public final Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;
.super Lcom/farsitel/bazaar/common/model/common/DividerItem;
.source "CategoryItem.kt"


# instance fields
.field public final margin:I

.field public final viewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/common/DividerItem;-><init>(IZIIILh/f/b/f;)V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;->DIVIDER_ITEM:Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->viewType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;IILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->copy(I)Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

    return v0
.end method

.method public final copy(I)Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

    iget p1, p1, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

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

.method public final getMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryDividerItem(margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
