.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDetailsElement"
.end annotation


# instance fields
.field protected ad:Lcom/ebay/common/rtm/RtmContent$Ad;

.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 670
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

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

    const-string v0, "externalLinkName"

    .line 677
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;)V

    return-object p1

    :cond_0
    const-string v0, "externalLink"

    .line 688
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;)V

    return-object p1

    .line 699
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
