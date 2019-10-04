.class public abstract Lcom/ebay/common/net/JsonResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "JsonResponse.java"


# instance fields
.field protected body:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected exportErrorsToResponse(Lcom/ebay/common/model/cart/JsonModel;)V
    .locals 2

    .line 65
    iget v0, p0, Lcom/ebay/common/net/JsonResponse;->ackCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/ebay/common/model/cart/JsonModel;->getEbayResponseErrors()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create(Ljava/util/Collection;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/JsonResponse;->setResultStatus(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    :cond_0
    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/StreamUtil;->jsonObjectFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/JsonResponse;->body:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    move-result-object p1

    throw p1
.end method

.method protected processAck(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ack"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "success"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 53
    iput p1, p0, Lcom/ebay/common/net/JsonResponse;->ackCode:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/ebay/common/net/JsonResponse;->ackCode:I

    :goto_0
    return-void
.end method
