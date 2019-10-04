.class public final Lcom/ebay/common/net/api/trading/EbayTradingApiHelper;
.super Ljava/lang/Object;
.source "EbayTradingApiHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUser(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)Lcom/ebay/common/model/UserDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/ebay/common/net/api/trading/GetUserRequest;

    invoke-direct {v0, p1}, Lcom/ebay/common/net/api/trading/GetUserRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)V

    .line 38
    invoke-static {p0, v0}, Lcom/ebay/common/net/EbayRequestHelper;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/trading/GetUserResponse;

    .line 40
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    return-object p0
.end method
