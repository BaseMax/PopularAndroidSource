.class Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$9;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$9;->this$2:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$9;->this$2:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;->this$1:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    const-string v1, "Shopper"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/ebay/common/model/UserDetail;->isPpa:Z

    return-void
.end method
