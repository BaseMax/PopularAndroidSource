.class final Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetNotificationPreferencesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PropertyElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;->this$0:Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;)V

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

    const-string v0, "Name"

    .line 210
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance p1, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement$1;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;)V

    return-object p1

    :cond_0
    const-string v0, "Value"

    .line 221
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    new-instance p1, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement$2;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;)V

    return-object p1

    .line 232
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
