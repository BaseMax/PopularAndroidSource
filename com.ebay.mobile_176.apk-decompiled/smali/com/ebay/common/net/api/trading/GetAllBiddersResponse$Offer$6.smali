.class Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$6;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$6;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;

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

    .line 193
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer$6;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;->access$000(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$Offer;)Lcom/ebay/common/model/AllBiddersData$Offer;

    move-result-object v0

    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseXml(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/common/model/AllBiddersData$Offer;->timeBid:Ljava/util/Date;

    return-void
.end method
