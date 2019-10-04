.class public final Lcom/yandex/metrica/YandexMetrica;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/YandexMetricaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/ReporterConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "[",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/DeferredDeeplinkParametersListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/AppMetricaDeviceIDListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Context"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->a:Lcom/yandex/metrica/impl/ob/pa;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Config"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->b:Lcom/yandex/metrica/impl/ob/pa;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Reporter config"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->c:Lcom/yandex/metrica/impl/ob/pa;

    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Application"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->d:Lcom/yandex/metrica/impl/ob/pa;

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Activity"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->e:Lcom/yandex/metrica/impl/ob/pa;

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Broadcast receivers"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->f:Lcom/yandex/metrica/impl/ob/pa;

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Deferred deeplink parameters listener"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->g:Lcom/yandex/metrica/impl/ob/pa;

    .line 58
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "AppMetrica DeviceID listener"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->h:Lcom/yandex/metrica/impl/ob/pa;

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/ob/kq;

    invoke-static {}, Lcom/yandex/metrica/impl/by;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/kq;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activate(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->a:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 77
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->b:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 78
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V

    return-void
.end method

.method public static activateReporter(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V
    .locals 1

    .line 353
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->a:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 354
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->c:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 355
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V

    return-void
.end method

.method public static enableActivityAutoTracking(Landroid/app/Application;)V
    .locals 1

    .line 136
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 137
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static getLibraryApiLevel()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.2"

    return-object v0
.end method

.method public static getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;
    .locals 1

    .line 370
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->a:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 371
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p0

    return-object p0
.end method

.method public static pauseSession(Landroid/app/Activity;)V
    .locals 1

    .line 121
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static varargs registerReferrerBroadcastReceivers([Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 404
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->f:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 405
    invoke-static {p0}, Lcom/yandex/metrica/MetricaEventHandler;->a([Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static reportAppOpen(Landroid/app/Activity;)V
    .locals 1

    .line 263
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->e:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 264
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static reportAppOpen(Ljava/lang/String;)V
    .locals 1

    .line 272
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 163
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static reportEvent(Ljava/lang/String;)V
    .locals 1

    .line 150
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 235
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 255
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportNativeCrash(Ljava/lang/String;)V
    .locals 1

    .line 190
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static reportReferralUrl(Ljava/lang/String;)V
    .locals 1

    .line 281
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static reportRevenue(Lcom/yandex/metrica/Revenue;)V
    .locals 1

    .line 464
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Lcom/yandex/metrica/Revenue;)V

    return-void
.end method

.method public static reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 1

    .line 176
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 1

    .line 455
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Lcom/yandex/metrica/profile/UserProfile;)V

    return-void
.end method

.method public static requestAppMetricaDeviceID(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 1

    .line 434
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->h:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 435
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    return-void
.end method

.method public static requestDeferredDeeplinkParameters(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 1

    .line 422
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->g:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 423
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public static resumeSession(Landroid/app/Activity;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static sendEventsBuffer()V
    .locals 1

    .line 91
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->e()V

    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1

    .line 300
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static setLocationTracking(Landroid/content/Context;Z)V
    .locals 1

    .line 329
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setLocationTracking(Z)V
    .locals 1

    .line 314
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->a(Z)V

    return-void
.end method

.method public static setStatisticsSending(Landroid/content/Context;Z)V
    .locals 1

    .line 343
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/kq;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setUserProfileID(Ljava/lang/String;)V
    .locals 1

    .line 446
    sget-object v0, Lcom/yandex/metrica/YandexMetrica;->i:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/kq;->e(Ljava/lang/String;)V

    return-void
.end method
