.class public final enum Lcom/webengage/sdk/android/utils/Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/utils/Gender;

.field public static final enum FEMALE:Lcom/webengage/sdk/android/utils/Gender;

.field public static final enum MALE:Lcom/webengage/sdk/android/utils/Gender;

.field public static final enum OTHER:Lcom/webengage/sdk/android/utils/Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/webengage/sdk/android/utils/Gender;

    const/4 v1, 0x0

    const-string v2, "MALE"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/utils/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/Gender;->MALE:Lcom/webengage/sdk/android/utils/Gender;

    new-instance v0, Lcom/webengage/sdk/android/utils/Gender;

    const/4 v2, 0x1

    const-string v3, "FEMALE"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/utils/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/Gender;->FEMALE:Lcom/webengage/sdk/android/utils/Gender;

    new-instance v0, Lcom/webengage/sdk/android/utils/Gender;

    const/4 v3, 0x2

    const-string v4, "OTHER"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/utils/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/Gender;->OTHER:Lcom/webengage/sdk/android/utils/Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/Gender;

    sget-object v4, Lcom/webengage/sdk/android/utils/Gender;->MALE:Lcom/webengage/sdk/android/utils/Gender;

    aput-object v4, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/Gender;->FEMALE:Lcom/webengage/sdk/android/utils/Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/utils/Gender;->OTHER:Lcom/webengage/sdk/android/utils/Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcom/webengage/sdk/android/utils/Gender;->$VALUES:[Lcom/webengage/sdk/android/utils/Gender;

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

.method public static valueByString(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/Gender;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/webengage/sdk/android/utils/Gender;->valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/Gender;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/Gender;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/Gender;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/Gender;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/Gender;->$VALUES:[Lcom/webengage/sdk/android/utils/Gender;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/Gender;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/Gender;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
