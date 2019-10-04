.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;
.super Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaDetailsElement"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V

    const/4 p1, 0x1

    .line 603
    iput-boolean p1, p2, Lcom/ebay/common/rtm/RtmContent$Ad;->isPla:Z

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

    const-string/jumbo v0, "shippingInfo"

    .line 610
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;)V

    return-object p1

    :cond_0
    const-string v0, "price"

    .line 621
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "strikethroughPrice"

    .line 632
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$3;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;)V

    return-object p1

    :cond_2
    const-string v0, "retailerName"

    .line 643
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$4;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;)V

    return-object p1

    .line 654
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
