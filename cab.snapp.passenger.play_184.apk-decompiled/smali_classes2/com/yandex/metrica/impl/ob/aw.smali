.class public Lcom/yandex/metrica/impl/ob/aw;
.super Lcom/yandex/metrica/impl/ob/at$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/bs;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/at$a;-><init>(Lcom/yandex/metrica/impl/bs;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/CounterConfiguration;)Z
    .locals 1

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/at$a;->a(Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/CounterConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
