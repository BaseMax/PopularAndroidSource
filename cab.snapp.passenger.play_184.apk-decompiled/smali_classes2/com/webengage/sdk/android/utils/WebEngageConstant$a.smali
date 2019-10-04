.class public final enum Lcom/webengage/sdk/android/utils/WebEngageConstant$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/WebEngageConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/WebEngageConstant$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

.field public static final enum b:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

.field public static final enum c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

.field private static final synthetic d:[Lcom/webengage/sdk/android/utils/WebEngageConstant$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    const/4 v1, 0x0

    const-string v2, "NOTIFICATION"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    const/4 v2, 0x1

    const-string v3, "SURVEY"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    const/4 v3, 0x2

    const-string v4, "PUSH"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->d:[Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/WebEngageConstant$a;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/WebEngageConstant$a;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->d:[Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    return-object v0
.end method
