.class public final Lcom/yandex/metrica/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Integer;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->i:Ljava/util/LinkedHashMap;

    .line 251
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->j:Ljava/util/LinkedHashMap;

    .line 261
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/e$a;)Ljava/util/List;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/e$a;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/e$a;)Ljava/util/Map;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic g(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic h(Lcom/yandex/metrica/e$a;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->i:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic i(Lcom/yandex/metrica/e$a;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->j:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic j(Lcom/yandex/metrica/e$a;)Ljava/lang/Boolean;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k(Lcom/yandex/metrica/e$a;)Ljava/lang/Boolean;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->l:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/e$a;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLogs()Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final a(I)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/yandex/metrica/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/e$a;"
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->d:Ljava/util/List;

    return-object p0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/yandex/metrica/e$a;"
        }
    .end annotation

    .line 521
    iput-object p2, p0, Lcom/yandex/metrica/e$a;->k:Ljava/lang/Boolean;

    .line 522
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->f:Ljava/util/Map;

    return-object p0
.end method

.method public final a(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final b(I)Lcom/yandex/metrica/e$a;
    .locals 4

    if-ltz p1, :cond_0

    .line 504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->e:Ljava/lang/Integer;

    return-object p0

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "App Build Number"

    aput-object v3, v1, v2

    const-string v2, "Invalid %1$s. %1$s should be positive."

    .line 500
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withNativeCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final b()Lcom/yandex/metrica/e;
    .locals 2

    .line 627
    new-instance v0, Lcom/yandex/metrica/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/e;-><init>(Lcom/yandex/metrica/e$a;B)V

    return-object v0
.end method

.method public final c(I)Lcom/yandex/metrica/e$a;
    .locals 0

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLocationTracking(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final d(I)Lcom/yandex/metrica/e$a;
    .locals 0

    .line 562
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public final d(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withInstalledAppCollecting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final e(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withStatisticsSending(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public final f(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method
