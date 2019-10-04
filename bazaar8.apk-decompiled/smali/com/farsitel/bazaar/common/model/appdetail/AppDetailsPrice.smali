.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# instance fields
.field public final price:Ljava/lang/Integer;

.field public final priceBeforeDiscount:Ljava/lang/Integer;

.field public final priceBeforeDiscountString:Ljava/lang/String;

.field public final priceString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->price:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceBeforeDiscount:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceString:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceBeforeDiscountString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPrice()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->price:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPriceBeforeDiscount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceBeforeDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPriceBeforeDiscountString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceBeforeDiscountString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final toAppDetailPriceItem()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->price:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceBeforeDiscount:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceString:Ljava/lang/String;

    iget-object v4, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->priceBeforeDiscountString:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
