.class final Lcom/adjust/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field a:Ljava/lang/String;

.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/adjust/sdk/a;->D:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 67
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/adjust/sdk/Util;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v3

    .line 69
    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/a;->a(Landroid/content/Context;)V

    .line 1130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 74
    iput-object v4, p0, Lcom/adjust/sdk/a;->h:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/adjust/sdk/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adjust/sdk/a;->i:Ljava/lang/String;

    and-int/lit8 v4, v1, 0xf

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v4, v8, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    const-string v10, "tablet"

    goto :goto_0

    :cond_1
    const-string v10, "phone"

    .line 76
    :goto_0
    iput-object v10, p0, Lcom/adjust/sdk/a;->j:Ljava/lang/String;

    .line 1160
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 77
    iput-object v10, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    .line 1164
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 78
    iput-object v10, p0, Lcom/adjust/sdk/a;->l:Ljava/lang/String;

    const-string v10, "android"

    .line 79
    iput-object v10, p0, Lcom/adjust/sdk/a;->m:Ljava/lang/String;

    .line 1172
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 80
    iput-object v10, p0, Lcom/adjust/sdk/a;->n:Ljava/lang/String;

    .line 1176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 81
    iput-object v10, p0, Lcom/adjust/sdk/a;->o:Ljava/lang/String;

    .line 1180
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 82
    iput-object v10, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    .line 1184
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 83
    iput-object v3, p0, Lcom/adjust/sdk/a;->q:Ljava/lang/String;

    const-string v3, "normal"

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    move-object v4, v9

    goto :goto_1

    :cond_2
    const-string v4, "xlarge"

    goto :goto_1

    :cond_3
    const-string v4, "large"

    goto :goto_1

    :cond_4
    move-object v4, v3

    goto :goto_1

    :cond_5
    const-string v4, "small"

    .line 84
    :goto_1
    iput-object v4, p0, Lcom/adjust/sdk/a;->r:Ljava/lang/String;

    and-int/lit8 v1, v1, 0x30

    const/16 v4, 0x10

    if-eq v1, v4, :cond_7

    const/16 v3, 0x20

    if-eq v1, v3, :cond_6

    move-object v1, v9

    goto :goto_2

    :cond_6
    const-string v1, "long"

    goto :goto_2

    :cond_7
    move-object v1, v3

    .line 85
    :goto_2
    iput-object v1, p0, Lcom/adjust/sdk/a;->s:Ljava/lang/String;

    .line 1226
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x8c

    if-ge v1, v3, :cond_9

    const-string v9, "low"

    goto :goto_3

    :cond_9
    const/16 v3, 0xc8

    if-le v1, v3, :cond_a

    const-string v9, "high"

    goto :goto_3

    :cond_a
    const-string v9, "medium"

    .line 86
    :goto_3
    iput-object v9, p0, Lcom/adjust/sdk/a;->t:Ljava/lang/String;

    .line 1241
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/adjust/sdk/a;->u:Ljava/lang/String;

    .line 1245
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    iput-object v1, p0, Lcom/adjust/sdk/a;->v:Ljava/lang/String;

    const-string v1, "android4.12.1"

    if-nez p2, :cond_b

    goto :goto_4

    :cond_b
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object v1, v2, v8

    const-string p2, "%s@%s"

    .line 1252
    invoke-static {p2, v2}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_4
    iput-object v1, p0, Lcom/adjust/sdk/a;->g:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/adjust/sdk/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/a;->f:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/a;->C:Ljava/util/Map;

    .line 2192
    sget-object p2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/adjust/sdk/a;->w:Ljava/lang/String;

    .line 2300
    invoke-static {}, Lcom/adjust/sdk/Util;->getSupportedAbis()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 2304
    array-length v1, p2

    if-nez v1, :cond_c

    goto :goto_5

    .line 2308
    :cond_c
    aget-object p2, p2, v0

    goto :goto_6

    .line 2305
    :cond_d
    :goto_5
    invoke-static {}, Lcom/adjust/sdk/Util;->getCpuAbi()Ljava/lang/String;

    move-result-object p2

    .line 93
    :goto_6
    iput-object p2, p0, Lcom/adjust/sdk/a;->x:Ljava/lang/String;

    .line 3188
    sget-object p2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/adjust/sdk/a;->y:Ljava/lang/String;

    .line 3312
    invoke-static {}, Lcom/adjust/sdk/Util;->getVmInstructionSet()Ljava/lang/String;

    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/adjust/sdk/a;->z:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/adjust/sdk/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/a;->A:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/adjust/sdk/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/a;->B:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/adjust/sdk/Util;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 138
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ":"

    const-string v1, ""

    .line 269
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lcom/adjust/sdk/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, "aid"

    const/4 v1, 0x0

    .line 277
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 278
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object v0, v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 281
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 286
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 291
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 318
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 321
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 331
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 334
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 3

    .line 101
    invoke-static {p1}, Lcom/adjust/sdk/Util;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->b:Ljava/lang/Boolean;

    .line 102
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->a:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/adjust/sdk/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adjust/sdk/a;->D:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 105
    invoke-static {p1, v0}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Missing permission: ACCESS_WIFI_STATE"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/a;->c:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/adjust/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->d:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/a;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/adjust/sdk/a;->D:Z

    :cond_1
    return-void
.end method
