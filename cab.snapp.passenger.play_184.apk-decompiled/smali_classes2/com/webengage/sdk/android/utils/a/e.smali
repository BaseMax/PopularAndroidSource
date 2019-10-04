.class public final enum Lcom/webengage/sdk/android/utils/a/e;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/a/e;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/webengage/sdk/android/utils/a/e;

.field public static final enum b:Lcom/webengage/sdk/android/utils/a/e;

.field public static final enum c:Lcom/webengage/sdk/android/utils/a/e;

.field public static final enum d:Lcom/webengage/sdk/android/utils/a/e;

.field private static final synthetic f:[Lcom/webengage/sdk/android/utils/a/e;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/webengage/sdk/android/utils/a/e;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1, v2}, Lcom/webengage/sdk/android/utils/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    new-instance v0, Lcom/webengage/sdk/android/utils/a/e;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2, v3}, Lcom/webengage/sdk/android/utils/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/e;->b:Lcom/webengage/sdk/android/utils/a/e;

    new-instance v0, Lcom/webengage/sdk/android/utils/a/e;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3, v4}, Lcom/webengage/sdk/android/utils/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/e;->c:Lcom/webengage/sdk/android/utils/a/e;

    new-instance v0, Lcom/webengage/sdk/android/utils/a/e;

    const/4 v4, 0x3

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4, v5}, Lcom/webengage/sdk/android/utils/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/e;->d:Lcom/webengage/sdk/android/utils/a/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/a/e;

    sget-object v5, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    aput-object v5, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/a/e;->b:Lcom/webengage/sdk/android/utils/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/utils/a/e;->c:Lcom/webengage/sdk/android/utils/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/webengage/sdk/android/utils/a/e;->d:Lcom/webengage/sdk/android/utils/a/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/webengage/sdk/android/utils/a/e;->f:[Lcom/webengage/sdk/android/utils/a/e;

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

    iput-object p3, p0, Lcom/webengage/sdk/android/utils/a/e;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/e;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/a/e;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/a/e;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/a/e;->f:[Lcom/webengage/sdk/android/utils/a/e;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/a/e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/e;->e:Ljava/lang/String;

    return-object v0
.end method
