.class public final Lcom/ebay/common/net/api/trading/GetUserResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetUserResponse.java"

# interfaces
.implements Lcom/ebay/nautilus/kernel/net/IResponseHeaderHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetUserResponse$Address;,
        Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;,
        Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;
    }
.end annotation


# instance fields
.field public detail:Lcom/ebay/common/model/UserDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 21
    new-instance v0, Lcom/ebay/common/model/UserDetail;

    invoke-direct {v0}, Lcom/ebay/common/model/UserDetail;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    return-void
.end method


# virtual methods
.method public getHeaderHandler()Lcom/ebay/nautilus/kernel/net/IResponseHeaderHandler;
    .locals 0

    return-object p0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse;Lcom/ebay/common/net/api/trading/GetUserResponse$1;)V

    .line 27
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method

.method public readHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 1

    const-string/jumbo v0, "x-ebay-api-msuuid"

    .line 33
    invoke-interface {p1, v0}, Lcom/ebay/nautilus/kernel/net/IHeaders;->getLastHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/model/UserDetail;->msuuid:Ljava/lang/String;

    :cond_0
    return-void
.end method
