.class abstract Lcom/adyen/threeds2/internal/c/a/a/b;
.super Lcom/adyen/threeds2/internal/c/a/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/c/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x18c

    .line 41
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18d

    .line 46
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_0

    return-object p1

    .line 53
    :cond_0
    new-instance p1, Lcom/adyen/threeds2/internal/c/a/c;

    sget-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->UNSUPPORTED_BY_PLATFORM_OR_DEPRECATED:Lcom/adyen/threeds2/internal/c/a/c$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/c/a/c;-><init>(Lcom/adyen/threeds2/internal/c/a/c$a;Ljava/lang/Throwable;)V

    throw p1
.end method

.method e(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/a/b;->d(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    return-object p1
.end method
