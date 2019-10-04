.class public final enum Lcom/apptentive/android/sdk/ApptentiveLogTag;
.super Ljava/lang/Enum;
.source "ApptentiveLogTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/ApptentiveLogTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum ADVERTISER_ID:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum NETWORK:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum NOTIFICATIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum PARTNERS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum SECURITY:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum TESTER_COMMANDS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

.field public static final enum UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NETWORK:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 5
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "APP_CONFIGURATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 6
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "CONVERSATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 7
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "INTERACTIONS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 8
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "NOTIFICATIONS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 9
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "MESSAGES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 10
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "DATABASE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 11
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "PAYLOADS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 12
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "TESTER_COMMANDS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TESTER_COMMANDS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 13
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "NOTIFICATION_INTERACTIONS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 14
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "PUSH"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 15
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "UTIL"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 16
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "TROUBLESHOOT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 17
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "ADVERTISER_ID"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->ADVERTISER_ID:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 18
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "PARTNERS"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PARTNERS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    .line 19
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "SECURITY"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/apptentive/android/sdk/ApptentiveLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->SECURITY:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [Lcom/apptentive/android/sdk/ApptentiveLogTag;

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NETWORK:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->APP_CONFIGURATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TESTER_COMMANDS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v10

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->NOTIFICATION_INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v11

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PUSH:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v12

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v13

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    aput-object v1, v0, v14

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->ADVERTISER_ID:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PARTNERS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->SECURITY:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->$VALUES:[Lcom/apptentive/android/sdk/ApptentiveLogTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/ApptentiveLogTag;
    .locals 1

    .line 3
    const-class v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/ApptentiveLogTag;
    .locals 1

    .line 3
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->$VALUES:[Lcom/apptentive/android/sdk/ApptentiveLogTag;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/ApptentiveLogTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/ApptentiveLogTag;

    return-object v0
.end method
