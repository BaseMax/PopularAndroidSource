.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadAppCampaignElement"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method private constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V
    .locals 0

    .line 742
    invoke-direct {p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V

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

    .line 748
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;)V

    return-object p1

    :cond_0
    const-string v0, "infoURL"

    .line 759
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;)V

    return-object p1

    :cond_1
    const-string v0, "appStoreURL"

    .line 770
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement$3;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;)V

    return-object p1

    .line 781
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
