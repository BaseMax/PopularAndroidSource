.class Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$2;
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

    .line 83
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$2;->this$2:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;

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
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$2;->this$2:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;->this$1:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    iput-object p1, v0, Lcom/ebay/common/model/UserDetail;->site:Ljava/lang/String;

    return-void
.end method
