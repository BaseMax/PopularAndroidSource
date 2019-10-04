.class Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$4;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;

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

    .line 87
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement$4;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;->allBidders:Lcom/ebay/common/model/AllBiddersData;

    iput-object p1, v0, Lcom/ebay/common/model/AllBiddersData;->listingStatus:Ljava/lang/String;

    return-void
.end method
