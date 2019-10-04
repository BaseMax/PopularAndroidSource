.class Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$5;
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

    .line 250
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$5;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$5;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-static {v0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    move-result-object v0

    invoke-static {p1}, Lcom/ebay/common/util/EbayDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->endDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 260
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-virtual {p1}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
