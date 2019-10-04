.class Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement$1;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement$1;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;->access$200(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;)Lcom/ebay/common/model/inventory/LocationDetails$Interval;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/inventory/LocationDetails$Interval;->open:Ljava/lang/String;

    return-void
.end method
