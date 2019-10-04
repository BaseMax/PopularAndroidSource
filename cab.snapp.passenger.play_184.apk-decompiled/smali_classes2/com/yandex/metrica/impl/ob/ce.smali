.class public Lcom/yandex/metrica/impl/ob/ce;
.super Lcom/yandex/metrica/impl/ob/cb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/x;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/x;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->a()Lcom/yandex/metrica/impl/ob/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/x;->f()Lcom/yandex/metrica/impl/ob/kv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)Z
    .locals 0

    .line 25
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ce;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
