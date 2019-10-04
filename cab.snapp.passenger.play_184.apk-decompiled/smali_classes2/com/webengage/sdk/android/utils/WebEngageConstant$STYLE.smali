.class public final enum Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/WebEngageConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STYLE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

.field public static final enum BIG_PICTURE:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

.field public static final enum BIG_TEXT:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

.field public static final enum CAROUSEL_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

.field public static final enum INBOX:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

.field public static final enum RATING_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    const/4 v1, 0x0

    const-string v2, "BIG_PICTURE"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->BIG_PICTURE:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    const/4 v2, 0x1

    const-string v3, "BIG_TEXT"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->BIG_TEXT:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    const/4 v3, 0x2

    const-string v4, "INBOX"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->INBOX:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    const/4 v4, 0x3

    const-string v5, "CAROUSEL_V1"

    invoke-direct {v0, v5, v4}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->CAROUSEL_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    const/4 v5, 0x4

    const-string v6, "RATING_V1"

    invoke-direct {v0, v6, v5}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->RATING_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    sget-object v6, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->BIG_PICTURE:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    aput-object v6, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->BIG_TEXT:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->INBOX:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->CAROUSEL_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->RATING_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->$VALUES:[Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->$VALUES:[Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    return-object v0
.end method
