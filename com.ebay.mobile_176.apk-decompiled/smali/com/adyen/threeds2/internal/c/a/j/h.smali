.class public final Lcom/adyen/threeds2/internal/c/a/j/h;
.super Lcom/adyen/threeds2/internal/c/a/j/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/c/a/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x208

    .line 34
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/j/h;->e(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected e(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/j/h;->c(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Lcom/adyen/threeds2/internal/c/a/c;

    sget-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->UNSUPPORTED_BY_PLATFORM_OR_DEPRECATED:Lcom/adyen/threeds2/internal/c/a/c$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/c/a/c;-><init>(Lcom/adyen/threeds2/internal/c/a/c$a;Ljava/lang/Throwable;)V

    throw p1
.end method
