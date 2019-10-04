.class final enum Lcom/webengage/sdk/android/utils/a/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/webengage/sdk/android/utils/a/d$a;

.field public static final enum b:Lcom/webengage/sdk/android/utils/a/d$a;

.field public static final enum c:Lcom/webengage/sdk/android/utils/a/d$a;

.field public static final enum d:Lcom/webengage/sdk/android/utils/a/d$a;

.field public static final enum e:Lcom/webengage/sdk/android/utils/a/d$a;

.field private static final synthetic f:[Lcom/webengage/sdk/android/utils/a/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/webengage/sdk/android/utils/a/d$a;

    const/4 v1, 0x0

    const-string v2, "MAX_AGE"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/utils/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/d$a;->a:Lcom/webengage/sdk/android/utils/a/d$a;

    new-instance v0, Lcom/webengage/sdk/android/utils/a/d$a;

    const/4 v2, 0x1

    const-string v3, "LAST_MODIFIED"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/utils/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/d$a;->b:Lcom/webengage/sdk/android/utils/a/d$a;

    new-instance v0, Lcom/webengage/sdk/android/utils/a/d$a;

    const/4 v3, 0x2

    const-string v4, "ETAG"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/utils/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/d$a;->c:Lcom/webengage/sdk/android/utils/a/d$a;

    new-instance v0, Lcom/webengage/sdk/android/utils/a/d$a;

    const/4 v4, 0x3

    const-string v5, "EXPIRES"

    invoke-direct {v0, v5, v4}, Lcom/webengage/sdk/android/utils/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/d$a;->d:Lcom/webengage/sdk/android/utils/a/d$a;

    new-instance v0, Lcom/webengage/sdk/android/utils/a/d$a;

    const/4 v5, 0x4

    const-string v6, "CACHE_CONTROL"

    invoke-direct {v0, v6, v5}, Lcom/webengage/sdk/android/utils/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/d$a;->e:Lcom/webengage/sdk/android/utils/a/d$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/a/d$a;

    sget-object v6, Lcom/webengage/sdk/android/utils/a/d$a;->a:Lcom/webengage/sdk/android/utils/a/d$a;

    aput-object v6, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/a/d$a;->b:Lcom/webengage/sdk/android/utils/a/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/utils/a/d$a;->c:Lcom/webengage/sdk/android/utils/a/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/webengage/sdk/android/utils/a/d$a;->d:Lcom/webengage/sdk/android/utils/a/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/webengage/sdk/android/utils/a/d$a;->e:Lcom/webengage/sdk/android/utils/a/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/webengage/sdk/android/utils/a/d$a;->f:[Lcom/webengage/sdk/android/utils/a/d$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/d$a;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/a/d$a;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/a/d$a;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/a/d$a;->f:[Lcom/webengage/sdk/android/utils/a/d$a;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/a/d$a;

    return-object v0
.end method
