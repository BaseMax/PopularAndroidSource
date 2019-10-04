.class public final Lcab/snapp/passenger/f/b/b;
.super Lcab/snapp/passenger/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/f/b/b$b;,
        Lcab/snapp/passenger/f/b/b$a;
    }
.end annotation


# static fields
.field private static b:Lcab/snapp/passenger/f/b/b;


# instance fields
.field protected a:Lcab/snapp/passenger/f/b/b$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcab/snapp/passenger/f/b/a;-><init>()V

    return-void
.end method

.method public static getInstance()Lcab/snapp/passenger/f/b/b;
    .locals 1

    .line 67
    sget-object v0, Lcab/snapp/passenger/f/b/b;->b:Lcab/snapp/passenger/f/b/b;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcab/snapp/passenger/f/b/b;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b;-><init>()V

    sput-object v0, Lcab/snapp/passenger/f/b/b;->b:Lcab/snapp/passenger/f/b/b;

    .line 72
    :cond_0
    sget-object v0, Lcab/snapp/passenger/f/b/b;->b:Lcab/snapp/passenger/f/b/b;

    return-object v0
.end method


# virtual methods
.method public final changeWebengageUser(Ljava/lang/String;)V
    .locals 2

    const-string v0, "web_engage"

    .line 197
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b;->getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;

    move-result-object v0

    .line 199
    instance-of v1, v0, Lcab/snapp/passenger/f/b/d/d;

    if-nez v1, :cond_0

    return-void

    .line 204
    :cond_0
    check-cast v0, Lcab/snapp/passenger/f/b/d/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b/d/d;->changeUser(Ljava/lang/String;)V

    return-void
.end method

.method public final init(Lcab/snapp/passenger/f/b/b$a;)Lcab/snapp/passenger/f/b/b;
    .locals 4

    .line 84
    iput-object p1, p0, Lcab/snapp/passenger/f/b/b;->a:Lcab/snapp/passenger/f/b/b$a;

    .line 1401
    iget-boolean v0, p1, Lcab/snapp/passenger/f/b/b$a;->a:Z

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcab/snapp/passenger/f/b/d/d;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/d/d;-><init>()V

    .line 2339
    iget-object v1, p1, Lcab/snapp/passenger/f/b/b$a;->c:Landroid/app/Application;

    .line 88
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b$a;->getWebEngageKey()Ljava/lang/String;

    move-result-object v2

    .line 3339
    iget-boolean v3, p1, Lcab/snapp/passenger/f/b/b$a;->f:Z

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/d/d;->init(Landroid/app/Application;Ljava/lang/String;Z)Lcab/snapp/passenger/f/b/d/d;

    move-result-object v0

    const-string v1, "web_engage"

    .line 90
    invoke-virtual {p0, v1, v0}, Lcab/snapp/passenger/f/b/b;->addProvider(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/a;)Lcab/snapp/passenger/f/b/a;

    .line 3411
    :cond_0
    iget-object v0, p1, Lcab/snapp/passenger/f/b/b$a;->b:Lcom/adjust/sdk/AdjustConfig;

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcab/snapp/passenger/f/b/d/a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/d/a;-><init>()V

    .line 4339
    iget-object v1, p1, Lcab/snapp/passenger/f/b/b$a;->c:Landroid/app/Application;

    .line 4411
    iget-object v2, p1, Lcab/snapp/passenger/f/b/b$a;->b:Lcom/adjust/sdk/AdjustConfig;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/d/a;->init(Landroid/app/Application;Lcom/adjust/sdk/AdjustConfig;)Lcab/snapp/passenger/f/b/d/a;

    move-result-object v0

    const-string v1, "adjust"

    .line 98
    invoke-virtual {p0, v1, v0}, Lcab/snapp/passenger/f/b/b;->addProvider(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/a;)Lcab/snapp/passenger/f/b/a;

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b$a;->getLifeCycleCallback()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 4431
    iget-object v0, p1, Lcab/snapp/passenger/f/b/b$a;->c:Landroid/app/Application;

    .line 105
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b$a;->getLifeCycleCallback()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b$a;->isSupportFirebase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    new-instance v0, Lcab/snapp/passenger/f/b/d/c;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/d/c;-><init>()V

    .line 5431
    iget-object v1, p1, Lcab/snapp/passenger/f/b/b$a;->c:Landroid/app/Application;

    .line 112
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/d/c;->init(Landroid/content/Context;)Lcab/snapp/passenger/f/b/d/c;

    move-result-object v0

    const-string v1, "firebase"

    .line 114
    invoke-virtual {p0, v1, v0}, Lcab/snapp/passenger/f/b/b;->addProvider(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/a;)Lcab/snapp/passenger/f/b/a;

    .line 117
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b$a;->isSupportAppmetrica()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    new-instance v0, Lcab/snapp/passenger/f/b/d/b;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/d/b;-><init>()V

    .line 6339
    iget-object v1, p1, Lcab/snapp/passenger/f/b/b$a;->c:Landroid/app/Application;

    .line 7339
    iget-object p1, p1, Lcab/snapp/passenger/f/b/b$a;->e:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/d/b;->init(Landroid/app/Application;Ljava/lang/String;)Lcab/snapp/passenger/f/b/d/b;

    move-result-object p1

    const-string v0, "appmetrica"

    .line 122
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/f/b/b;->addProvider(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/a;)Lcab/snapp/passenger/f/b/a;

    :cond_4
    return-object p0
