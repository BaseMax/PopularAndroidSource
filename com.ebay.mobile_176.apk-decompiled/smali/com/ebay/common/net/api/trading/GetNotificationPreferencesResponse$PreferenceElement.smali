.class final Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetNotificationPreferencesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferenceElement"
.end annotation


# instance fields
.field preference:Lcom/ebay/common/model/mdns/NotificationPreference;

.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;


# direct methods
.method protected constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/model/mdns/NotificationPreference;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement;->preference:Lcom/ebay/common/model/mdns/NotificationPreference;

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

    const-string v0, "EventType"

    .line 189
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance p1, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement$1;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement;)V

    return-object p1

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
