.class Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$1;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;

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

    .line 240
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$1;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->access$100(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)Lcom/ebay/common/model/inventory/LocationDetails$Day;

    move-result-object v0

    invoke-static {p1}, Lcom/ebay/common/util/EbayDateFormat;->parseInventoryDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/model/inventory/LocationDetails$Day;->date:Ljava/util/Date;

    return-void
.end method
