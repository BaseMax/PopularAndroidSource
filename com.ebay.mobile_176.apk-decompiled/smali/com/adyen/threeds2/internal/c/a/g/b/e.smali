.class public Lcom/adyen/threeds2/internal/c/a/g/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/internal/c/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/g/b/e;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1d4

    .line 35
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x1d5

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    .line 47
    :cond_0
    new-instance p1, Lcom/adyen/threeds2/internal/c/a/c;

    sget-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->UNSUPPORTED_BY_PLATFORM_OR_DEPRECATED:Lcom/adyen/threeds2/internal/c/a/c$a;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/c/a/c;-><init>(Lcom/adyen/threeds2/internal/c/a/c$a;Ljava/lang/Throwable;)V

    throw p1
.end method
