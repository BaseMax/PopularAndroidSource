.class public Lcom/webengage/sdk/android/j;
.super Lcom/webengage/sdk/android/h;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V
    .locals 1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/LocationTrackingStrategy;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "location_tracking_strategy"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)V
    .locals 1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event_reporting_strategy"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "location_tracking_flag"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public m()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;
    .locals 3

    const-string v0, "webengage_prefs.txt"

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/j;->e(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->BUFFER:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_reporting_strategy"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 3

    const-string v0, "webengage_prefs.txt"

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/j;->e(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location_tracking_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()Lcom/webengage/sdk/android/LocationTrackingStrategy;
    .locals 3

    const-string v0, "webengage_prefs.txt"

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/j;->e(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_CITY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/LocationTrackingStrategy;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location_tracking_strategy"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/webengage/sdk/android/LocationTrackingStrategy;->valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object v0

    return-object v0
.end method
