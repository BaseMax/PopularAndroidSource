.class public final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetRemindersResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderTypeElement;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ReminderElement;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$GetRemindersResponseElement;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$BodyElement;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$RootElement;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/MyEbayListItem;",
            ">;"
        }
    .end annotation
.end field

.field public final listResult:Lcom/ebay/common/model/RemindersList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 83
    new-instance v0, Lcom/ebay/common/model/RemindersList;

    invoke-direct {v0}, Lcom/ebay/common/model/RemindersList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->listResult:Lcom/ebay/common/model/RemindersList;

    .line 84
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->listResult:Lcom/ebay/common/model/RemindersList;

    iget-object v0, v0, Lcom/ebay/common/model/RemindersList;->list:Ljava/util/List;

    iput-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$500(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;->items:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$RootElement;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V

    .line 90
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
