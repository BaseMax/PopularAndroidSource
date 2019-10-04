.class public Lcom/ebay/common/model/cart/Incentive;
.super Lcom/ebay/common/model/cart/JsonModel;
.source "Incentive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/cart/Incentive$Campaign;
    }
.end annotation


# instance fields
.field public final appliedDiscountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final campaign:Lcom/ebay/common/model/cart/Incentive$Campaign;

.field public final campaignId:Ljava/lang/String;

.field public final countryCode:Ljava/lang/String;

.field public final creationTime:Ljava/util/Date;

.field public final currencyCode:Ljava/lang/String;

.field public final deletionTime:Ljava/util/Date;

.field public final discountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final discountPercent:Ljava/lang/Integer;

.field public final discountType:Ljava/lang/String;

.field public final displayMsg:Ljava/lang/String;

.field public final expiration:Ljava/util/Date;

.field public final id:Ljava/lang/String;

.field public final incentiveType:Ljava/lang/String;

.field public final lastModifiedTime:Ljava/util/Date;

.field public final maxPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final maxUseCount:Ljava/lang/Integer;

.field public final minPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final originalDiscountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final redemptionCode:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final useCount:Ljava/lang/Integer;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/ebay/common/model/cart/JsonModel;-><init>()V

    const-string v0, "incentiveId"

    .line 44
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->id:Ljava/lang/String;

    const-string v0, "campaignId"

    .line 45
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->campaignId:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    .line 46
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->userId:Ljava/lang/String;

    const-string/jumbo v0, "status"

    .line 47
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->status:Ljava/lang/String;

    const-string v0, "incentiveExpirationTime"

    .line 48
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->expiration:Ljava/util/Date;

    const-string/jumbo v0, "userUsedCount"

    .line 49
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->useCount:Ljava/lang/Integer;

    const-string/jumbo v0, "userMaxUsageAmount"

    .line 50
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->maxUseCount:Ljava/lang/Integer;

    const-string/jumbo v0, "redemptionCode"

    .line 51
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->redemptionCode:Ljava/lang/String;

    const-string v0, "isoCurrencyCode"

    .line 52
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->currencyCode:Ljava/lang/String;

    const-string v0, "isoCountryCode"

    .line 53
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->countryCode:Ljava/lang/String;

    const-string v0, "incentiveDiscountPercent"

    .line 54
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->discountPercent:Ljava/lang/Integer;

    const-string v0, "incentiveDiscountAmount"

    .line 55
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->discountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v0, "incentiveDiscountType"

    .line 56
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->discountType:Ljava/lang/String;

    const-string v0, "incentiveMinPurchaseAmount"

    .line 57
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->minPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v0, "incentiveMaxPurchaseAmount"

    .line 58
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->maxPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v0, "incentiveAppliedDiscountAmount"

    .line 59
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->appliedDiscountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v0, "displayMessage"

    .line 60
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->displayMsg:Ljava/lang/String;

    const-string v0, "incentiveCreationTime"

    .line 61
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->creationTime:Ljava/util/Date;

    const-string v0, "incentiveLastModifiedTime"

    .line 62
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->lastModifiedTime:Ljava/util/Date;

    const-string v0, "incentiveDeletionTime"

    .line 63
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->deletionTime:Ljava/util/Date;

    const-string/jumbo v0, "originalDiscountAmount"

    .line 64
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/Incentive;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->originalDiscountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string/jumbo v0, "parentCampaign"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/ebay/common/model/cart/Incentive$Campaign;

    const-string/jumbo v1, "parentCampaign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ebay/common/model/cart/Incentive$Campaign;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->campaign:Lcom/ebay/common/model/cart/Incentive$Campaign;

    .line 69
    iget-object p1, p0, Lcom/ebay/common/model/cart/Incentive;->campaign:Lcom/ebay/common/model/cart/Incentive$Campaign;

    iget-object p1, p1, Lcom/ebay/common/model/cart/Incentive$Campaign;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/model/cart/Incentive;->incentiveType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/ebay/common/model/cart/Incentive;->campaign:Lcom/ebay/common/model/cart/Incentive$Campaign;

    const-string/jumbo p1, "voucher"

    .line 74
    iput-object p1, p0, Lcom/ebay/common/model/cart/Incentive;->incentiveType:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public isVoucher()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->campaign:Lcom/ebay/common/model/cart/Incentive$Campaign;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ebay/common/model/cart/Incentive;->campaign:Lcom/ebay/common/model/cart/Incentive$Campaign;

    invoke-virtual {v0}, Lcom/ebay/common/model/cart/Incentive$Campaign;->isVoucher()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "voucher"

    .line 171
    iget-object v1, p0, Lcom/ebay/common/model/cart/Incentive;->incentiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
