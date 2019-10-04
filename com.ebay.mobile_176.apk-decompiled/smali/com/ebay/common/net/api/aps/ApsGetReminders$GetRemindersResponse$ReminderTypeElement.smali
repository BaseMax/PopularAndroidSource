.class final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReminderTypeElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "item"

    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/MyEbayListItem;-><init>()V

    .line 175
    new-instance p2, Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;-><init>()V

    iput-object p2, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->transaction:Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;

    .line 176
    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-static {p2}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->access$500(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance p2, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {p2, p3, p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/nautilus/domain/data/MyEbayListItem;)V

    return-object p2

    .line 179
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
