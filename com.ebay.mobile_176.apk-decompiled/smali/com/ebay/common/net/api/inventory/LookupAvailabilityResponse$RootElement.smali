.class final Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "LookupAvailabilityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "Location"

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->availabilities:Ljava/util/List;

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->availabilities:Ljava/util/List;

    .line 71
    :cond_0
    new-instance p1, Lcom/ebay/common/model/inventory/StoreAvailability;

    invoke-direct {p1}, Lcom/ebay/common/model/inventory/StoreAvailability;-><init>()V

    .line 72
    new-instance p2, Lcom/ebay/common/model/inventory/LocationAddress;

    invoke-direct {p2}, Lcom/ebay/common/model/inventory/LocationAddress;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    .line 73
    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->availabilities:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    const/4 p3, 0x1

    iput p3, p2, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;->ackCode:I

    .line 76
    new-instance p2, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    invoke-direct {p2, p3, p1}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;-><init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;Lcom/ebay/common/model/inventory/StoreAvailability;)V

    return-object p2

    :cond_1
    const-string v0, "Errors"

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse;

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    .line 80
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
