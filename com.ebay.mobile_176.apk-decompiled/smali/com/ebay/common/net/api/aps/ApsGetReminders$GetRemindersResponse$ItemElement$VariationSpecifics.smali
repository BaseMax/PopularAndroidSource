.class final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$VariationSpecifics;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VariationSpecifics"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$VariationSpecifics;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$VariationSpecifics;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

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

    const-string v0, "NameValueList"

    .line 398
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$VariationSpecifics;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    .line 400
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method