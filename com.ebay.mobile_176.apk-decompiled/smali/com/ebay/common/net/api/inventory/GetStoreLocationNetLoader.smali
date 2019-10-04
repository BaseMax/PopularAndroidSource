.class public Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;
.super Lcom/ebay/nautilus/shell/content/FwLoader;
.source "GetStoreLocationNetLoader.java"


# instance fields
.field private error:Z

.field private final locationId:Ljava/lang/String;

.field private response:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

.field private final sellerUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/FwLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->error:Z

    .line 21
    iput-object p3, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->locationId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->sellerUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected doInBackground()V
    .locals 3

    .line 36
    new-instance v0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->sellerUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->locationId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->response:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
    :try_end_0
    .catch Lcom/ebay/nautilus/kernel/net/BuildRequestDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/ebay/nautilus/kernel/net/ParseResponseDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    iput-boolean v1, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->error:Z

    .line 59
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 53
    iput-boolean v1, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->error:Z

    .line 54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 48
    iput-boolean v1, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->error:Z

    .line 49
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 43
    iput-boolean v1, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->error:Z

    .line 44
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->response:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/ebay/common/net/api/inventory/GetStoreLocationNetLoader;->error:Z

    return v0
.end method
