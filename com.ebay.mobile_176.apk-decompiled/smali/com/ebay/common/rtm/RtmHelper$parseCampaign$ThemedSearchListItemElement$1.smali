.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement$1;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement$1;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ThemedSearchListItemElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {v0}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent;->searchDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
