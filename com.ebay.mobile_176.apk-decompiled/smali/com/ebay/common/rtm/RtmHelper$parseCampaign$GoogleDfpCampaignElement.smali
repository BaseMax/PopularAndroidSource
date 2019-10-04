.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GoogleDfpCampaignElement"
.end annotation


# instance fields
.field protected final ad:Lcom/ebay/common/rtm/RtmContent$Ad;

.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 1011
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

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

    const-string v0, "adUnitId"

    .line 1018
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$1;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;)V

    return-object p1

    :cond_0
    const-string v0, "ppid"

    .line 1029
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$2;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;)V

    return-object p1

    :cond_1
    const-string v0, "adSizeWidth"

    .line 1040
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1042
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$3;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;)V

    return-object p1

    :cond_2
    const-string v0, "adSizeHeight"

    .line 1051
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1053
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$4;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;)V

    return-object p1

    :cond_3
    const-string/jumbo v0, "userTargetedFlag"

    .line 1062
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1064
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$5;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;)V

    return-object p1

    :cond_4
    const-string v0, "parameters"

    .line 1073
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1075
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParametersElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V

    return-object p1

    .line 1077
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
