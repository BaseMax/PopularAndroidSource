.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThemedSearchCampaignElement"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method private constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V
    .locals 0

    .line 866
    invoke-direct {p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V

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

    const-string v0, "listItems"

    .line 872
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemsElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "title"

    .line 876
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;)V

    return-object p1

    :cond_1
    const-string v0, "bannerImageURL"

    .line 887
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;)V

    return-object p1

    .line 898
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
