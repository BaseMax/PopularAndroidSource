.class Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$3;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$3;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;

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

    .line 247
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$3;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->access$100(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)Lcom/ebay/common/model/AllBiddersData$Offer$User;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/AllBiddersData$Offer$User;->email:Ljava/lang/String;

    return-void
.end method
