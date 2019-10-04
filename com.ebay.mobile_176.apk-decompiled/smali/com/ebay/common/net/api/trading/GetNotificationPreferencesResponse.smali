.class public final Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetNotificationPreferencesResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PropertyElement;,
        Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$PreferenceElement;,
        Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$MainElement;,
        Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;
    }
.end annotation


# static fields
.field private static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field protected final prefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/mdns/NotificationPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected final property:Lcom/ebay/nautilus/domain/data/NameValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "GetNotificationPrefs"

    const-string v2, "Log GetNotificationPreferences"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;->prefList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/ebay/nautilus/domain/data/NameValue;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/NameValue;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;->property:Lcom/ebay/nautilus/domain/data/NameValue;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse;Lcom/ebay/common/net/api/trading/GetNotificationPreferencesResponse$1;)V

    .line 72
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
