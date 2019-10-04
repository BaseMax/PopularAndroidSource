.class public Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
.super Lcom/ebay/shared/ExperienceIntentBuilder;
.source "CheckoutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/shared/ExperienceIntentBuilder<",
        "Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private autoPay:Z

.field private bidSource:Ljava/lang/String;

.field private cartId:Ljava/lang/String;

.field private checkoutType:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

.field private isBidding:Z

.field private item:Lcom/ebay/mobile/Item;

.field private keyParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

.field private moreToCheckout:Z

.field private quantity:I

.field private referrer:Ljava/lang/String;

.field private requestCode:I

.field private sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

.field private viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/ebay/shared/ExperienceIntentBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->isBidding:Z

    .line 60
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->setCheckoutTypeFromDcs()V

    return-void
.end method

.method private static createCheckoutIntent(Landroid/content/Intent;Lcom/ebay/mobile/Item;ZLcom/ebay/mobile/viewitem/ViewItemViewData;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 2
    .param p8    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    const-string v0, "item"

    .line 291
    new-instance v1, Lcom/ebay/mobile/CheckoutItem;

    iget-object p3, p3, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {p1, p3}, Lcom/ebay/mobile/Item;->getVariationId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3, p2}, Lcom/ebay/mobile/CheckoutItem;-><init>(Lcom/ebay/mobile/Item;Ljava/lang/String;Z)V

    .line 291
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.ebay.mobile.tracking.BidSource"

    .line 293
    invoke-virtual {p0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.ebay.mobile.tracking.Referrer"

    .line 294
    invoke-virtual {p0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "requestCode"

    .line 295
    invoke-virtual {p0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.ebay.mobile.analytics.sid"

    .line 296
    invoke-virtual {p0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    new-instance p0, Lcom/ebay/common/model/ItemTransaction;

    invoke-direct {p0}, Lcom/ebay/common/model/ItemTransaction;-><init>()V

    .line 300
    iget-object p2, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz p2, :cond_0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 304
    iget-object p0, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    .line 305
    iget-object p2, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object p2, p2, Lcom/ebay/common/model/ItemTransaction;->orderId:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide p4, p1, Lcom/ebay/mobile/Item;->id:J

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ebay/mobile/Item;->transactionId:Ljava/lang/Long;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/ebay/common/model/ItemTransaction;->orderId:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 314
    iget-object p1, p1, Lcom/ebay/mobile/Item;->transactionId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/ItemTransaction;->transactionId:Ljava/lang/String;

    .line 315
    :cond_1
    iput p4, p0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    :cond_2
    :goto_0
    return-void
.end method

.method private static createShopcartCheckoutIntent(Landroid/content/Intent;Ljava/lang/String;ZI)V
    .locals 3
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    const-string/jumbo v0, "shopping_cart_id"

    .line 335
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.ebay.mobile.tracking.BidSource"

    const-string/jumbo v0, "shopping_cart"

    .line 336
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "checkoutable_items_in_cart"

    .line 337
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "requestCode"

    .line 339
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private createXoneorIntent(Landroid/content/Intent;)V
    .locals 11

    const-string/jumbo v0, "xoParams"

    .line 258
    iget-object v1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->keyParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    iget-object v0, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->item:Lcom/ebay/mobile/Item;

    if-eqz v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->item:Lcom/ebay/mobile/Item;

    iget-boolean v3, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->isBidding:Z

    iget-object v4, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    iget v5, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->quantity:I

    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->autoPay:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->bidSource:Ljava/lang/String;

    iget-object v8, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->referrer:Ljava/lang/String;

    iget v9, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->requestCode:I

    iget-object v10, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->createCheckoutIntent(Landroid/content/Intent;Lcom/ebay/mobile/Item;ZLcom/ebay/mobile/viewitem/ViewItemViewData;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->cartId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->cartId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->moreToCheckout:Z

    iget v2, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->requestCode:I

    invoke-static {p1, v0, v1, v2}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->createShopcartCheckoutIntent(Landroid/content/Intent;Ljava/lang/String;ZI)V

    const-string v0, "com.ebay.mobile.tracking.BidSource"

    .line 265
    iget-object v1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->bidSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method private setCheckoutTypeFromDcs()V
    .locals 2

    .line 244
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->xoExperienceServiceV2:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->XONEOR_V2:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->checkoutType:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    goto :goto_0

    .line 248
    :cond_0
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->XONEOR_V1:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->checkoutType:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    :goto_0
    return-void
.end method


# virtual methods
.method protected apply(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    invoke-super {p0, p1}, Lcom/ebay/shared/ExperienceIntentBuilder;->apply(Landroid/content/Intent;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->createXoneorIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected getComponentClass()Ljava/lang/Class;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$1;->$SwitchMap$com$ebay$mobile$checkout$CheckoutIntentBuilder$CheckoutType:[I

    iget-object v1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->checkoutType:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 80
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    return-object v0

    .line 77
    :cond_0
    const-class v0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;

    return-object v0
.end method

.method protected self()Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method protected bridge synthetic self()Lcom/ebay/shared/ExperienceIntentBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->self()Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBidSource(Ljava/lang/String;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->bidSource:Ljava/lang/String;

    return-object p0
.end method

.method public setCartId(Ljava/lang/String;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->cartId:Ljava/lang/String;

    return-object p0
.end method

.method public setIsAutoPay(Z)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->autoPay:Z

    return-object p0
.end method

.method public setIsBidding(Z)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->isBidding:Z

    return-object p0
.end method

.method public setItem(Lcom/ebay/mobile/Item;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->item:Lcom/ebay/mobile/Item;

    return-object p0
.end method

.method public setKeyParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->keyParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    return-object p0
.end method

.method public setMoreToCheckout(Z)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->moreToCheckout:Z

    return-object p0
.end method

.method public setQuantity(I)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 151
    iput p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->quantity:I

    return-object p0
.end method

.method public setReferrer(Ljava/lang/String;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->referrer:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestCode(I)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 199
    iput p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->requestCode:I

    return-object p0
.end method

.method public setSourceIdTag(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    return-object p0
.end method

.method public setViewData(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    return-object p0
.end method
