.class public Lcom/apptentive/android/sdk/storage/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static generateNewDevice(Landroid/content/Context;)Lcom/apptentive/android/sdk/storage/Device;
    .locals 4

    .line 30
    new-instance v0, Lcom/apptentive/android/sdk/storage/Device;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/Device;-><init>()V

    const-string v1, "Android"

    .line 33
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setOsName(Ljava/lang/String;)V

    .line 34
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setOsVersion(Ljava/lang/String;)V

    .line 35
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setOsBuild(Ljava/lang/String;)V

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setOsApiLevel(I)V

    .line 37
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setManufacturer(Ljava/lang/String;)V

    .line 38
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setModel(Ljava/lang/String;)V

    .line 39
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setBoard(Ljava/lang/String;)V

    .line 40
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setProduct(Ljava/lang/String;)V

    .line 41
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setBrand(Ljava/lang/String;)V

    .line 42
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setCpu(Ljava/lang/String;)V

    .line 43
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setDevice(Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setUuid(Ljava/lang/String;)V

    .line 45
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setBuildType(Ljava/lang/String;)V

    .line 46
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setBuildId(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/model/Configuration;->load()Lcom/apptentive/android/sdk/model/Configuration;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/model/Configuration;->isCollectingAdID()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-static {}, Lcom/apptentive/android/sdk/util/AdvertiserManager;->getAdvertisingIdClientInfo()Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/storage/Device;->setAdvertiserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "Advertising ID tracking is not available or limited"

    .line 56
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Exception while collecting advertising ID"

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-string v1, "phone"

    .line 65
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 66
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setCarrier(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Device;->setCurrentCarrier(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Constants;->networkTypeAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Device;->setNetworkType(Ljava/lang/String;)V

    .line 72
    :try_start_1
    const-class p0, Landroid/os/Build;

    const-string v1, "BOOTLOADER"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Device;->setBootloaderVersion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 74
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 76
    :goto_1
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Device;->setRadioVersion(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Device;->setLocaleCountryCode(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Device;->setLocaleLanguageCode(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Device;->setLocaleRaw(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Device;->setUtcOffset(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDiffPayload(Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/Device;)Lcom/apptentive/android/sdk/model/DevicePayload;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 91
    :cond_0
    new-instance v1, Lcom/apptentive/android/sdk/model/DevicePayload;

    invoke-direct {v1}, Lcom/apptentive/android/sdk/model/DevicePayload;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setUuid(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2
    if-eqz p0, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getOsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 100
    :cond_3
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setOsName(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_4
    if-eqz p0, :cond_5

    .line 104
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 105
    :cond_5
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setOsVersion(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_6
    if-eqz p0, :cond_7

    .line 109
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getOsBuild()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsBuild()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 110
    :cond_7
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsBuild()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setOsBuild(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_8
    if-eqz p0, :cond_9

    .line 114
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getOsApiLevel()I

    move-result v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsApiLevel()I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 115
    :cond_9
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsApiLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setOsApiLevel(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_a
    if-eqz p0, :cond_b

    .line 119
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 120
    :cond_b
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setManufacturer(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_c
    if-eqz p0, :cond_d

    .line 124
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 125
    :cond_d
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setModel(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_e
    if-eqz p0, :cond_f

    .line 129
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getBoard()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBoard()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 130
    :cond_f
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBoard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setBoard(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_10
    if-eqz p0, :cond_11

    .line 134
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getProduct()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getProduct()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 135
    :cond_11
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setProduct(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_12
    if-eqz p0, :cond_13

    .line 139
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBrand()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 140
    :cond_13
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setBrand(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_14
    if-eqz p0, :cond_15

    .line 144
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getCpu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCpu()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 145
    :cond_15
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCpu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setCpu(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_16
    if-eqz p0, :cond_17

    .line 149
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 150
    :cond_17
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setDevice(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_18
    if-eqz p0, :cond_19

    .line 154
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 155
    :cond_19
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setCarrier(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1a
    if-eqz p0, :cond_1b

    .line 159
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 160
    :cond_1b
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setCurrentCarrier(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1c
    if-eqz p0, :cond_1d

    .line 164
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getNetworkType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 165
    :cond_1d
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setNetworkType(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1e
    if-eqz p0, :cond_1f

    .line 169
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getBuildType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBuildType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 170
    :cond_1f
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBuildType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setBuildType(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_20
    if-eqz p0, :cond_21

    .line 174
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getBuildId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBuildId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 175
    :cond_21
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBuildId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setBuildId(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_22
    if-eqz p0, :cond_23

    .line 179
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getBootloaderVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBootloaderVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 180
    :cond_23
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBootloaderVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setBootloaderVersion(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_24
    if-eqz p0, :cond_25

    .line 184
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getRadioVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getRadioVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 185
    :cond_25
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setRadioVersion(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_26
    if-eqz p0, :cond_27

    .line 189
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 190
    :cond_27
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 191
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/CustomData;->toJson()Lcom/apptentive/android/sdk/model/CustomData;

    move-result-object v2

    goto :goto_0

    :cond_28
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setCustomData(Lcom/apptentive/android/sdk/model/CustomData;)V

    const/4 v2, 0x1

    :cond_29
    if-eqz p0, :cond_2a

    .line 195
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 196
    :cond_2a
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setLocaleCountryCode(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2b
    if-eqz p0, :cond_2c

    .line 200
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 201
    :cond_2c
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setLocaleLanguageCode(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2d
    if-eqz p0, :cond_2e

    .line 205
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleRaw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleRaw()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 206
    :cond_2e
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleRaw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setLocaleRaw(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2f
    if-eqz p0, :cond_30

    .line 210
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getUtcOffset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getUtcOffset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 211
    :cond_30
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getUtcOffset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setUtcOffset(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_31
    if-eqz p0, :cond_32

    .line 215
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getAdvertiserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 216
    :cond_32
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getAdvertiserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/DevicePayload;->setAdvertiserId(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_33
    if-eqz p0, :cond_34

    .line 220
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Device;->getIntegrationConfig()Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    move-result-object p0

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getIntegrationConfig()Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/apptentive/android/sdk/storage/DeviceManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    .line 221
    :cond_34
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getIntegrationConfig()Lcom/apptentive/android/sdk/storage/IntegrationConfig;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 222
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/IntegrationConfig;->toJson()Lcom/apptentive/android/sdk/model/CustomData;

    move-result-object p0

    goto :goto_1

    :cond_35
    move-object p0, v0

    :goto_1
    invoke-virtual {v1, p0}, Lcom/apptentive/android/sdk/model/DevicePayload;->setIntegrationConfig(Lcom/apptentive/android/sdk/model/CustomData;)V

    const/4 v2, 0x1

    :cond_36
    if-eqz v2, :cond_37

    move-object v0, v1

    :cond_37
    return-object v0
.end method
