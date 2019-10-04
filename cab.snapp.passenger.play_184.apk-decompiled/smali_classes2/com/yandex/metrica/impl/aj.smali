.class public Lcom/yandex/metrica/impl/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ai;


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lcom/yandex/metrica/impl/ai;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ai;)V
    .locals 1

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/aj;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ai;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ai;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    .line 128
    iput-object p2, p0, Lcom/yandex/metrica/impl/aj;->b:Lcom/yandex/metrica/impl/ai;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/aj;)Lcom/yandex/metrica/impl/ai;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yandex/metrica/impl/aj;->b:Lcom/yandex/metrica/impl/ai;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/aj$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/aj$1;-><init>(Lcom/yandex/metrica/impl/aj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/aj$4;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/aj$4;-><init>(Lcom/yandex/metrica/impl/aj;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/aj$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/aj$2;-><init>(Lcom/yandex/metrica/impl/aj;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/aj$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/aj$3;-><init>(Lcom/yandex/metrica/impl/aj;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/aj$8;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/aj$8;-><init>(Lcom/yandex/metrica/impl/aj;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/yandex/metrica/impl/aj$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/aj$7;-><init>(Lcom/yandex/metrica/impl/aj;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->b:Lcom/yandex/metrica/impl/ai;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ai;->b()V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/aj$5;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/aj$5;-><init>(Lcom/yandex/metrica/impl/aj;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/aj$6;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/aj$6;-><init>(Lcom/yandex/metrica/impl/aj;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
