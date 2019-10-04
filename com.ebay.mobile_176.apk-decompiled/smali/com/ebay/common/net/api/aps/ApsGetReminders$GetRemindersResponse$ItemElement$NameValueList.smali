.class final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameValueList"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V
    .locals 2

    .line 407
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 408
    invoke-static {p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->nameValueList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 409
    invoke-static {p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->nameValueList:Ljava/util/ArrayList;

    .line 410
    :cond_0
    invoke-static {p1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->nameValueList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/nautilus/domain/data/NameValue;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/NameValue;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 418
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->nameValueList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-static {v1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v1

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/NameValue;

    const-string v1, "Name"

    .line 419
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList$1;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList$1;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;Lcom/ebay/nautilus/domain/data/NameValue;)V

    return-object p1

    :cond_0
    const-string v1, "Value"

    .line 428
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList$2;

    invoke-direct {p1, p0, v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList$2;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;Lcom/ebay/nautilus/domain/data/NameValue;)V

    return-object p1

    .line 437
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
