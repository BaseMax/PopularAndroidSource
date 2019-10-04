.class final Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResponseElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;Lcom/ebay/common/net/api/rtm/GetRtm$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;)V

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

    const-string v0, "ack"

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "version"

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance p1, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$1;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;)V

    return-object p1

    :cond_1
    const-string v0, "errorMessage"

    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    const-string p3, "http://www.ebay.com/marketplace/mobileor/v1/commonservices"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "rtmContent"

    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    new-instance p1, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement$2;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$ResponseElement;)V

    return-object p1

    .line 124
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
