.class Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$11;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$DoubleElement;
.source "LookupAvailabilityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$11;->this$1:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$DoubleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement$11;->this$1:Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityResponse$LocationElement;->location:Lcom/ebay/common/model/inventory/StoreAvailability;

    iget-object v0, v0, Lcom/ebay/common/model/inventory/StoreAvailability;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    iput-wide p1, v0, Lcom/ebay/common/model/inventory/LocationAddress;->latitude:D

    return-void
.end method
