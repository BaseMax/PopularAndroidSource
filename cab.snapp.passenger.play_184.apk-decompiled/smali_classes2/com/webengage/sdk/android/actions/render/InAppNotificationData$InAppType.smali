.class public final enum Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/InAppNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

.field public static final enum BLOCKING:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

.field public static final enum FOOTER:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

.field public static final enum HEADER:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

.field public static final enum MODAL:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    const/4 v1, 0x0

    const-string v2, "BLOCKING"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->BLOCKING:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    new-instance v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    const/4 v2, 0x1

    const-string v3, "HEADER"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->HEADER:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    new-instance v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    const/4 v3, 0x2

    const-string v4, "FOOTER"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->FOOTER:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    new-instance v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    const/4 v4, 0x3

    const-string v5, "MODAL"

    invoke-direct {v0, v5, v4}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->MODAL:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    sget-object v5, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->BLOCKING:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->HEADER:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->FOOTER:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->MODAL:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->$VALUES:[Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->$VALUES:[Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    return-object v0
.end method
