.class public abstract Lcom/ebay/common/SsoResponse;
.super Lcom/ebay/nautilus/kernel/net/Response;
.source "SsoResponse.java"

# interfaces
.implements Lcom/ebay/nautilus/kernel/net/IResponseDataHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/net/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataHandler()Lcom/ebay/nautilus/kernel/net/IResponseDataHandler;
    .locals 0

    return-object p0
.end method

.method public final parse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/StreamUtil;->jsonObjectFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/ebay/common/SsoResponse;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    move-result-object p1

    throw p1
.end method

.method protected abstract parse(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation
.end method
