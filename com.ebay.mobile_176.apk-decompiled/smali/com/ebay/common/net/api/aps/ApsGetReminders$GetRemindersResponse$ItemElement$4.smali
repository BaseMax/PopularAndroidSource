.class Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$4;
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

    .line 236
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$4;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$4;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->endDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$4;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v2

    .line 245
    invoke-static {p1}, Lcom/ebay/common/util/EbayDateFormat;->millisFromISO8601Duration(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->endDate:Ljava/util/Date;

    return-void
.end method
