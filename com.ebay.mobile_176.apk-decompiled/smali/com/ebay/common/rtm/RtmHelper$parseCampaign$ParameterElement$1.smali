.class Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement$1;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;

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

    .line 1130
    iget-object v0, p0, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement$1;->this$2:Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;

    invoke-static {v0}, Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;->access$1800(Lcom/ebay/common/rtm/RtmHelper$parseCampaign$ParameterElement;)Lcom/ebay/common/rtm/RtmContent$Parameter;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/rtm/RtmContent$Parameter;->key:Ljava/lang/String;

    return-void
.end method
