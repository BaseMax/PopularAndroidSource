.class public final Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;
.super Lcom/ebay/nautilus/domain/net/EbayRequest;
.source "LookupAvailabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;,
        Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbayRequest<",
        "Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final countryCode:Ljava/lang/String;

.field final estimatedDeliveryDate:Ljava/util/Date;

.field final location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

.field final logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field final radius:Ljava/lang/Integer;

.field final sellerId:Ljava/lang/String;

.field final sku:Ljava/lang/String;

.field final unit:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;Ljava/lang/Integer;Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;Ljava/lang/String;Lcom/ebay/common/model/cart/LogisticsPlanType;Ljava/util/Date;)V
    .locals 2

    const-string v0, "Availability"

    const-string v1, "LookupAvailability"

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/net/EbayRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->sellerId:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->sku:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    .line 221
    iput-object p4, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->radius:Ljava/lang/Integer;

    .line 222
    iput-object p5, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->unit:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    .line 223
    iput-object p6, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->countryCode:Ljava/lang/String;

    if-eqz p7, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    sget-object p7, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    :goto_0
    iput-object p7, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 225
    iput-object p8, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->estimatedDeliveryDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getRequestUrl()Ljava/net/URL;
    .locals 3

    .line 237
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->localLookupUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "availability"

    .line 240
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "SellerID"

    .line 241
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->sellerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 244
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->sku:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKU"

    .line 245
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->isPostalCode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PostalCode"

    .line 248
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    iget-object v2, v2, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->postalCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    const-string v1, "Latitude"

    .line 251
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    iget-object v2, v2, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->latitude:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "Longitude"

    .line 252
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->location:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;

    iget-object v2, v2, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$PhysicalLocation;->longitude:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->radius:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v1, "Radius"

    .line 257
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->radius:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->countryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CountryCode"

    .line 260
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->unit:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    if-eqz v1, :cond_4

    const-string v1, "Unit"

    .line 263
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->unit:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 265
    :cond_4
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    sget-object v2, Lcom/ebay/common/model/cart/LogisticsPlanType;->PUDO:Lcom/ebay/common/model/cart/LogisticsPlanType;

    if-ne v1, v2, :cond_5

    const-string v1, "Logistics"

    .line 266
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    invoke-virtual {v2}, Lcom/ebay/common/model/cart/LogisticsPlanType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 268
    :cond_5
    iget-object v1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->estimatedDeliveryDate:Ljava/util/Date;

    if-eqz v1, :cond_6

    const-string v1, "EDD"

    .line 269
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->estimatedDeliveryDate:Ljava/util/Date;

    invoke-static {v2}, Lcom/ebay/common/util/EbayDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6
    const/4 v1, 0x0

    .line 275
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public getResponse()Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
    .locals 1

    .line 231
    new-instance v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;->getResponse()Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    move-result-object v0

    return-object v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 2

    .line 288
    invoke-super {p0, p1}, Lcom/ebay/nautilus/domain/net/EbayRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    const-string v0, "Accept"

    const-string v1, "application/xml"

    .line 289
    invoke-interface {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
