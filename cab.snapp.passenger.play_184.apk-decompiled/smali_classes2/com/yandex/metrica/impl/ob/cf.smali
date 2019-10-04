.class public Lcom/yandex/metrica/impl/ob/cf;
.super Lcom/yandex/metrica/impl/ob/cb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/x;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/x;)V

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/kw;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cf;->a()Lcom/yandex/metrica/impl/ob/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/x;->f()Lcom/yandex/metrica/impl/ob/kv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kv;->a(Lcom/yandex/metrica/impl/ob/kw;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)Z
    .locals 0

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->d()[B

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/kw;->a([B)Lcom/yandex/metrica/impl/ob/kw;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cf;->a(Lcom/yandex/metrica/impl/ob/kw;)V
    :try_end_0
    .catch Lcom/yandex/metrica/impl/ob/d; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
