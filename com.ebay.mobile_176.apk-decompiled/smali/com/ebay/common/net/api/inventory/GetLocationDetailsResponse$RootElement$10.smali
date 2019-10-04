.class Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$10;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$DoubleElement;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$10;->this$1:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;

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

    .line 152
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement$10;->this$1:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    iget-object v0, v0, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    iput-wide p1, v0, Lcom/ebay/common/model/inventory/LocationAddress;->latitude:D

    return-void
.end method
