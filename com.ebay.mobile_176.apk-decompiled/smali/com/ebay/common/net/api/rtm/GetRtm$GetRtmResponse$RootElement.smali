.class final Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$RootElement;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;Lcom/ebay/common/net/api/rtm/GetRtm$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$RootElement;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;)V

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

    const-string v0, "Body"

    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance p1, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$BodyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$RootElement;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse$BodyElement;-><init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;Lcom/ebay/common/net/api/rtm/GetRtm$1;)V

    return-object p1

    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
