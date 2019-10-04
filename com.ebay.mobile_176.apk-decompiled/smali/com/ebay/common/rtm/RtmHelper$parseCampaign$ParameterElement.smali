.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParameterElement"
.end annotation


# instance fields
.field private final parameter:Lcom/ebay/common/rtm/RtmContent$Parameter;

.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Parameter;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1116
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;->parameter:Lcom/ebay/common/rtm/RtmContent$Parameter;

    return-void
.end method

.method static synthetic access$1800(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;)Lcom/ebay/common/rtm/RtmContent$Parameter;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;->parameter:Lcom/ebay/common/rtm/RtmContent$Parameter;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "key"

    .line 1123
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "value"

    .line 1134
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;)V

    return-object p1

    .line 1145
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
