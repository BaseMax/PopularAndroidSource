.class public Lcom/yandex/metrica/impl/ob/ko;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ko$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/kp;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/yandex/metrica/impl/ob/kj;

.field private final d:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/ob/ko$a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/ob/kp;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kp;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ko;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/kp;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/kp;)V
    .locals 7

    .line 58
    new-instance v3, Lcom/yandex/metrica/impl/ob/kj;

    invoke-direct {v3, p2}, Lcom/yandex/metrica/impl/ob/kj;-><init>(Lcom/yandex/metrica/impl/ob/kp;)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ov;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ov;

    const-string v1, "Event name"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/ko$a;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/ko$a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ko;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/kp;Lcom/yandex/metrica/impl/ob/kj;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ko$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/kp;Lcom/yandex/metrica/impl/ob/kj;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ko$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/yandex/metrica/impl/ob/kp;",
            "Lcom/yandex/metrica/impl/ob/kj;",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ko$a;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ko;->a:Lcom/yandex/metrica/impl/ob/kp;

    .line 75
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ko;->b:Ljava/util/concurrent/Executor;

    .line 76
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ko;->c:Lcom/yandex/metrica/impl/ob/kj;

    .line 77
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    .line 78
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ko;->e:Lcom/yandex/metrica/impl/ob/pa;

    .line 79
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ko;->f:Lcom/yandex/metrica/impl/ob/ko$a;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ko;)Lcom/yandex/metrica/impl/ob/kp;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ko;->a:Lcom/yandex/metrica/impl/ob/kp;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 0

    .line 203
    invoke-static {p1}, Lcom/yandex/metrica/e;->b(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e$a;

    move-result-object p1

    .line 204
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/e$a;->a(Ljava/util/List;)Lcom/yandex/metrica/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/util/List;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/YandexMetricaConfig;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/YandexMetricaConfig;"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/yandex/metrica/e;->b(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/e$a;->a(Ljava/util/List;)Lcom/yandex/metrica/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 122
    invoke-static {p1}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 0

    .line 198
    invoke-static {p1}, Lcom/yandex/metrica/impl/az;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 193
    invoke-static {p1}, Lcom/yandex/metrica/impl/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->c:Lcom/yandex/metrica/impl/ob/kj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->e:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p2}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/yandex/metrica/impl/ob/ko$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/ko$3;-><init>(Lcom/yandex/metrica/impl/ob/ko;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ko$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ko$2;-><init>(Lcom/yandex/metrica/impl/ob/ko;Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ko$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/ko$1;-><init>(Lcom/yandex/metrica/impl/ob/ko;Lcom/yandex/metrica/IIdentifierCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->c()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-static {}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->b()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 128
    new-instance v0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->getCelluralInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 116
    invoke-static {}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->b()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 134
    invoke-static {p1}, Lcom/yandex/metrica/impl/av;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->a()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/by;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 151
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/by;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 157
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/by;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->c:Lcom/yandex/metrica/impl/ob/kj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ko$4;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/ko$4;-><init>(Lcom/yandex/metrica/impl/ob/ko;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/content/Context;)Landroid/location/Location;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->d:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 226
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ko;->f:Lcom/yandex/metrica/impl/ob/ko$a;

    const-string v1, "location"

    .line 228
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 226
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ko$a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/yandex/metrica/impl/ob/hs;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hs;->a()Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method
