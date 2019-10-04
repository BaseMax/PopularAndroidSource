.class Lcom/webengage/sdk/android/ao;
.super Lcom/webengage/sdk/android/AbstractWebEngage;


# instance fields
.field a:Lcom/webengage/sdk/android/WebEngageConfig;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/webengage/sdk/android/AbstractWebEngage;-><init>()V

    new-instance v0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-direct {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/ao;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    return-void
.end method

.method constructor <init>(Lcom/webengage/sdk/android/WebEngageConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/webengage/sdk/android/AbstractWebEngage;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/ao;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/location/Location;Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/webengage/sdk/android/q$a;Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method public analytics()Lcom/webengage/sdk/android/Analytics;
    .locals 1

    invoke-static {}, Lcom/webengage/sdk/android/c;->a()Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected b(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected c(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected c(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected c(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected d(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected e(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method protected f(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method public filterCustomEvents(Z)V
    .locals 0

    return-void
.end method

.method public getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/ao;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    return-object v0
.end method

.method public receive(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public receive(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public receive(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public ruleExecutor()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;
    .locals 1

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->b()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v0

    return-object v0
.end method

.method public setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)V
    .locals 0

    return-void
.end method

.method public setEveryActivityIsScreen(Z)V
    .locals 0

    return-void
.end method

.method public setLocationTracking(Z)V
    .locals 0

    return-void
.end method

.method public setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V
    .locals 0

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    return-void
.end method

.method public setRegistrationID(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRegistrationID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public user()Lcom/webengage/sdk/android/User;
    .locals 1

    invoke-static {}, Lcom/webengage/sdk/android/aj;->a()Lcom/webengage/sdk/android/User;

    move-result-object v0

    return-object v0
.end method
