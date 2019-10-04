.class public final Lcab/snapp/passenger/f/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcab/snapp/passenger/f/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcab/snapp/passenger/f/m;
    .locals 1

    .line 38
    sget-object v0, Lcab/snapp/passenger/f/m;->a:Lcab/snapp/passenger/f/m;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcab/snapp/passenger/f/m;

    invoke-direct {v0}, Lcab/snapp/passenger/f/m;-><init>()V

    sput-object v0, Lcab/snapp/passenger/f/m;->a:Lcab/snapp/passenger/f/m;

    .line 42
    :cond_0
    sget-object v0, Lcab/snapp/passenger/f/m;->a:Lcab/snapp/passenger/f/m;

    return-object v0
.end method


# virtual methods
.method public final handleDriverInfoNotification(IILcab/snapp/passenger/data/models/DriverInfo;Ljava/lang/String;[J)V
    .locals 14

    move/from16 v0, p2

    .line 98
    sget-object v1, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    if-eqz v1, :cond_4

    .line 101
    sget-object v1, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    invoke-virtual {v1}, Lcab/snapp/notificationmanager/a/a;->cancelAllNotifications()V

    .line 103
    new-instance v1, Landroid/content/Intent;

    const-string v2, "snapp://open"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/high16 v1, 0x8000000

    const/4 v3, 0x0

    .line 106
    invoke-virtual {v2, v3, v1}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v10

    .line 109
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00bb

    invoke-direct {v12, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 110
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00a9

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 114
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 118
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcab/snapp/passenger/data/models/DriverInfo;->getPlateNumber()Lcab/snapp/passenger/data/models/PlateNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/PlateNumber;->getType()I

    move-result v2

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcab/snapp/passenger/data/models/DriverInfo;->getPlateNumber()Lcab/snapp/passenger/data/models/PlateNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/PlateNumber;->getPartA()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual/range {p3 .. p3}, Lcab/snapp/passenger/data/models/DriverInfo;->getPlateNumber()Lcab/snapp/passenger/data/models/PlateNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/PlateNumber;->getPartB()Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual/range {p3 .. p3}, Lcab/snapp/passenger/data/models/DriverInfo;->getPlateNumber()Lcab/snapp/passenger/data/models/PlateNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcab/snapp/passenger/data/models/PlateNumber;->getIranId()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual/range {p3 .. p3}, Lcab/snapp/passenger/data/models/DriverInfo;->getPlateNumber()Lcab/snapp/passenger/data/models/PlateNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/PlateNumber;->getCharacter()Ljava/lang/String;

    move-result-object v8

    .line 1177
    new-instance v9, Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;-><init>(Landroid/content/Context;)V

    .line 1178
    invoke-virtual {v9, v1}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setViewFrame(Landroid/view/ViewGroup;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v9

    .line 1179
    invoke-virtual {v9, v2}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setZoneType(I)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v2

    .line 1180
    invoke-virtual {v2, v0}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setIsMotorcycle(Z)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v2

    .line 1181
    invoke-virtual {v2, v5}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setMainNumberPartA(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v2

    .line 1182
    invoke-virtual {v2, v6}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setMainNumberPartB(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v2

    .line 1183
    invoke-virtual {v2, v7}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setIranId(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v2

    .line 1184
    invoke-virtual {v2, v8}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setMainCharacter(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v2

    .line 1185
    invoke-virtual {v2}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->build()Lcab/snapp/snappuikit/SnappPlateNumberView;

    .line 2047
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2049
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x438d8000    # 283.0f

    invoke-static {v2, v4}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2050
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2051
    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    .line 2052
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2053
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2054
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 2055
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    .line 2054
    invoke-virtual {v1, v3, v3, v4, v6}, Landroid/view/View;->layout(IIII)V

    .line 2056
    invoke-virtual {v1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    const v1, 0x7f0a013b

    const-string v3, "setImageBitmap"

    .line 126
    invoke-virtual {v12, v1, v3, v2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    const v1, 0x7f0a013c

    move-object/from16 v8, p4

    .line 129
    invoke-virtual {v12, v1, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a013a

    if-nez v0, :cond_3

    .line 133
    invoke-virtual/range {p3 .. p3}, Lcab/snapp/passenger/data/models/DriverInfo;->getVehicleModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    const-string v0, ""

    .line 137
    invoke-virtual {v12, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 140
    :goto_3
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/bumptech/glide/h;->asBitmap()Lcom/bumptech/glide/g;

    move-result-object v0

    .line 142
    invoke-virtual/range {p3 .. p3}, Lcab/snapp/passenger/data/models/DriverInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->load(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/e/h;->circleCropTransform()Lcom/bumptech/glide/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/bumptech/glide/g;->submit()Lcom/bumptech/glide/e/c;

    move-result-object v1

    .line 146
    :try_start_0
    invoke-interface {v1}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 150
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 154
    :goto_5
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    const v1, 0x7f0a0139

    .line 157
    invoke-virtual {v12, v1, v3, v0}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 159
    sget-object v4, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    const/4 v5, 0x0

    const v9, 0x7f08012a

    const/4 v13, 0x0

    move v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v13}, Lcab/snapp/notificationmanager/a/a;->showNotificationWithCustomLayoutOnRideChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;[JLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    :cond_4
    return-void
.end method

.method public final handleNotification(ILjava/lang/String;Ljava/lang/String;[J)V
    .locals 11

    .line 74
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    invoke-virtual {v0}, Lcab/snapp/notificationmanager/a/a;->cancelAllNotifications()V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "snapp://open"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    .line 83
    invoke-virtual {v1, v0, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v9

    .line 86
    sget-object v3, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    const/4 v4, 0x0

    const v8, 0x7f08012a

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v10, p4

    .line 87
    invoke-virtual/range {v3 .. v10}, Lcab/snapp/notificationmanager/a/a;->showNotificationOnRideChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;[J)V

    :cond_0
    return-void
.end method
