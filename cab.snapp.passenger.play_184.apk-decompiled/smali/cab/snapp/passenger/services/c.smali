.class public final Lcab/snapp/passenger/services/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/services/a;
.implements Lcab/snapp/passenger/services/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V
    .locals 11

    .line 50
    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "event_type"

    const-string v2, ""

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "driver_accepted_ride"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "driver_arrived"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    :cond_0
    new-instance v8, Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-direct {v8}, Lcab/snapp/passenger/data/models/DriverInfo;-><init>()V

    const-string v3, "plate_data"

    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v5, Lcab/snapp/passenger/data/models/PlateNumber;

    invoke-direct {v5}, Lcab/snapp/passenger/data/models/PlateNumber;-><init>()V

    .line 67
    array-length v6, v3

    const/4 v7, 0x4

    if-lez v6, :cond_1

    const/4 v6, 0x0

    .line 69
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcab/snapp/passenger/data/models/PlateNumber;->setType(I)V

    const/4 v6, 0x1

    .line 70
    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Lcab/snapp/passenger/data/models/PlateNumber;->setPartA(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 71
    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Lcab/snapp/passenger/data/models/PlateNumber;->setCharacter(Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 72
    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Lcab/snapp/passenger/data/models/PlateNumber;->setPartB(Ljava/lang/String;)V

    .line 73
    aget-object v3, v3, v7

    invoke-virtual {v5, v3}, Lcab/snapp/passenger/data/models/PlateNumber;->setIranId(Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-virtual {v8, v5}, Lcab/snapp/passenger/data/models/DriverInfo;->setPlateNumber(Lcab/snapp/passenger/data/models/PlateNumber;)V

    const-string v3, "service_type"

    const-string v6, "1"

    .line 76
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "car_model"

    .line 77
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcab/snapp/passenger/data/models/DriverInfo;->setVehicleModel(Ljava/lang/String;)V

    const-string v6, "driver_image"

    .line 78
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcab/snapp/passenger/data/models/DriverInfo;->setImageUrl(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8, v5}, Lcab/snapp/passenger/data/models/DriverInfo;->setPlateNumber(Lcab/snapp/passenger/data/models/PlateNumber;)V

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1389

    const/16 v6, 0x1389

    goto :goto_0

    :cond_2
    const/16 v0, 0x138a

    const/16 v6, 0x138a

    .line 83
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 85
    invoke-static {}, Lcab/snapp/passenger/f/m;->getInstance()Lcab/snapp/passenger/f/m;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getContentText()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [J

    fill-array-data v10, :array_0

    move v7, v0

    invoke-virtual/range {v5 .. v10}, Lcab/snapp/passenger/f/m;->handleDriverInfoNotification(IILcab/snapp/passenger/data/models/DriverInfo;Ljava/lang/String;[J)V

    return-void

    .line 89
    :cond_3
    invoke-static {}, Lcab/snapp/passenger/f/m;->getInstance()Lcab/snapp/passenger/f/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getContentText()Ljava/lang/String;

    move-result-object p0

    new-array v1, v7, [J

    fill-array-data v1, :array_1

    invoke-virtual {v0, v6, v2, p0, v1}, Lcab/snapp/passenger/f/m;->handleNotification(ILjava/lang/String;Ljava/lang/String;[J)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
    .end array-data
.end method


# virtual methods
.method public final onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z
    .locals 0

    .line 37
    invoke-static {p2}, Lcab/snapp/passenger/services/c;->a(Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onRerender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Landroid/os/Bundle;)Z
    .locals 0

    .line 44
    invoke-static {p2}, Lcab/snapp/passenger/services/c;->a(Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    const/4 p1, 0x1

    return p1
.end method
