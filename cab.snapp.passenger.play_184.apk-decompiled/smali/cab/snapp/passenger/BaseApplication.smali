.class public Lcab/snapp/passenger/BaseApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "SourceFile"


# static fields
.field private static c:Landroid/content/Context;

.field private static d:Lcab/snapp/passenger/a;

.field public static notificationManager:Lcab/snapp/notificationmanager/a/a;

.field public static ridePushRenderer:Lcab/snapp/passenger/services/c;


# instance fields
.field a:Lcab/snapp/b/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/data_access_layer/network/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:Lcab/snapp/passenger/e/a/a;

.field private f:Lcab/snapp/passenger/e/a/c;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcab/snapp/passenger/BaseApplication;->g:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 242
    invoke-static {}, Lcab/snapp/passenger/e/a/b;->builder()Lcab/snapp/passenger/e/a/a$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/e/b/a;

    invoke-direct {v1}, Lcab/snapp/passenger/e/b/a;-><init>()V

    .line 243
    invoke-interface {v0, v1}, Lcab/snapp/passenger/e/a/a$a;->appModule(Lcab/snapp/passenger/e/b/a;)Lcab/snapp/passenger/e/a/a$a;

    move-result-object v0

    .line 244
    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a$a;->context(Landroid/app/Application;)Lcab/snapp/passenger/e/a/a$a;

    move-result-object v0

    const-class v1, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;

    .line 245
    invoke-interface {v0, v1}, Lcab/snapp/passenger/e/a/a$a;->authenticatorActivityClass(Ljava/lang/Class;)Lcab/snapp/passenger/e/a/a$a;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Lcab/snapp/passenger/e/a/a$a;->build()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/BaseApplication;->e:Lcab/snapp/passenger/e/a/a;

    return-void
.end method

