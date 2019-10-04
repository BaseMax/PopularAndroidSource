.class public Lcom/ebay/common/model/cart/RewardsIncentive;
.super Lcom/ebay/common/model/cart/JsonModel;
.source "RewardsIncentive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;
    }
.end annotation


# instance fields
.field public final amount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public final includesBooster:Ljava/lang/Boolean;

.field public final itemId:Ljava/lang/String;

.field public final payloadIdentifier:Ljava/lang/String;

.field public final programCurrencyId:Ljava/lang/String;

.field public final programCurrencyIsoCode:Ljava/lang/String;

.field public final programName:Ljava/lang/String;

.field public final rewardsAmount:Ljava/lang/String;

.field public final rewardsDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;",
            ">;"
        }
    .end annotation
.end field

.field public final transactionId:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final variationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/ebay/common/model/cart/JsonModel;-><init>()V

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->rewardsDetails:Ljava/util/List;

    const-string p2, "itemId"

    .line 35
    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->itemId:Ljava/lang/String;

    const-string/jumbo p2, "transactionId"

    .line 36
    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->transactionId:Ljava/lang/String;

    const-string p2, "itemVariationId"

    .line 37
    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->variationId:Ljava/lang/String;

    const-string p2, "entityType"

    .line 38
    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->type:Ljava/lang/String;

    const-string/jumbo p2, "rewardsResult"

    .line 40
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getObject(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "includesBooster"

    .line 41
    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->includesBooster:Ljava/lang/Boolean;

    const-string p2, "payloadIdentifier"

    .line 42
    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->payloadIdentifier:Ljava/lang/String;

    const-string/jumbo p2, "rewardsAmount"

    .line 44
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getObject(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo v0, "rewardsAmount"

    .line 45
    invoke-static {p2, v0}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->rewardsAmount:Ljava/lang/String;

    const-string/jumbo v0, "programCurrencyIsoCode"

    .line 46
    invoke-static {p2, v0}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programCurrencyIsoCode:Ljava/lang/String;

    const-string/jumbo v0, "programCurrencyId"

    .line 47
    invoke-static {p2, v0}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programCurrencyId:Ljava/lang/String;

    const-string/jumbo v0, "programName"

    .line 48
    invoke-static {p2, v0}, Lcom/ebay/common/model/cart/RewardsIncentive;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programName:Ljava/lang/String;

    .line 54
    iget-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programCurrencyIsoCode:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "0"

    iget-object v0, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programCurrencyIsoCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programCurrencyIsoCode:Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->rewardsAmount:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 56
    new-instance p2, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v0, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->rewardsAmount:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programCurrencyIsoCode:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->amount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->amount:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    :goto_0
    const-string/jumbo p2, "rewardsDetailList"

    .line 60
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 63
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 65
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v1, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;

    invoke-direct {v1, p0, v0}, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;-><init>(Lcom/ebay/common/model/cart/RewardsIncentive;Lorg/json/JSONObject;)V

    .line 69
    iget-object v0, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->rewardsDetails:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public isBucks()Z
    .locals 2

    const-string v0, "EBAY_BUCKS"

    .line 77
    iget-object v1, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNectarPoints()Z
    .locals 2

    const-string v0, "EBAY_UK_NECTAR"

    .line 82
    iget-object v1, p0, Lcom/ebay/common/model/cart/RewardsIncentive;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
