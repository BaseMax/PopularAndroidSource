.class public final Lcom/adyen/threeds2/internal/c/a/i/r;
.super Lcom/adyen/threeds2/internal/c/a/i/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/c/a/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1f5

    .line 33
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

    .line 29
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/i/r;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/Integer;
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

    .line 39
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/i/r;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method