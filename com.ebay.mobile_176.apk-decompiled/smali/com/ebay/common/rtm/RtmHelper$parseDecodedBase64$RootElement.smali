.class final Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;


# direct methods
.method private constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;Lcom/ebay/common/rtm/RtmHelper$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;)V

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

    const-string v0, "Placement"

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    const-string p3, "id"

    .line 233
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 234
    iget-object p3, p0, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;

    iget-object p3, p3, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-static {p3}, Lcom/ebay/common/rtm/RtmHelper;->access$100(Lcom/ebay/common/rtm/RtmHelper;)Lcom/ebay/common/rtm/RtmContentResult;

    move-result-object p3

    iget-object p3, p3, Lcom/ebay/common/rtm/RtmContentResult;->rc:Lcom/ebay/common/rtm/RtmContent;

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/ebay/common/rtm/RtmContent;->placement:Ljava/lang/String;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 236
    :cond_1
    new-instance p1, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$BodyElement;

    iget-object p2, p0, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;->this$1:Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$BodyElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;Lcom/ebay/common/rtm/RtmHelper$1;)V

    return-object p1

    .line 238
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
