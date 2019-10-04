.class Lcom/webengage/sdk/android/actions/b/a;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/b/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/b/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->a()Z

    move-result v1

    const-string v2, "WebEngage"

    if-nez v1, :cond_1

    const-string p1, "GoogleCloudMessaging class not found"

    invoke-static {v2, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/b;->getInstance()Lcom/google/android/gms/common/b;

    move-result-object v1

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/b/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/b;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_7

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google play services "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "is currently updating "

    goto :goto_0

    :cond_4
    const-string v1, "version is invalid "

    goto :goto_0

    :cond_5
    const-string v1, "is disabled "

    goto :goto_0

    :cond_6
    const-string v1, "is missing "

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "on this device"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/webengage/sdk/android/actions/exception/GCMRegistrationException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/webengage/sdk/android/actions/exception/GCMRegistrationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/actions/b/a;->d(Ljava/lang/Object;)V

    return-object v0

    :cond_7
    :goto_2
    if-ne v1, v4, :cond_8

    const-string v1, "Please update your google play service"

    invoke-static {v2, v1}, Lcom/webengage/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/webengage/sdk/android/actions/exception/GCMRegistrationException;

    const-string v2, "Google play service update required"

    invoke-direct {v1, v2}, Lcom/webengage/sdk/android/actions/exception/GCMRegistrationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/actions/b/a;->d(Ljava/lang/Object;)V

    :cond_8
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    :try_start_0
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/b/a;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_9
    return-object v0

    :catch_0
    move-exception p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getGcmProjectNumber()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "AndroidManifest : GCM Project Number is not set,unable to register"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gcm_regId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/WebEngageConfig;->getGcmProjectNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gcm_project_number"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/b/a;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "gcm_registered"

    invoke-static {v3, v2, v0, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/b/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/b/a;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/b/a;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/b/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/webengage/sdk/android/i;->onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GCM Register Error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebEngage"

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/exception/GCMRegistrationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/webengage/sdk/android/actions/exception/GCMRegistrationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/b/a;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p1, Lcom/webengage/sdk/android/actions/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
