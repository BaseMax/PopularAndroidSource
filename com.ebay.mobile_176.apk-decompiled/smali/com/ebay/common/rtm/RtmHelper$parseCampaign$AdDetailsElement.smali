.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdDetailsElement"
.end annotation


# instance fields
.field private final ad:Lcom/ebay/common/rtm/RtmContent$Ad;

.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 565
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

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

    const-string v0, "plaAdCampaign"

    .line 572
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "textAdCampaign"

    .line 576
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V

    return-object p1

    :cond_1
    const-string v0, "googleDFPCampaign"

    .line 580
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    sget-object p2, Lcom/ebay/common/rtm/RtmCampaignType;->GOOGLE_DFP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->campaign:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 583
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V

    return-object p1

    .line 585
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
