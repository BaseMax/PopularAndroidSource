.class public final Lcom/ebay/common/model/cart/Incentive$Campaign;
.super Lcom/ebay/common/model/cart/IncentiveType;
.source "Incentive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/cart/Incentive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Campaign"
.end annotation


# instance fields
.field public final FAQUrl:Ljava/lang/String;

.field public final adjacencyId:Ljava/lang/String;

.field public final budgetAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final campaignCreationTime:Ljava/util/Date;

.field public final campaignDeletionTime:Ljava/util/Date;

.field public final campaignDiscountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final campaignDiscountPercent:Ljava/lang/Double;

.field public final campaignDiscountType:Ljava/lang/String;

.field public final campaignExpirationTime:Ljava/util/Date;

.field public final campaignId:Ljava/lang/String;

.field public final campaignLastModifiedTime:Ljava/util/Date;

.field public final campaignMaxPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final campaignMinPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final campaignStartTime:Ljava/util/Date;

.field public final campaignStatus:Ljava/lang/String;

.field public final campaignValueType:Ljava/lang/String;

.field public final categoryFlag:Ljava/lang/String;

.field public final categoryIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final country:Ljava/lang/String;

.field public final currency:Ljava/lang/String;

.field public final displayMsg:Ljava/lang/String;

.field public final externalId:Ljava/lang/String;

.field public final incentiveApplicationType:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxUsageCount:Ljava/lang/Integer;

.field public final programCode:Ljava/lang/String;

.field public final redeemedTotalAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final redeemedTotalCount:Ljava/lang/Long;

.field public final sellerIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "incentiveType"

    .line 112
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/common/model/cart/IncentiveType;-><init>(Ljava/lang/String;)V

    const-string v0, "country"

    .line 113
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->country:Ljava/lang/String;

    const-string v0, "adjacencyId"

    .line 114
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->adjacencyId:Ljava/lang/String;

    const-string/jumbo v0, "programCode"

    .line 115
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->programCode:Ljava/lang/String;

    const-string v0, "externalId"

    .line 116
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->externalId:Ljava/lang/String;

    const-string v0, "displayMessage"

    .line 117
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->displayMsg:Ljava/lang/String;

    const-string v0, "language"

    .line 118
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->language:Ljava/lang/String;

    const-string v0, "FAQURL"

    .line 119
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->FAQUrl:Ljava/lang/String;

    const-string v0, "campaignStatus"

    .line 120
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignStatus:Ljava/lang/String;

    const-string v0, "campaignStartTime"

    .line 121
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignStartTime:Ljava/util/Date;

    const-string v0, "campaignExpirationTime"

    .line 122
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignExpirationTime:Ljava/util/Date;

    const-string v0, "budgetAmount"

    .line 123
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->budgetAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string/jumbo v0, "redeemedTotalAmount"

    .line 124
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->redeemedTotalAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string/jumbo v0, "redeemedTotalCount"

    .line 125
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->redeemedTotalCount:Ljava/lang/Long;

    const-string v0, "currency"

    .line 126
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->currency:Ljava/lang/String;

    const-string v0, "maxUsageCount"

    .line 127
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->maxUsageCount:Ljava/lang/Integer;

    const-string v0, "campaignId"

    .line 128
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignId:Ljava/lang/String;

    const-string v0, "campaignCreationTime"

    .line 129
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignCreationTime:Ljava/util/Date;

    const-string v0, "campaignLastModifiedTime"

    .line 130
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignLastModifiedTime:Ljava/util/Date;

    const-string v0, "campaignDeletionTime"

    .line 131
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignDeletionTime:Ljava/util/Date;

    const-string v0, "campaignDiscountType"

    .line 132
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignDiscountType:Ljava/lang/String;

    const-string v0, "campaignDiscountPercent"

    .line 133
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignDiscountPercent:Ljava/lang/Double;

    const-string v0, "campaignDiscountAmount"

    .line 134
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignDiscountAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v0, "campaignValueType"

    .line 135
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignValueType:Ljava/lang/String;

    const-string v0, "campaignMinPurchaseAmount"

    .line 136
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignMinPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v0, "campaignMaxPurchaseAmount"

    .line 137
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignMaxPurchaseAmount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->categoryIdList:Ljava/util/List;

    const-string v0, "categoryIdList"

    .line 139
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "categoryIdList"

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 144
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->categoryIdList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "categoryId"

    invoke-static {v4, v5}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "categoryFlag"

    .line 148
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->categoryFlag:Ljava/lang/String;

    const-string v0, "incentiveApplicationType"

    .line 149
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->incentiveApplicationType:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->sellerIdList:Ljava/util/List;

    const-string/jumbo v0, "sellerIdList"

    .line 151
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "categoryIdList"

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 156
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->sellerIdList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "sellerId"

    invoke-static {v2, v3}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/cart/Incentive$Campaign;->campaignStatus:Ljava/lang/String;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
