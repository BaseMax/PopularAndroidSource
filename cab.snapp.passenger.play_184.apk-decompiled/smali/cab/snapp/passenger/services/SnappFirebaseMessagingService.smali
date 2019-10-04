.class public Lcab/snapp/passenger/services/SnappFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public initRideNotificationPushIfNeeded()V
    .locals 1

    .line 66
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->ridePushRenderer:Lcab/snapp/passenger/services/c;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcab/snapp/passenger/services/c;

    invoke-direct {v0}, Lcab/snapp/passenger/services/c;-><init>()V

    .line 70
    sput-object v0, Lcab/snapp/passenger/BaseApplication;->ridePushRenderer:Lcab/snapp/passenger/services/c;

    invoke-static {v0}, Lcom/webengage/sdk/android/WebEngage;->registerCustomPushRenderCallback(Lcom/webengage/sdk/android/callbacks/CustomPushRender;)V

    .line 71
    sget-object v0, Lcab/snapp/passenger/BaseApplication;->ridePushRenderer:Lcab/snapp/passenger/services/c;

    invoke-static {v0}, Lcom/webengage/sdk/android/WebEngage;->registerCustomPushRerenderCallback(Lcom/webengage/sdk/android/callbacks/CustomPushRerender;)V

    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 4

    .line 1043
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcab/snapp/passenger/services/SnappFirebaseMessagingService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v2, 0x7f12017f

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1051
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {p0}, Lcab/snapp/passenger/services/SnappFirebaseMessagingService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f120180

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 1060
    :goto_0
    new-instance v2, Lcab/snapp/passenger/f/b/d/d;

    invoke-direct {v2}, Lcab/snapp/passenger/f/b/d/d;-><init>()V

    .line 1061
    invoke-virtual {p0}, Lcab/snapp/passenger/services/SnappFirebaseMessagingService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcab/snapp/passenger/f/b/d/d;->init(Landroid/app/Application;Ljava/lang/String;Z)Lcab/snapp/passenger/f/b/d/d;

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/services/SnappFirebaseMessagingService;->initRideNotificationPushIfNeeded()V

    .line 27
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "source"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "webengage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/AbstractWebEngage;->receive(Ljava/util/Map;)V

    :cond_2
    return-void
.end method
