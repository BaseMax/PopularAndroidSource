.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$UrlElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement$2;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$UrlElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement$2;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$CelebrityItemsCampaignElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {v0}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iput-object p1, v0, Lcom/ebay/common/rtm/RtmContent;->bannerImageURL:Ljava/net/URL;

    return-void
.end method