.class public final Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;
.super Lcom/ebay/common/net/JsonResponse;
.source "GetItemIncentives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/cart/GetItemIncentives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetItemIncentivesResponse"
.end annotation


# instance fields
.field protected final currency:Ljava/lang/String;

.field protected incentives:Lcom/ebay/common/model/cart/ItemIncentives;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 273
    invoke-direct {p0}, Lcom/ebay/common/net/JsonResponse;-><init>()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;->incentives:Lcom/ebay/common/model/cart/ItemIncentives;

    .line 274
    iput-object p1, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemIncentives()Lcom/ebay/common/model/cart/ItemIncentives;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;->incentives:Lcom/ebay/common/model/cart/ItemIncentives;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 285
    invoke-super {p0, p1}, Lcom/ebay/common/net/JsonResponse;->parse(Ljava/io/InputStream;)V

    .line 289
    :try_start_0
    iget-object p1, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;->body:Lorg/json/JSONObject;

    const-string v0, "getItemIncentivesResponse"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 290
    invoke-super {p0, p1}, Lcom/ebay/common/net/JsonResponse;->processAck(Lorg/json/JSONObject;)V

    .line 292
    new-instance v0, Lcom/ebay/common/model/cart/ItemIncentives;

    iget-object v1, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;->currency:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/ebay/common/model/cart/ItemIncentives;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;->incentives:Lcom/ebay/common/model/cart/ItemIncentives;

    .line 294
    iget-object p1, p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;->incentives:Lcom/ebay/common/model/cart/ItemIncentives;

    invoke-super {p0, p1}, Lcom/ebay/common/net/JsonResponse;->exportErrorsToResponse(Lcom/ebay/common/model/cart/JsonModel;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 298
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    move-result-object p1

    throw p1
.end method
