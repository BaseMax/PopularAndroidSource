.class public Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;
.super Lcom/ebay/common/model/cart/JsonModel;
.source "RewardsIncentive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/cart/RewardsIncentive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RewardsDetail"
.end annotation


# instance fields
.field public final promotionAmount:Ljava/lang/Double;

.field public final promotionDescription:Ljava/lang/String;

.field public final promotionEndDate:Ljava/util/Date;

.field public final promotionName:Ljava/lang/String;

.field public final promotionType:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/common/model/cart/RewardsIncentive;


# direct methods
.method constructor <init>(Lcom/ebay/common/model/cart/RewardsIncentive;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->this$0:Lcom/ebay/common/model/cart/RewardsIncentive;

    invoke-direct {p0}, Lcom/ebay/common/model/cart/JsonModel;-><init>()V

    const-string p1, "promotionName"

    .line 95
    invoke-static {p2, p1}, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->promotionName:Ljava/lang/String;

    const-string p1, "promotionDescription"

    .line 96
    invoke-static {p2, p1}, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->promotionDescription:Ljava/lang/String;

    const-string p1, "promotionAmount"

    .line 97
    invoke-static {p2, p1}, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->promotionAmount:Ljava/lang/Double;

    const-string p1, "promotionEndDate"

    .line 98
    invoke-static {p2, p1}, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->promotionEndDate:Ljava/util/Date;

    const-string p1, "promotionType"

    .line 99
    invoke-static {p2, p1}, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->promotionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isBaseOffer()Z
    .locals 2

    const-string v0, "BaseOffer"

    .line 109
    iget-object v1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->promotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBoosterOffer()Z
    .locals 2

    const-string v0, "BoosterOffer"

    .line 104
    iget-object v1, p0, Lcom/ebay/common/model/cart/RewardsIncentive$RewardsDetail;->promotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
