.class Lcom/webengage/sdk/android/aj;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/webengage/sdk/android/User;

.field static b:Lcom/webengage/sdk/android/User;

.field static c:Lcom/webengage/sdk/android/User;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a()Lcom/webengage/sdk/android/User;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/aj;->b:Lcom/webengage/sdk/android/User;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/al;

    invoke-direct {v0}, Lcom/webengage/sdk/android/al;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/aj;->b:Lcom/webengage/sdk/android/User;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/aj;->b:Lcom/webengage/sdk/android/User;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/webengage/sdk/android/Analytics;)Lcom/webengage/sdk/android/User;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/aj;->a:Lcom/webengage/sdk/android/User;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/ak;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/webengage/sdk/android/ak;-><init>(Landroid/content/Context;Lcom/webengage/sdk/android/Analytics;)V

    sput-object v0, Lcom/webengage/sdk/android/aj;->a:Lcom/webengage/sdk/android/User;

    :cond_0
    sget-object p0, Lcom/webengage/sdk/android/aj;->a:Lcom/webengage/sdk/android/User;

    return-object p0
.end method

.method protected static a(Ljava/util/Queue;)Lcom/webengage/sdk/android/User;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/webengage/sdk/android/ae;",
            ">;)",
            "Lcom/webengage/sdk/android/User;"
        }
    .end annotation

    sget-object v0, Lcom/webengage/sdk/android/aj;->c:Lcom/webengage/sdk/android/User;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/x;

    invoke-direct {v0, p0}, Lcom/webengage/sdk/android/x;-><init>(Ljava/util/Queue;)V

    sput-object v0, Lcom/webengage/sdk/android/aj;->c:Lcom/webengage/sdk/android/User;

    :cond_0
    sget-object p0, Lcom/webengage/sdk/android/aj;->c:Lcom/webengage/sdk/android/User;

    return-object p0
.end method
