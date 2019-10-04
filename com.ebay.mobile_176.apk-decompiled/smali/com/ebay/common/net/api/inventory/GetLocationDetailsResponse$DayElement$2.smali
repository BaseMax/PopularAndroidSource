.class Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;
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

    .line 245
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$2;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected setValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$2;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->access$100(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)Lcom/ebay/common/model/inventory/LocationDetails$Day;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, v0, Lcom/ebay/common/model/inventory/LocationDetails$Day;->dayOfWeek:I

    .line 258
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$2;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;

    invoke-static {p1}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->access$100(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)Lcom/ebay/common/model/inventory/LocationDetails$Day;

    move-result-object p1

    iget p1, p1, Lcom/ebay/common/model/inventory/LocationDetails$Day;->dayOfWeek:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 259
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$2;->this$0:Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;

    invoke-static {p1}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->access$100(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)Lcom/ebay/common/model/inventory/LocationDetails$Day;

    move-result-object p1

    iput v1, p1, Lcom/ebay/common/model/inventory/LocationDetails$Day;->dayOfWeek:I

    :cond_0
    return-void
.end method
