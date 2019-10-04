.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetailsElement"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method private constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V
    .locals 0

    .line 703
    invoke-direct {p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;)V

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

    const-string v0, "downloadAppCampaign"

    .line 709
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 711
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    sget-object p2, Lcom/ebay/common/rtm/RtmCampaignType;->DOWNLOADAPP_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->campaign:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 712
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DownloadAppCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_0
    const-string v0, "htmlCampaign"

    .line 714
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    sget-object p2, Lcom/ebay/common/rtm/RtmCampaignType;->HTML_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->campaign:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 717
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$HtmlCampaignElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$HtmlCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "themedSearchCampaign"

    .line 719
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    sget-object p2, Lcom/ebay/common/rtm/RtmCampaignType;->THEMED_SEARCH_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->campaign:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 722
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->searchDescriptions:Ljava/util/ArrayList;

    .line 723
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->itemSearchURLs:Ljava/util/ArrayList;

    .line 725
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_2
    const-string v0, "celebrityItemsCampaign"

    .line 727
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    sget-object p2, Lcom/ebay/common/rtm/RtmCampaignType;->CELEBRITY_ITEMS_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->campaign:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 730
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    :cond_3
    const-string v0, "itemListCampaign"

    .line 732
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 734
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    sget-object p2, Lcom/ebay/common/rtm/RtmCampaignType;->ITEM_LIST_CAMPAIGN:Lcom/ebay/common/rtm/RtmCampaignType;

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->campaign:Lcom/ebay/common/rtm/RtmCampaignType;

    .line 735
    iget-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/rtm/RtmContent;->itemIds:Ljava/util/ArrayList;

    .line 736
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ItemListCampaignElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$DetailsElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ItemListCampaignElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    .line 738
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
