.class Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$8;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$8;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

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

    .line 295
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$8;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->transaction:Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;->paidStatus:Ljava/lang/String;

    return-void
.end method
