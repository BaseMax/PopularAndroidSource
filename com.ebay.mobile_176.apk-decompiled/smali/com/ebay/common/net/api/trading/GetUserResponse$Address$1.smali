.class Lcom/ebay/common/net/api/trading/GetUserResponse$Address$1;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetUserResponse$Address;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetUserResponse$Address;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$1;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse$Address;

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

    .line 230
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$1;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse$Address;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetUserResponse$Address;->address:Lcom/ebay/common/model/UserDetail$Address;

    iput-object p1, v0, Lcom/ebay/common/model/UserDetail$Address;->cityName:Ljava/lang/String;

    return-void
.end method
