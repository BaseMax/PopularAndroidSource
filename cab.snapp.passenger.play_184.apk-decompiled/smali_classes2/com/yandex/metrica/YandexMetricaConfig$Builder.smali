.class public Lcom/yandex/metrica/YandexMetricaConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/YandexMetricaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Landroid/location/Location;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Lcom/yandex/metrica/PreloadInfo;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 158
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/pb;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/pb;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a:Lcom/yandex/metrica/impl/ob/pa;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 199
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic f(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Landroid/location/Location;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic g(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic h(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic i(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic j(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Lcom/yandex/metrica/PreloadInfo;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Lcom/yandex/metrica/PreloadInfo;

    return-object p0
.end method

.method static synthetic k(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic l(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->m:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1

    .line 405
    new-instance v0, Lcom/yandex/metrica/YandexMetricaConfig;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/YandexMetricaConfig;-><init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V

    return-object v0
.end method

.method public handleFirstActivationAsUpdate(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 378
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 266
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withInstalledAppCollecting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 355
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g:Landroid/location/Location;

    return-object p0
.end method

.method public withLocationTracking(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 340
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withLogs()Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1

    .line 296
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withNativeCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 285
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Lcom/yandex/metrica/PreloadInfo;

    return-object p0
.end method

.method public withSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStatisticsSending(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 394
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->m:Ljava/lang/Boolean;

    return-object p0
.end method
