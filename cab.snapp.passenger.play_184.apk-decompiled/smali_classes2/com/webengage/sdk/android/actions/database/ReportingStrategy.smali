.class public final enum Lcom/webengage/sdk/android/actions/database/ReportingStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/actions/database/ReportingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

.field public static final enum BUFFER:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

.field public static final enum FORCE_SYNC:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    const/4 v1, 0x0

    const-string v2, "BUFFER"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->BUFFER:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    new-instance v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    const/4 v2, 0x1

    const-string v3, "FORCE_SYNC"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->FORCE_SYNC:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    sget-object v3, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->BUFFER:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    aput-object v3, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->FORCE_SYNC:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->$VALUES:[Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/database/ReportingStrategy;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/actions/database/ReportingStrategy;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->$VALUES:[Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    return-object v0
.end method