.method public static doRestart()V
    .locals 7

    .line 2065
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 112
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x4000000

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x36870

    const/high16 v3, 0x10000000

    .line 127
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;
    .locals 0

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/BaseApplication;

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 91
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->d:Lcab/snapp/passenger/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->d:Lcab/snapp/passenger/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 1065
    :cond_0
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 77
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->d:Lcab/snapp/passenger/a;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcab/snapp/passenger/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setupNotificationManager(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    .line 70
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 71
    new-instance v1, Lcab/snapp/notificationmanager/a/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcab/snapp/notificationmanager/a/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v1, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    return-void
.end method


# virtual methods
.method public getAppComponent()Lcab/snapp/passenger/e/a/a;
    .locals 1

    .line 260
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->e:Lcab/snapp/passenger/e/a/a;

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcab/snapp/passenger/BaseApplication;->a()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->e:Lcab/snapp/passenger/e/a/a;

    return-object v0
.end method

.method public getDataManagerComponent()Lcab/snapp/passenger/e/a/c;
    .locals 2

    .line 269
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->f:Lcab/snapp/passenger/e/a/c;

    if-nez v0, :cond_1

    .line 2251
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->e:Lcab/snapp/passenger/e/a/a;

    if-nez v0, :cond_0

    .line 2253
    invoke-direct {p0}, Lcab/snapp/passenger/BaseApplication;->a()V

    .line 2255
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->e:Lcab/snapp/passenger/e/a/a;

    new-instance v1, Lcab/snapp/passenger/e/b/d;

    invoke-direct {v1}, Lcab/snapp/passenger/e/b/d;-><init>()V

    invoke-interface {v0, v1}, Lcab/snapp/passenger/e/a/a;->getDataManagerComponent(Lcab/snapp/passenger/e/b/d;)Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/BaseApplication;->f:Lcab/snapp/passenger/e/a/c;

    .line 273
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->f:Lcab/snapp/passenger/e/a/c;

    return-object v0
.end method

.method public initRideNotificationPush()V
    .locals 1

    .line 231
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->ridePushRenderer:Lcab/snapp/passenger/services/c;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcab/snapp/passenger/services/c;

    invoke-direct {v0}, Lcab/snapp/passenger/services/c;-><init>()V

    .line 235
    sput-object v0, Lcab/snapp/passenger/BaseApplication;->ridePushRenderer:Lcab/snapp/passenger/services/c;

    invoke-static {v0}, Lcom/webengage/sdk/android/WebEngage;->registerCustomPushRenderCallback(Lcom/webengage/sdk/android/callbacks/CustomPushRender;)V

    .line 236
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->ridePushRenderer:Lcab/snapp/passenger/services/c;

    invoke-static {v0}, Lcom/webengage/sdk/android/WebEngage;->registerCustomPushRerenderCallback(Lcom/webengage/sdk/android/callbacks/CustomPushRerender;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 167
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 179
    new-instance v0, Lcom/raizlabs/android/dbflow/config/e$a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e$a;->build()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->init(Lcom/raizlabs/android/dbflow/config/e;)V

    .line 182
    new-instance v0, Lcom/a/a/a$a;

    invoke-direct {v0}, Lcom/a/a/a$a;-><init>()V

    new-instance v1, Lcom/a/a/c/j$a;

    invoke-direct {v1}, Lcom/a/a/c/j$a;-><init>()V

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v1, v2}, Lcom/a/a/c/j$a;->disabled(Z)Lcom/a/a/c/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c/j$a;->build()Lcom/a/a/c/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a$a;->core(Lcom/a/a/c/j;)Lcom/a/a/a$a;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/a/a/a$a;->build()Lcom/a/a/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/fabric/sdk/android/i;

    aput-object v0, v1, v2

    .line 187
    invoke-static {p0, v1}, Lio/fabric/sdk/android/c;->with(Landroid/content/Context;[Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/c;

    .line 189
    invoke-virtual {p0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/BaseApplication;)V

    .line 191
    invoke-static {p0}, Lcom/google/firebase/b;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/b;

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/BaseApplication;->c:Landroid/content/Context;

    .line 195
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    if-nez v0, :cond_0

    .line 197
    invoke-static {p0}, Lcab/snapp/passenger/BaseApplication;->setupNotificationManager(Landroid/content/Context;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->a:Lcab/snapp/b/a;

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->setSharedPreferencesManager(Lcab/snapp/b/a;)V

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/BaseApplication;->b:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->setNetworkModule(Lcab/snapp/passenger/data_access_layer/network/b;)V

    .line 202
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    invoke-static {p0, v0}, Lcab/snapp/passenger/f/g;->changeAppLocale(Landroid/content/Context;I)Z

    .line 204
    new-instance v0, Lcab/snapp/passenger/a;

    invoke-direct {v0}, Lcab/snapp/passenger/a;-><init>()V

    sput-object v0, Lcab/snapp/passenger/BaseApplication;->d:Lcab/snapp/passenger/a;

    .line 205
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->d:Lcab/snapp/passenger/a;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/BaseApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 207
    invoke-virtual {p0}, Lcab/snapp/passenger/BaseApplication;->initRideNotificationPush()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onLowMemory()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcab/snapp/passenger/BaseApplication;->g:Z

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 213
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onTerminate()V

    .line 214
    invoke-virtual {p0}, Lcab/snapp/passenger/BaseApplication;->releaseEverything()V

    return-void
.end method

.method public releaseEverything()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    sput-object v0, Lcab/snapp/passenger/BaseApplication;->notificationManager:Lcab/snapp/notificationmanager/a/a;

    .line 279
    invoke-static {}, Lcab/snapp/authenticator/c;->release()V

    .line 280
    invoke-static {}, Lcab/snapp/passenger/f/g;->release()V

    .line 281
    iput-object v0, p0, Lcab/snapp/passenger/BaseApplication;->f:Lcab/snapp/passenger/e/a/c;

    .line 282
    iput-object v0, p0, Lcab/snapp/passenger/BaseApplication;->e:Lcab/snapp/passenger/e/a/a;

    .line 283
    sput-object v0, Lcab/snapp/passenger/BaseApplication;->ridePushRenderer:Lcab/snapp/passenger/services/c;

    return-void
.end method

.method public shouldRestartApp()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcab/snapp/passenger/BaseApplication;->g:Z

    return v0
.end method
