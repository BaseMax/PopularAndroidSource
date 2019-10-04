.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SummaryElement"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method private constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V

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

    const-string/jumbo v0, "title"

    .line 357
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "subtitle"

    .line 368
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "thumbnailURL"

    .line 379
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$3;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;)V

    return-object p1

    :cond_2
    const-string/jumbo v0, "rtmTrackingURL"

    .line 390
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$4;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;)V

    return-object p1

    :cond_3
    const-string v0, "ClickId"

    .line 401
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement$5;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;)V

    return-object p1

    .line 412
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
