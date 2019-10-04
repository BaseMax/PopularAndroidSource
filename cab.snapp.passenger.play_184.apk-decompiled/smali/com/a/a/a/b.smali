.class public Lcom/a/a/a/b;
.super Lio/fabric/sdk/android/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/i<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Answers"


# instance fields
.field a:Lcom/a/a/a/ae;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/fabric/sdk/android/i;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 5

    const-string v0, "Answers"

    .line 372
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->getInstance()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/q;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v1

    if-nez v1, :cond_0

    .line 374
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Failed to retrieve settings"

    invoke-interface {v1, v0, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 378
    :cond_0
    iget-object v2, v1, Lio/fabric/sdk/android/services/settings/s;->featuresData:Lio/fabric/sdk/android/services/settings/m;

    iget-boolean v2, v2, Lio/fabric/sdk/android/services/settings/m;->collectAnalytics:Z

    if-eqz v2, :cond_1

    .line 379
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Analytics collection enabled"

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/s;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    .line 1407
    invoke-virtual {p0}, Lcom/a/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.crashlytics.ApiEndpoint"

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/i;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {v2, v1, v3}, Lcom/a/a/a/ae;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    .line 382
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 384
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Analytics collection disabled"

    invoke-interface {v1, v0, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    invoke-virtual {v1}, Lcom/a/a/a/ae;->disable()V

    .line 386
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 389
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Error dealing with settings"

    invoke-interface {v2, v0, v3, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getInstance()Lcom/a/a/a/b;
    .locals 1

    .line 32
    const-class v0, Lcom/a/a/a/b;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public final synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/a/a/a/b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.13.dev"

    return-object v0
.end method

.method public logAddToCart(Lcom/a/a/a/a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logContentView(Lcom/a/a/a/l;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 298
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logCustom(Lcom/a/a/a/m;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onCustom(Lcom/a/a/a/m;)V

    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logInvite(Lcom/a/a/a/q;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logLevelEnd(Lcom/a/a/a/s;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logLevelStart(Lcom/a/a/a/t;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logLogin(Lcom/a/a/a/u;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logPurchase(Lcom/a/a/a/w;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logRating(Lcom/a/a/a/y;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 276
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logSearch(Lcom/a/a/a/ab;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 318
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logShare(Lcom/a/a/a/ak;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logSignUp(Lcom/a/a/a/al;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logStartCheckout(Lcom/a/a/a/am;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onPredefined(Lcom/a/a/a/v;)V

    :cond_0
    return-void

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "event must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onException(Lio/fabric/sdk/android/services/common/j$a;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j$a;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j$a;->getExceptionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/ae;->onCrash(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onException(Lio/fabric/sdk/android/services/common/j$b;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j$b;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/a/a/a/ae;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPreExecute()Z
    .locals 9

    const/4 v0, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 343
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 345
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, "0.0"

    goto :goto_0

    :cond_0
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 351
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_1

    .line 352
    iget-wide v3, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    :goto_1
    move-wide v7, v3

    goto :goto_2

    .line 354
    :cond_1
    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 355
    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    goto :goto_1

    .line 1109
    :goto_2
    iget-object v3, p0, Lio/fabric/sdk/android/i;->g:Lio/fabric/sdk/android/services/common/IdManager;

    move-object v1, p0

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v7

    .line 358
    invoke-static/range {v1 .. v7}, Lcom/a/a/a/ae;->build(Lio/fabric/sdk/android/i;Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/a/a/a/ae;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    .line 360
    iget-object v1, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/ae;

    invoke-virtual {v1}, Lcom/a/a/a/ae;->enable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 364
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error retrieving app properties"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
