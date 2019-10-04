.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$4;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;

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

    .line 650
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement$4;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$PlaDetailsElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/rtm/RtmContent$Ad;->retailerName:Ljava/lang/String;

    return-void
.end method
