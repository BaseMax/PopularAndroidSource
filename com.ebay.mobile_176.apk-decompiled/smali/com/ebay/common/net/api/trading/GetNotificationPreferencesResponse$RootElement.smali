.class final Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetNotificationPreferencesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootElement"
.end annotation


# instance fields
.field private final resp:Lcom/ebay/nautilus/domain/net/EbayResponse;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 137
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->resp:Lcom/ebay/nautilus/domain/net/EbayResponse;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Ack"

    .line 145
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance p1, Lcom/ebay/nautilus/domain/net/AckElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->resp:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/AckElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_0
    const-string v0, "Timestamp"

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance p1, Lcom/ebay/nautilus/domain/net/TimestampElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->resp:Lcom/ebay/nautilus/domain/net/EbayResponse;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/net/TimestampElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1

    :cond_1
    const-string v0, "Errors"

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    new-instance p1, Lcom/ebay/nautilus/domain/net/ErrorElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->resp:Lcom/ebay/nautilus/domain/net/EbayResponse;

    const-string/jumbo p3, "urn:ebay:apis:eBLBaseComponents"

    invoke-direct {p1, p2, p3}, Lcom/ebay/nautilus/domain/net/ErrorElement;-><init>(Lcom/ebay/nautilus/domain/net/EbayResponse;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "UserDeliveryPreferenceArray"

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 152
    new-instance p1, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$1;)V

    return-object p1

    :cond_3
    const-string v0, "EventProperty"

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    new-instance p1, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    invoke-direct {p1, p2, v1}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$1;)V

    return-object p1

    .line 156
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
