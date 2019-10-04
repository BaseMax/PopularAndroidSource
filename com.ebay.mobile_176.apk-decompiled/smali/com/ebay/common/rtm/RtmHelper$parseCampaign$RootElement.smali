.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method private constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$RootElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "mobileRTM"

    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$BodyElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$BodyElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_0
    const-string v0, "Ads"

    .line 317
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdsElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "summary"

    .line 321
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$SummaryElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_2
    const-string v0, "details"

    .line 325
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    .line 329
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
