.class Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$4;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$4;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary$4;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;->access$200(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;)Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

    move-result-object v0

    iput p1, v0, Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;->bidsToUniqueSellers:I

    return-void
.end method
