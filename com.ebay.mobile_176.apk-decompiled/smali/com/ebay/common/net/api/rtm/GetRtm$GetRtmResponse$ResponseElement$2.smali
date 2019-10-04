.class Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$2;->this$1:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/ebay/common/net/api/rtm/EbayRtmApi;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/ebay/common/net/api/rtm/EbayRtmApi;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/XmlFormatter;->format([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$2;->this$1:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    iput-object p1, v0, Lcom/ebay/common/rtm/RtmContentResult;->rtmContentBase64:Ljava/lang/String;

    return-void
.end method
