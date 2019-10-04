.class public Lcom/yandex/metrica/YandexMetricaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    }
.end annotation


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final crashReporting:Ljava/lang/Boolean;

.field public final firstActivationAsUpdate:Ljava/lang/Boolean;

.field public final installedAppCollecting:Ljava/lang/Boolean;

.field public final location:Landroid/location/Location;

.field public final locationTracking:Ljava/lang/Boolean;

.field public final logs:Ljava/lang/Boolean;

.field public final nativeCrashReporting:Ljava/lang/Boolean;

.field public final preloadInfo:Lcom/yandex/metrica/PreloadInfo;

.field public final sessionTimeout:Ljava/lang/Integer;

.field public final statisticsSending:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V
    .locals 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 411
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 412
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 413
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 414
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 415
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 416
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 417
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->installedAppCollecting:Ljava/lang/Boolean;

    .line 418
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 419
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Lcom/yandex/metrica/PreloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 420
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 421
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->l(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 426
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 427
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 428
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 429
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 430
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 431
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 432
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->installedAppCollecting:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->installedAppCollecting:Ljava/lang/Boolean;

    .line 433
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 434
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 435
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 436
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1

    .line 150
    new-instance v0, Lcom/yandex/metrica/impl/af;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/af;-><init>()V

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/af;->a(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object p0

    return-object p0
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1

    .line 146
    new-instance v0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    .line 440
    new-instance v0, Lcom/yandex/metrica/impl/af;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/af;-><init>()V

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/YandexMetricaConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
