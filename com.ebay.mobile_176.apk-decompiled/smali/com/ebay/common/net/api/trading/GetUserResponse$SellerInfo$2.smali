.class Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo$2;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;

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

    .line 196
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo$2;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;

    invoke-static {v0}, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;->access$200(Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;)Lcom/ebay/common/model/UserDetail$SellerInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/ebay/common/model/UserDetail$SellerInfo;->paymentMethod:Ljava/lang/String;

    return-void
.end method
