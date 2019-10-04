.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParametersElement"
.end annotation


# instance fields
.field private final ad:Lcom/ebay/common/rtm/RtmContent$Ad;

.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1087
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

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

    const-string/jumbo v0, "parameter"

    .line 1094
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContent$Ad;->parameters:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 1098
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent$Ad;->parameters:Ljava/util/ArrayList;

    .line 1101
    :cond_0
    new-instance p1, Lcom/ebay/common/rtm/RtmContent$Parameter;

    invoke-direct {p1}, Lcom/ebay/common/rtm/RtmContent$Parameter;-><init>()V

    .line 1102
    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    iget-object p2, p2, Lcom/ebay/common/rtm/RtmContent$Ad;->parameters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    new-instance p2, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;

    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p2, p3, p1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Parameter;)V

    return-object p2

    .line 1106
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
