.class public final enum Lcom/webengage/sdk/android/utils/WebEngageConstant$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/WebEngageConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/WebEngageConstant$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

.field public static final enum b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

.field public static final enum c:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

.field private static final synthetic e:[Lcom/webengage/sdk/android/utils/WebEngageConstant$c;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    const/4 v1, 0x0

    const-string v2, "PAGE_RULE"

    const-string v3, "pageRuleCode"

    invoke-direct {v0, v2, v1, v3}, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    const/4 v2, 0x1

    const-string v3, "SESSION_RULE"

    const-string v4, "sessionRuleCode"

    invoke-direct {v0, v3, v2, v4}, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    const/4 v3, 0x2

    const-string v4, "EVENT_RULE"

    const-string v5, "eventRuleCode"

    invoke-direct {v0, v4, v3, v5}, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    aput-object v4, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->e:[Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/WebEngageConstant$c;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/WebEngageConstant$c;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->e:[Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->d:Ljava/lang/String;

    return-object v0
.end method
