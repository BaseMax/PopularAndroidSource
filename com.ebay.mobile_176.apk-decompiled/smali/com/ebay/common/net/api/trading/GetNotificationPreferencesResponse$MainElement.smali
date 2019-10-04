.class final Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetNotificationPreferencesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$1;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;)V

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

    const-string v0, "NotificationEnable"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance p1, Lcom/ebay/common/model/mdns/NotificationPreference;

    invoke-direct {p1}, Lcom/ebay/common/model/mdns/NotificationPreference;-><init>()V

    .line 169
    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;->prefList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p2, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    invoke-direct {p2, p3, p1}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/model/mdns/NotificationPreference;)V

    return-object p2

    .line 172
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
