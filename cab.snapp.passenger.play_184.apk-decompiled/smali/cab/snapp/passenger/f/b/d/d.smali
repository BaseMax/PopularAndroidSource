.class public final Lcab/snapp/passenger/f/b/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcab/snapp/passenger/f/b/c/a<",
        "Lcab/snapp/passenger/f/b/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/webengage/sdk/android/WebEngageConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeUser(Ljava/lang/String;)V
    .locals 1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->user()Lcom/webengage/sdk/android/User;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/webengage/sdk/android/User;->login(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getHandlerForEvent(Lcab/snapp/passenger/f/b/a/e;)Lcab/snapp/passenger/f/b/c/c;
    .locals 1

    .line 92
    new-instance v0, Lcab/snapp/passenger/f/b/d/d$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/b/d/d$1;-><init>(Lcab/snapp/passenger/f/b/d/d;Lcab/snapp/passenger/f/b/a/e;)V

    return-object v0
.end method

.method public final bridge synthetic getHandlerForEvent(Lcab/snapp/passenger/f/b/c/b;)Lcab/snapp/passenger/f/b/c/c;
    .locals 0

    .line 21
    check-cast p1, Lcab/snapp/passenger/f/b/a/e;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/b/d/d;->getHandlerForEvent(Lcab/snapp/passenger/f/b/a/e;)Lcab/snapp/passenger/f/b/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final init(Landroid/app/Application;Ljava/lang/String;Z)Lcab/snapp/passenger/f/b/d/d;
    .locals 2

    .line 39
    iget-object v0, p0, Lcab/snapp/passenger/f/b/d/d;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-direct {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_BEST:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    .line 42
    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setWebEngageKey(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object p2

    .line 44
    invoke-virtual {p2, p3}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setDebugMode(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/f/b/d/d;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    .line 47
    new-instance p2, Lcom/webengage/sdk/android/WebEngageActivityLifeCycleCallbacks;

    iget-object p3, p0, Lcab/snapp/passenger/f/b/d/d;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-direct {p2, p1, p3}, Lcom/webengage/sdk/android/WebEngageActivityLifeCycleCallbacks;-><init>(Landroid/content/Context;Lcom/webengage/sdk/android/WebEngageConfig;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-object p0
.end method

.method public final logOutUser()V
    .locals 1

    .line 77
    :try_start_0
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->user()Lcom/webengage/sdk/android/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/webengage/sdk/android/User;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setUserCommonAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->user()Lcom/webengage/sdk/android/User;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 149
    invoke-interface {v0, p1}, Lcom/webengage/sdk/android/User;->setFirstName(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 153
    invoke-interface {v0, p2}, Lcom/webengage/sdk/android/User;->setEmail(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 157
    invoke-interface {v0, p3}, Lcom/webengage/sdk/android/User;->setPhoneNumber(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 161
    invoke-interface {v0, p4}, Lcom/webengage/sdk/android/User;->setBirthDate(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final setUserCustomAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->user()Lcom/webengage/sdk/android/User;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/webengage/sdk/android/User;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
