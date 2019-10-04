.class public final enum Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;
.super Ljava/lang/Enum;
.source "NotificationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/NotificationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

.field public static final enum DisabledSavedSearchIds:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

.field public static final enum EnableSavedSearches:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

.field public static final enum EnabledSavedSearchIds:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

.field public static final enum TimeLeft:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 348
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    const-string v1, "TimeLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->TimeLeft:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    const-string v1, "EnableSavedSearches"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->EnableSavedSearches:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    const-string v1, "EnabledSavedSearchIds"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->EnabledSavedSearchIds:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    const-string v1, "DisabledSavedSearchIds"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->DisabledSavedSearchIds:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    const/4 v0, 0x4

    .line 346
    new-array v0, v0, [Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->TimeLeft:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->EnableSavedSearches:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->EnabledSavedSearchIds:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->DisabledSavedSearchIds:Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;
    .locals 1

    .line 346
    const-class v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;
    .locals 1

    .line 346
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    invoke-virtual {v0}, [Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/mdns/NotificationPreference$PropertyType;

    return-object v0
.end method
