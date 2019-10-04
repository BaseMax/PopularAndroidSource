.class public final Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;
.super Lcom/farsitel/bazaar/common/model/page/ListItem;
.source "PageType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Promo"
.end annotation


# instance fields
.field public final promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

.field public final viewType:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/page/PromoItem;)V
    .locals 1

    const-string v0, "promo"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/common/model/page/ListItem;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_PROMO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->viewType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;Lcom/farsitel/bazaar/common/model/page/PromoItem;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->copy(Lcom/farsitel/bazaar/common/model/page/PromoItem;)Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/farsitel/bazaar/common/model/page/PromoItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    return-object v0
.end method

.method public final copy(Lcom/farsitel/bazaar/common/model/page/PromoItem;)Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;
    .locals 1

    const-string v0, "promo"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;-><init>(Lcom/farsitel/bazaar/common/model/page/PromoItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

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

.method public final getPromo()Lcom/farsitel/bazaar/common/model/page/PromoItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PromoItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Promo(promo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Promo;->promo:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
