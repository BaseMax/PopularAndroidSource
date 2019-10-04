.class public Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;
.super Lcom/ebay/nautilus/domain/net/EbayRequest;
.source "GetLocationDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbayRequest<",
        "Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final locationId:Ljava/lang/String;

.field private final sellerUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Location"

    const-string v1, "GetLocationDetails"

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/net/EbayRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;->sellerUserId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;->locationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRequestUrl()Ljava/net/URL;
    .locals 3

    .line 43
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->localLookupUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "locationdetails"

    .line 45
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;->locationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LocationID"

    .line 48
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;->locationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;->sellerUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SellerID"

    .line 51
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;->sellerUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    const/4 v1, 0x0

    .line 57
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
    .locals 1

    .line 30
    new-instance v0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;->getResponse()Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    move-result-object v0

    return-object v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/ebay/nautilus/domain/net/EbayRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    const-string v0, "Accept"

    const-string v1, "application/xml"

    .line 37
    invoke-interface {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
