.class Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement$2;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "GetNotificationPreferencesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement$2;->this$1:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;

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

    .line 228
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement$2;->this$1:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    iget-object v0, v0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;->property:Lcom/ebay/nautilus/domain/data/NameValue;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/NameValue;->addValue(Ljava/lang/String;)V

    return-void
.end method
