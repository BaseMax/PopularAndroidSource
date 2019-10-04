.class Lcom/yandex/metrica/impl/ae;
.super Lcom/yandex/metrica/impl/c;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/c;Lcom/yandex/metrica/impl/bi;)V
    .locals 2

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/bf;

    new-instance v1, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v1, p3}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/c;)V

    invoke-direct {v0, p2, v1}, Lcom/yandex/metrica/impl/bf;-><init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/CounterConfiguration;)V

    invoke-direct {p0, p1, p4, v0}, Lcom/yandex/metrica/impl/c;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/bf;)V

    .line 30
    iget-object p1, p0, Lcom/yandex/metrica/impl/ae;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/CounterConfiguration;->g(Z)V

    return-void
.end method
