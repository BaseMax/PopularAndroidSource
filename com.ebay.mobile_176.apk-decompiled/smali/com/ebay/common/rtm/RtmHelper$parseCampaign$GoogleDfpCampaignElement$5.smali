.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$5;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$BooleanElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$5;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$BooleanElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected setValue(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement$5;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$GoogleDfpCampaignElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    iput-boolean p1, v0, Lcom/ebay/common/rtm/RtmContent$Ad;->userTargeted:Z

    return-void
.end method
