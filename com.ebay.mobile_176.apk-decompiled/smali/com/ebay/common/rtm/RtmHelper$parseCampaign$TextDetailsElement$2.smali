.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$UrlElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement$2;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;

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

    .line 695
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement$2;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$TextDetailsElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    iput-object p1, v0, Lcom/ebay/common/rtm/RtmContent$Ad;->externalLink:Ljava/net/URL;

    return-void
.end method