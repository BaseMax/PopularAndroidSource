.class public Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;
.super Lcom/ebay/nautilus/shell/content/FwLoader;
.source "LookupAvailabilityNetLoader.java"


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final estimatedDeliveryDate:Ljava/util/Date;

.field private final location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

.field private final logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field private final radius:Ljava/lang/Integer;

.field private response:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

.field private final sellerId:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final unit:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;Ljava/lang/Integer;Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;Ljava/lang/String;Lcom/ebay/common/model/cart/LogisticsPlanType;Ljava/util/Date;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/FwLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 30
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->sellerId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->sku:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    .line 33
    iput-object p5, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->radius:Ljava/lang/Integer;

    .line 34
    iput-object p6, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->unit:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    .line 35
    iput-object p7, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->countryCode:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 37
    iput-object p9, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->estimatedDeliveryDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected doInBackground()V
    .locals 10

    .line 51
    new-instance v9, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->sellerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->sku:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    iget-object v4, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->radius:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->unit:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    iget-object v6, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->countryCode:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    iget-object v8, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->estimatedDeliveryDate:Ljava/util/Date;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;Ljava/lang/Integer;Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;Ljava/lang/String;Lcom/ebay/common/model/cart/LogisticsPlanType;Ljava/util/Date;)V

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->response:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getResponse()Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityNetLoader;->response:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    return-object v0
.end method
