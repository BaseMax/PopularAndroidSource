.class Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetShipmentTrackingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;

.field final synthetic val$scanDetail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$3;->this$1:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;

    iput-object p2, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$3;->val$scanDetail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$3;->this$1:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;

    iget-object v0, v0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail;->this$0:Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;

    iget-boolean v0, v0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse;->useEventTimeHack:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "GMT"

    .line 273
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-7:00"

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-07:00"

    .line 278
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShipmentTrackingResp"

    const-string v2, "failed to change eventTime, using API supplied value"

    .line 284
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ebay/common/net/api/shipping/GetShipmentTrackingResponse$ScanDetail$3;->val$scanDetail:Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseXml(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/ShipmentTrackingScanDetail;->eventTime:Ljava/util/Date;

    return-void
.end method
