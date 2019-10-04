.class Lcom/yandex/metrica/impl/g;
.super Lcom/yandex/metrica/impl/bf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/u;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/bf;-><init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/CounterConfiguration;)V

    .line 22
    iget-object p1, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->p()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
