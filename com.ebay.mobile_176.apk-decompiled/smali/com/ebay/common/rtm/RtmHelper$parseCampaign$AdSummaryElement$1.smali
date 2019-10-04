.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$1;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;

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

    .line 500
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement$1;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;

    invoke-static {v0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;->access$800(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;)Lcom/ebay/common/rtm/RtmContent$Ad;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/rtm/RtmContent$Ad;->title:Ljava/lang/String;

    return-void
.end method
