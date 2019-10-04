.class final Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdElement"
.end annotation


# instance fields
.field private final ad:Lcom/ebay/common/rtm/RtmContent$Ad;

.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V
    .locals 2

    .line 448
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    .line 452
    iget-object v0, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {v0}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent;->ads:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {v0}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ebay/common/rtm/RtmContent;->ads:Ljava/util/ArrayList;

    .line 456
    :cond_0
    iget-object p1, p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p1}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    iget-object p1, p1, Lcom/ebay/common/rtm/RtmContent;->ads:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    const-string/jumbo v0, "summary"

    .line 463
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdSummaryElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V

    return-object p1

    :cond_0
    const-string v0, "details"

    .line 465
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseCampaign;

    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdElement;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$AdDetailsElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign;Lcom/ebay/common/rtm/RtmContent$Ad;)V

    return-object p1

    .line 467
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
