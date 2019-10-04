.class final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReminderElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)V

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

    const-string v0, "paymentToSend"

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "watchEndingSoon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feedbackToSend"

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "outbid"

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bidEndingSoon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "paymentToReceive"

    .line 150
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bestOffer"

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "shippingNeeded"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sellEndingSoon"

    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "secondChanceOffer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pickupReady"

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1

    .line 156
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->listResult:Lcom/ebay/common/model/RemindersList;

    const-string p2, "count"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/ebay/common/model/RemindersList;->count:I

    .line 157
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->listResult:Lcom/ebay/common/model/RemindersList;

    const-string p2, "nextPageLocator"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ebay/common/model/RemindersList;->nextPageLocator:Ljava/lang/String;

    .line 158
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->listResult:Lcom/ebay/common/model/RemindersList;

    const-string p2, "hasMore"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "hasMore"

    .line 159
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "true"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p1, Lcom/ebay/common/model/RemindersList;->hasMore:Z

    .line 160
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V

    return-object p1
.end method
