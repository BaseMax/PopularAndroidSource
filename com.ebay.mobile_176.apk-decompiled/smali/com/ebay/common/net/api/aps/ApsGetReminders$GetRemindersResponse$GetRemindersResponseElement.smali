.class final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetRemindersResponseElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)V

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

    const-string v0, "ack"

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "timestamp"

    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "errorMessage"

    .line 132
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    const-string p3, "http://www.ebay.com/marketplace/mobileor/v1/services"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorMessageElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "buyingReminder"

    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "sellingReminder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 137
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1

    .line 136
    :cond_4
    :goto_0
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V

    return-object p1
.end method
