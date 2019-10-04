.class public final Lcom/ebay/common/model/cart/ItemIncentives;
.super Lcom/ebay/common/model/cart/UserIncentives;
.source "ItemIncentives.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final itemId:Ljava/lang/String;

.field public rewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/cart/RewardsIncentive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/ebay/common/model/cart/UserIncentives;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/cart/ItemIncentives;->rewards:Ljava/util/List;

    const-string v0, "itemRewardsIncentive"

    const-string/jumbo v1, "rewardsIncentiveList"

    const-string/jumbo v2, "rewardsIncentive"

    .line 24
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/ItemIncentives;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/ebay/common/model/cart/ItemIncentives;->rewards:Ljava/util/List;

    new-instance v4, Lcom/ebay/common/model/cart/RewardsIncentive;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/ebay/common/model/cart/RewardsIncentive;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ebay/common/model/cart/ItemIncentives;->incentives:Ljava/util/List;

    const-string p2, "itemCouponIncentive"

    const-string v0, "itemApplicableIncentives"

    .line 31
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/ItemIncentives;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    move-object v2, v0

    const/4 v0, 0x0

    .line 33
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    const-string v2, "itemId"

    .line 36
    invoke-static {p1, v2}, Lcom/ebay/common/model/cart/ItemIncentives;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "applicableIncentives"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ebay/common/model/cart/ItemIncentives;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 39
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 40
    iget-object v5, p0, Lcom/ebay/common/model/cart/ItemIncentives;->incentives:Ljava/util/List;

    new-instance v6, Lcom/ebay/common/model/cart/Incentive;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ebay/common/model/cart/Incentive;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 43
    :cond_3
    iput-object v0, p0, Lcom/ebay/common/model/cart/ItemIncentives;->itemId:Ljava/lang/String;

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ebay/common/model/cart/ItemIncentives;->campaigns:Ljava/util/List;

    const-string p2, "campaignList"

    const-string v0, "campaign"

    .line 46
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/common/model/cart/ItemIncentives;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 48
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 49
    iget-object p2, p0, Lcom/ebay/common/model/cart/ItemIncentives;->campaigns:Ljava/util/List;

    new-instance v0, Lcom/ebay/common/model/cart/Incentive$Campaign;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ebay/common/model/cart/Incentive$Campaign;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
