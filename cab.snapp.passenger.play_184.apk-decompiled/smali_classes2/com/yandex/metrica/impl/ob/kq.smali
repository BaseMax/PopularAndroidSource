.class public final Lcom/yandex/metrica/impl/ob/kq;
.super Lcom/yandex/metrica/impl/ob/kk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/kk<",
        "Lcom/yandex/metrica/impl/ob/km<",
        "Lcom/yandex/metrica/impl/ob/ks;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/kr;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/kp;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kp;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$1;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/kq$1;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/yandex/metrica/impl/ob/kk;-><init>(Lcom/yandex/metrica/impl/ob/kp;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/kn;)V

    .line 31
    new-instance p1, Lcom/yandex/metrica/impl/ob/kr;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/kr;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->b()Lcom/yandex/metrica/impl/ob/kn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kn;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kr;->resumeSession()V

    .line 77
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$19;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$19;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/app/Application;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->a(Landroid/app/Application;)V

    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$21;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$21;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/app/Application;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kr;->a(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V

    .line 320
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->b()Lcom/yandex/metrica/impl/ob/kn;

    move-result-object v0

    iget-object v1, p2, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/kn;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/km;->a(Lcom/yandex/metrica/ReporterConfig;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/kq$12;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/kp;->b()V

    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->a(Landroid/content/Context;)V

    .line 237
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/kq$10;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kr;->a()V

    .line 217
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$8;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$8;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 301
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$17;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$17;-><init>(Lcom/yandex/metrica/impl/ob/kq;Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 290
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    .line 291
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$16;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$16;-><init>(Lcom/yandex/metrica/impl/ob/kq;Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/yandex/metrica/Revenue;)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 279
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->reportRevenue(Lcom/yandex/metrica/Revenue;)V

    .line 280
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$15;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$15;-><init>(Lcom/yandex/metrica/impl/ob/kq;Lcom/yandex/metrica/Revenue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 268
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V

    .line 269
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$14;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$14;-><init>(Lcom/yandex/metrica/impl/ob/kq;Lcom/yandex/metrica/profile/UserProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->reportEvent(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$22;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$22;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kr;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/kq$23;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 151
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kr;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/kq$2;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    .line 130
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kr;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 134
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$24;

    invoke-direct {v1, p0, p2, p1}, Lcom/yandex/metrica/impl/ob/kq$24;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 162
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->reportUnhandledException(Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$3;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$3;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kr;->b()V

    .line 227
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$9;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$9;-><init>(Lcom/yandex/metrica/impl/ob/kq;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kr;->pauseSession()V

    .line 88
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$20;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$20;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->b(Landroid/content/Context;)V

    .line 247
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/kq$11;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$4;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$4;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 184
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->a(Landroid/app/Activity;)V

    .line 185
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$5;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$5;-><init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 195
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->b(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$6;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$6;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->c(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$7;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$7;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kr;->sendEventsBuffer()V

    .line 66
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$18;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/kq$18;-><init>(Lcom/yandex/metrica/impl/ob/kq;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->d()Lcom/yandex/metrica/impl/ob/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kj;->a()Lcom/yandex/metrica/impl/ob/oy;

    .line 257
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq;->a:Lcom/yandex/metrica/impl/ob/kr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kr;->setUserProfileID(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kq;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/kq$13;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kq$13;-><init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
