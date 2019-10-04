.class public Lcom/webengage/sdk/android/c;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/webengage/sdk/android/Analytics;

.field static b:Lcom/webengage/sdk/android/Analytics;

.field static c:Lcom/webengage/sdk/android/Analytics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a()Lcom/webengage/sdk/android/Analytics;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/c;->b:Lcom/webengage/sdk/android/Analytics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/e;

    invoke-direct {v0}, Lcom/webengage/sdk/android/e;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/c;->b:Lcom/webengage/sdk/android/Analytics;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/c;->b:Lcom/webengage/sdk/android/Analytics;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/c;->a:Lcom/webengage/sdk/android/Analytics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/webengage/sdk/android/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/webengage/sdk/android/z;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/webengage/sdk/android/z;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/webengage/sdk/android/aa;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/webengage/sdk/android/aa;-><init>(Lcom/webengage/sdk/android/f;Landroid/content/Context;)V

    new-instance v3, Lcom/webengage/sdk/android/d;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/webengage/sdk/android/d;-><init>(Landroid/content/Context;Lcom/webengage/sdk/android/f;Lcom/webengage/sdk/android/aa;Lcom/webengage/sdk/android/z;)V

    sput-object v3, Lcom/webengage/sdk/android/c;->a:Lcom/webengage/sdk/android/Analytics;

    :cond_0
    sget-object p0, Lcom/webengage/sdk/android/c;->a:Lcom/webengage/sdk/android/Analytics;

    return-object p0
.end method

.method protected static a(Ljava/util/Queue;)Lcom/webengage/sdk/android/Analytics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/webengage/sdk/android/ae;",
            ">;)",
            "Lcom/webengage/sdk/android/Analytics;"
        }
    .end annotation

    sget-object v0, Lcom/webengage/sdk/android/c;->c:Lcom/webengage/sdk/android/Analytics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/w;

    invoke-direct {v0, p0}, Lcom/webengage/sdk/android/w;-><init>(Ljava/util/Queue;)V

    sput-object v0, Lcom/webengage/sdk/android/c;->c:Lcom/webengage/sdk/android/Analytics;

    :cond_0
    sget-object p0, Lcom/webengage/sdk/android/c;->c:Lcom/webengage/sdk/android/Analytics;

    return-object p0
.end method
