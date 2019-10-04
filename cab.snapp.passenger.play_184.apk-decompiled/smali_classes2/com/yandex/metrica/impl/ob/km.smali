.class public Lcom/yandex/metrica/impl/ob/km;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/IReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/yandex/metrica/impl/ob/ks;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/IReporter;"
    }
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/impl/ob/ks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Executor;

.field private c:Lcom/yandex/metrica/impl/ob/kp;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/yandex/metrica/c;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TB;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/kp;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kp;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->c:Lcom/yandex/metrica/impl/ob/kp;

    .line 39
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    .line 40
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/km;->d:Landroid/content/Context;

    .line 41
    invoke-static {p3}, Lcom/yandex/metrica/c;->a(Ljava/lang/String;)Lcom/yandex/metrica/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/c$a;->a()Lcom/yandex/metrica/c;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km;->e:Lcom/yandex/metrica/c;

    .line 42
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    return-void
.end method


# virtual methods
.method final a()Lcom/yandex/metrica/b;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->c:Lcom/yandex/metrica/impl/ob/kp;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km;->e:Lcom/yandex/metrica/c;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/by;->b(Lcom/yandex/metrica/c;)Lcom/yandex/metrica/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/ReporterConfig;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/km$1;-><init>(Lcom/yandex/metrica/impl/ob/km;Lcom/yandex/metrica/ReporterConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Lcom/yandex/metrica/c;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->c:Lcom/yandex/metrica/impl/ob/kp;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/c;)V

    return-void
.end method

.method public pauseSession()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ks;->pauseSession()V

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$12;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/km$12;-><init>(Lcom/yandex/metrica/impl/ob/km;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ks;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/km$9;-><init>(Lcom/yandex/metrica/impl/ob/km;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ks;->reportEvent(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$6;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/km$6;-><init>(Lcom/yandex/metrica/impl/ob/km;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ks;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/km$7;-><init>(Lcom/yandex/metrica/impl/ob/km;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ks;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/yandex/metrica/impl/ob/km$8;-><init>(Lcom/yandex/metrica/impl/ob/km;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportRevenue(Lcom/yandex/metrica/Revenue;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ks;->reportRevenue(Lcom/yandex/metrica/Revenue;)V

    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$3;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/km$3;-><init>(Lcom/yandex/metrica/impl/ob/km;Lcom/yandex/metrica/Revenue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ks;->reportUnhandledException(Ljava/lang/Throwable;)V

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$10;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/km$10;-><init>(Lcom/yandex/metrica/impl/ob/km;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ks;->reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V

    .line 164
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$2;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/km$2;-><init>(Lcom/yandex/metrica/impl/ob/km;Lcom/yandex/metrica/profile/UserProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeSession()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ks;->resumeSession()V

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$11;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/km$11;-><init>(Lcom/yandex/metrica/impl/ob/km;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventsBuffer()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ks;->sendEventsBuffer()V

    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$5;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/km$5;-><init>(Lcom/yandex/metrica/impl/ob/km;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStatisticsSending(Z)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ks;->setStatisticsSending(Z)V

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$4;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/km$4;-><init>(Lcom/yandex/metrica/impl/ob/km;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->a:Lcom/yandex/metrica/impl/ob/ks;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ks;->setUserProfileID(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/km$13;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/km$13;-><init>(Lcom/yandex/metrica/impl/ob/km;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