.end method

.method public final logoutWebengageUser()V
    .locals 2

    const-string v0, "web_engage"

    .line 212
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b;->getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;

    move-result-object v0

    .line 214
    instance-of v1, v0, Lcab/snapp/passenger/f/b/d/d;

    if-nez v1, :cond_0

    return-void

    .line 219
    :cond_0
    check-cast v0, Lcab/snapp/passenger/f/b/d/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/d/d;->logOutUser()V

    return-void
.end method

.method public final onPushReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    .line 299
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "source"

    .line 302
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "webengage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/AbstractWebEngage;->receive(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b;->release()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcab/snapp/passenger/f/b/b;->a:Lcab/snapp/passenger/f/b/b$a;

    .line 333
    sput-object v0, Lcab/snapp/passenger/f/b/b;->b:Lcab/snapp/passenger/f/b/b;

    return-void
.end method

.method public final sendAdjustEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Lcab/snapp/passenger/f/b/a/a;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/f/b/a/a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "adjust"

    .line 137
    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/f/b/b;->sendEvent(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/b;)V

    return-void
.end method

.method public final sendAppmetricaEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Lcab/snapp/passenger/f/b/a/b;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/f/b/a/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "appmetrica"

    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/f/b/b;->sendEvent(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/b;)V

    return-void
.end method

.method public final sendAppmetricaEvent(Ljava/lang/String;Lorg/a/c;)V
    .locals 1

    .line 187
    new-instance v0, Lcab/snapp/passenger/f/b/a/c;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/f/b/a/c;-><init>(Ljava/lang/String;Lorg/a/c;)V

    const-string p1, "appmetrica"

    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/f/b/b;->sendEvent(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/b;)V

    return-void
.end method

.method public final sendFirebaseEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 170
    new-instance v0, Lcab/snapp/passenger/f/b/a/d;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/f/b/a/d;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "firebase"

    .line 171
    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/f/b/b;->sendEvent(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/b;)V

    return-void
.end method

.method public final sendUserProfileToAppmetrica(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "appmetrica"

    .line 263
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b;->getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;

    move-result-object v0

    .line 264
    instance-of v1, v0, Lcab/snapp/passenger/f/b/d/b;

    if-nez v1, :cond_0

    return-void

    .line 268
    :cond_0
    check-cast v0, Lcab/snapp/passenger/f/b/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/passenger/f/b/d/b;->sendUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendWebEngageEvent(Lcab/snapp/passenger/f/b/a/e;)V
    .locals 1

    const-string v0, "web_engage"

    .line 147
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/f/b/b;->sendEvent(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/b;)V

    return-void
.end method

.method public final sendWebEngageEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Lcab/snapp/passenger/f/b/a/e;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/f/b/a/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b;->sendWebEngageEvent(Lcab/snapp/passenger/f/b/a/e;)V

    return-void
.end method

.method public final setFirebaseScreen(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "firebase"

    .line 318
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b;->getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    instance-of v1, v0, Lcab/snapp/passenger/f/b/d/c;

    if-nez v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    check-cast v0, Lcab/snapp/passenger/f/b/d/c;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/b/d/c;->setScreen(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setIdForInAppMessage(Ljava/lang/String;)Z
    .locals 1

    .line 281
    :try_start_0
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/AbstractWebEngage;->setRegistrationID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 286
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final setWebengageUserCommonAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "web_engage"

    .line 251
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b;->getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;

    move-result-object v0

    .line 253
    instance-of v1, v0, Lcab/snapp/passenger/f/b/d/d;

    if-nez v1, :cond_0

    return-void

    .line 258
    :cond_0
    check-cast v0, Lcab/snapp/passenger/f/b/d/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcab/snapp/passenger/f/b/d/d;->setUserCommonAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setWebengageUserCustomAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "web_engage"

    .line 231
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/b/b;->getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;

    move-result-object v0

    .line 233
    instance-of v1, v0, Lcab/snapp/passenger/f/b/d/d;

    if-nez v1, :cond_0

    return-void

    .line 238
    :cond_0
    check-cast v0, Lcab/snapp/passenger/f/b/d/d;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/b/d/d;->setUserCustomAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
