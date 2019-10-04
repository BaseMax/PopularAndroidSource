.class final Lcom/mapbox/android/telemetry/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/mapbox/android/telemetry/w;

.field final c:Lcom/mapbox/android/telemetry/e;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/android/telemetry/o;",
            "Lcom/mapbox/android/telemetry/ag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/mapbox/android/telemetry/ah$1;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/ah$1;-><init>(Lcom/mapbox/android/telemetry/ah;)V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/ah;->e:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/mapbox/android/telemetry/ah;->d:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/mapbox/android/telemetry/ah;->a:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/mapbox/android/telemetry/ah;->b:Lcom/mapbox/android/telemetry/w;

    .line 47
    iput-object p4, p0, Lcom/mapbox/android/telemetry/ah;->c:Lcom/mapbox/android/telemetry/e;

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lcom/mapbox/android/telemetry/af;
    .locals 3

    .line 51
    new-instance v0, Lcom/mapbox/android/telemetry/p;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/p;-><init>()V

    .line 52
    invoke-static {}, Lcom/mapbox/android/telemetry/p;->a()Lcom/mapbox/android/telemetry/q;

    move-result-object v0

    .line 55
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 58
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-interface {v0, p1}, Lcom/mapbox/android/telemetry/q;->obtainServerInformation(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/ab;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/mapbox/android/telemetry/ah;->e:Ljava/util/Map;

    .line 1014
    iget-object v1, p1, Lcom/mapbox/android/telemetry/ab;->a:Lcom/mapbox/android/telemetry/o;

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/telemetry/ag;

    invoke-interface {v0, p1}, Lcom/mapbox/android/telemetry/ag;->build(Lcom/mapbox/android/telemetry/ab;)Lcom/mapbox/android/telemetry/af;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Failed when retrieving app meta-data: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    :cond_0
    sget-object p1, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    iget-object v0, p0, Lcom/mapbox/android/telemetry/ah;->c:Lcom/mapbox/android/telemetry/e;

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/android/telemetry/ah;->a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;)Lcom/mapbox/android/telemetry/af;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;)Lcom/mapbox/android/telemetry/af;
    .locals 7

    .line 68
    new-instance v0, Lcom/mapbox/android/telemetry/ai$a;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/ai$a;-><init>()V

    .line 1096
    iput-object p1, v0, Lcom/mapbox/android/telemetry/ai$a;->a:Lcom/mapbox/android/telemetry/o;

    .line 70
    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/ai$a;->a()Lcom/mapbox/android/telemetry/ai;

    move-result-object v4

    .line 71
    new-instance p1, Lcom/mapbox/android/telemetry/af;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/ah;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapbox/android/telemetry/ah;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/mapbox/android/telemetry/ah;->b:Lcom/mapbox/android/telemetry/w;

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/android/telemetry/af;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/ai;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V

    return-object p1
.end method
