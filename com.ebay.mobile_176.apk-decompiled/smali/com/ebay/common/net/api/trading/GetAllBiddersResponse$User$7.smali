.class Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$7;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$BooleanElement;
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

    .line 279
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$7;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$BooleanElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$7;->this$1:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->access$100(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)Lcom/ebay/common/model/AllBiddersData$Offer$User;

    move-result-object v0

    iput-boolean p1, v0, Lcom/ebay/common/model/AllBiddersData$Offer$User;->IdVerified:Z

    return-void
.end method
