.class Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$1;
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

    .line 98
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$1;->this$1:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;

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

    .line 102
    iget-object v0, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$1;->this$1:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    invoke-virtual {v0, p1}, Lcom/ebay/common/rtm/RtmContentResult;->setVersion(Ljava/lang/String;)V

    return-void
.end method
