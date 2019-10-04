.class Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;
    }
.end annotation


# static fields
.field private static final NO_CARRIER:Ljava/lang/String; = "EMPTY_CARRIER"

.field private static final NO_NETWORK:I = -0x1


# instance fields
.field private accessibilityFontScale:F

.field private batteryLevel:I

.field private carrier:Ljava/lang/String;

.field private cellularNetworkType:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private orientation:Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;

.field private pluggedIn:Z

.field private resolution:F

.field private wifi:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/mapbox/android/telemetry/ak;->obtainCurrentDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->created:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/mapbox/android/telemetry/ak;->obtainBatteryLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->batteryLevel:I

    .line 38
    invoke-static {p1}, Lcom/mapbox/android/telemetry/ak;->isPluggedIn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->pluggedIn:Z

    .line 39
    invoke-static {p1}, Lcom/mapbox/android/telemetry/ak;->obtainCellularNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->cellularNetworkType:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;->getOrientation(I)Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->orientation:Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->accessibilityFontScale:F

    .line 42
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->obtainCellularCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->carrier:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->obtainDisplayDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->resolution:F

    .line 44
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->isConnectedToWifi(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->wifi:Z

    return-void
.end method

.method private isConnectedToWifi(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method private obtainCellularCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-string v0, "EMPTY_CARRIER"

    if-nez p1, :cond_0

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method private obtainDisplayDensity(Landroid/content/Context;)F
    .locals 2

    .line 60
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    return p1
.end method


# virtual methods
.method getAccessibilityFontScale()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->accessibilityFontScale:F

    return v0
.end method

.method getBatteryLevel()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->batteryLevel:I

    return v0
.end method

.method getCarrier()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method getCellularNetworkType()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->cellularNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method getCreated()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->created:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->orientation:Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;->getOrientation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getResolution()F
    .locals 1

    .line 144
    iget v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->resolution:F

    return v0
.end method

.method isPluggedIn()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->pluggedIn:Z

    return v0
.end method

.method isWifi()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->wifi:Z

    return v0
.end method

.method setAccessibilityFontScale(F)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->accessibilityFontScale:F

    return-void
.end method

.method setBatteryLevel(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->batteryLevel:I

    return-void
.end method

.method setCarrier(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->carrier:Ljava/lang/String;

    return-void
.end method

.method setCellularNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->cellularNetworkType:Ljava/lang/String;

    return-void
.end method

.method setCreated(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->created:Ljava/lang/String;

    return-void
.end method

.method setOrientation(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->orientation:Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState$Orientation;

    return-void
.end method

.method setPluggedIn(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->pluggedIn:Z

    return-void
.end method

.method setResolution(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->resolution:F

    return-void
.end method

.method setWifi(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;->wifi:Z

    return-void
.end method
