.class public final Lcom/mapbox/android/telemetry/TelemetryEnabler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/telemetry/TelemetryEnabler$State;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/android/telemetry/TelemetryEnabler$State;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mapbox/android/telemetry/TelemetryEnabler$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/mapbox/android/telemetry/TelemetryEnabler$1;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$1;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a:Ljava/util/Map;

    .line 30
    new-instance v0, Lcom/mapbox/android/telemetry/TelemetryEnabler$2;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$2;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->c:Z

    .line 38
    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    iput-object v1, p0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->d:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    .line 41
    iput-boolean v0, p0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->c:Z

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    .line 89
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 93
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.mapbox.EnableEvents"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public static retrieveTelemetryStateFromPreferences()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;
    .locals 3

    .line 45
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->b:Ljava/util/Map;

    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-virtual {v1}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/ak;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->ENABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    .line 51
    invoke-virtual {v1}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapboxTelemetryState"

    .line 50
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/mapbox/android/telemetry/TelemetryEnabler;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    return-object v0
.end method

.method public static updateTelemetryState(Lcom/mapbox/android/telemetry/TelemetryEnabler$State;)Lcom/mapbox/android/telemetry/TelemetryEnabler$State;
    .locals 3

    .line 57
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    .line 61
    :cond_0
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/ak;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapboxTelemetryState"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method


# virtual methods
.method final a()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->c:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->retrieveTelemetryStateFromPreferences()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->d:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    return-object v0
.end method
