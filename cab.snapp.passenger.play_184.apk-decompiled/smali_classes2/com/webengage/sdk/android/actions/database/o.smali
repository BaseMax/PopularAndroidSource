.class public final enum Lcom/webengage/sdk/android/actions/database/o;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/actions/database/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/webengage/sdk/android/actions/database/o;

.field public static final enum b:Lcom/webengage/sdk/android/actions/database/o;

.field public static final enum c:Lcom/webengage/sdk/android/actions/database/o;

.field private static final synthetic d:[Lcom/webengage/sdk/android/actions/database/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/webengage/sdk/android/actions/database/o;

    const/4 v1, 0x0

    const-string v2, "INCREMENT"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/actions/database/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/o;->a:Lcom/webengage/sdk/android/actions/database/o;

    new-instance v0, Lcom/webengage/sdk/android/actions/database/o;

    const/4 v2, 0x1

    const-string v3, "FORCE_UPDATE"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    new-instance v0, Lcom/webengage/sdk/android/actions/database/o;

    const/4 v3, 0x2

    const-string v4, "OPT_UPDATE"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/actions/database/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/o;->c:Lcom/webengage/sdk/android/actions/database/o;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/webengage/sdk/android/actions/database/o;

    sget-object v4, Lcom/webengage/sdk/android/actions/database/o;->a:Lcom/webengage/sdk/android/actions/database/o;

    aput-object v4, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/actions/database/o;->c:Lcom/webengage/sdk/android/actions/database/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/webengage/sdk/android/actions/database/o;->d:[Lcom/webengage/sdk/android/actions/database/o;

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

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/database/o;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/actions/database/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/actions/database/o;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/actions/database/o;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/database/o;->d:[Lcom/webengage/sdk/android/actions/database/o;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/actions/database/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/actions/database/o;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/o;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
