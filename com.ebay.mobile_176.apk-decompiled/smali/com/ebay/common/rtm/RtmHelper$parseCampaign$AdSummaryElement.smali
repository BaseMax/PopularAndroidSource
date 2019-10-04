.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdSummaryElement"
.end annotation


# instance fields
.field private final ad:Lcom/ebay/common/rtm/RtmContent$Ad;

.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 486
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    return-void
.end method

.method static synthetic access$800(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)Lcom/ebay/common/rtm/RtmContent$Ad;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

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

    const-string/jumbo v0, "title"

    .line 493
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "subtitle"

    .line 504
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "thumbnailURL"

    .line 515
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$3;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)V

    return-object p1

    :cond_2
    const-string v0, "rtmTrackingURL"

    .line 526
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$4;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)V

    return-object p1

    :cond_3
    const-string v0, "ClickId"

    .line 537
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$5;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)V

    return-object p1

    .line 548
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
