.class public final enum Lcom/webengage/sdk/android/LocationTrackingStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/LocationTrackingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/LocationTrackingStrategy;

.field public static final enum ACCURACY_BEST:Lcom/webengage/sdk/android/LocationTrackingStrategy;

.field public static final enum ACCURACY_CITY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

.field public static final enum ACCURACY_COUNTRY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

.field public static final enum DISABLED:Lcom/webengage/sdk/android/LocationTrackingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 v1, 0x0

    const-string v2, "ACCURACY_BEST"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/LocationTrackingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_BEST:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    new-instance v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 v2, 0x1

    const-string v3, "ACCURACY_CITY"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/LocationTrackingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_CITY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    new-instance v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 v3, 0x2

    const-string v4, "ACCURACY_COUNTRY"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/LocationTrackingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_COUNTRY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    new-instance v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 v4, 0x3

    const-string v5, "DISABLED"

    invoke-direct {v0, v5, v4}, Lcom/webengage/sdk/android/LocationTrackingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->DISABLED:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/webengage/sdk/android/LocationTrackingStrategy;

    sget-object v5, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_BEST:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    aput-object v5, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_CITY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_COUNTRY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/webengage/sdk/android/LocationTrackingStrategy;->DISABLED:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->$VALUES:[Lcom/webengage/sdk/android/LocationTrackingStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/LocationTrackingStrategy;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/LocationTrackingStrategy;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->$VALUES:[Lcom/webengage/sdk/android/LocationTrackingStrategy;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/LocationTrackingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/LocationTrackingStrategy;

    return-object v0
.end method
