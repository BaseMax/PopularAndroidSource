.class public abstract Lcom/webengage/sdk/android/AbstractWebEngage;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract a(Landroid/content/Intent;)V
.end method

.method protected abstract a(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract a(Landroid/location/Location;Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract a(Lcom/webengage/sdk/android/q$a;Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract analytics()Lcom/webengage/sdk/android/Analytics;
.end method

.method protected abstract b(Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract b(Landroid/content/Intent;)V
.end method

.method protected abstract b(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract c(Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract c(Landroid/content/Intent;)V
.end method

.method protected abstract c(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract d(Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract e(Landroid/content/BroadcastReceiver;)V
.end method

.method protected abstract f(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract filterCustomEvents(Z)V
.end method

.method public abstract getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;
.end method

.method public abstract receive(Landroid/content/Intent;)V
.end method

.method public abstract receive(Landroid/os/Bundle;)V
.end method

.method public abstract receive(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ruleExecutor()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;
.end method

.method public abstract setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)V
.end method

.method public abstract setEveryActivityIsScreen(Z)V
.end method

.method public abstract setLocationTracking(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V
.end method

.method public abstract setLogLevel(I)V
.end method

.method public abstract setRegistrationID(Ljava/lang/String;)V
.end method

.method public abstract setRegistrationID(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract user()Lcom/webengage/sdk/android/User;
.end method
