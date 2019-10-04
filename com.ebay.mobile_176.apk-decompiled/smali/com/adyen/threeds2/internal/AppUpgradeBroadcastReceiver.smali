.class public Lcom/adyen/threeds2/internal/AppUpgradeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 37
    invoke-static {}, Lcom/adyen/threeds2/internal/j/b;->a()Lcom/adyen/threeds2/internal/j/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/adyen/threeds2/internal/e;->a(Landroid/content/Context;Lcom/adyen/threeds2/internal/j/a;)Lcom/adyen/threeds2/internal/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/e;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
