.class public Lcom/yandex/metrica/impl/ob/kl;
.super Lcom/yandex/metrica/impl/ob/km;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/km<",
        "Lcom/yandex/metrica/impl/ob/kt;",
        ">;",
        "Lcom/yandex/metrica/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/yandex/metrica/impl/ob/kt;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kt;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/km;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ks;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/c;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kl;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/kl$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/kl$1;-><init>(Lcom/yandex/metrica/impl/ob/kl;Lcom/yandex/metrica/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kl;->a:Lcom/yandex/metrica/impl/ob/ks;

    check-cast v0, Lcom/yandex/metrica/impl/ob/kt;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kl;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/kl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/kl$3;-><init>(Lcom/yandex/metrica/impl/ob/kl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventsBuffer()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kl;->a:Lcom/yandex/metrica/impl/ob/ks;

    check-cast v0, Lcom/yandex/metrica/impl/ob/kt;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kt;->sendEventsBuffer()V

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kl;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/kl$2;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/kl$2;-><init>(Lcom/yandex/metrica/impl/ob/kl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
