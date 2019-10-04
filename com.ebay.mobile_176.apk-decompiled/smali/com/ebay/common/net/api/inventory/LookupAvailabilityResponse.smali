.class public final Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "LookupAvailabilityResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;,
        Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LookupAvailabilityComparator;,
        Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;,
        Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;
    }
.end annotation


# instance fields
.field availabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/inventory/StoreAvailability;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/inventory/StoreAvailability;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->availabilities:Ljava/util/List;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$1;)V

    .line 36
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    .line 39
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->availabilities:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 42
    new-instance v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LookupAvailabilityComparator;

    invoke-direct {v0}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LookupAvailabilityComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->availabilities:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/inventory/StoreAvailability;

    .line 50
    new-instance v2, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;

    iget-object v3, v1, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    iget-wide v3, v3, Lcom/ebay/common/model/inventory/LocationAddress;->latitude:D

    iget-object v5, v1, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    iget-wide v5, v5, Lcom/ebay/common/model/inventory/LocationAddress;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$Coordinate;-><init>(DD)V

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->availabilities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
