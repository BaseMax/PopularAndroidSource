.class public Lcom/yandex/metrica/impl/ob/cl;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cl;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ac;->a(Z)V

    .line 26
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->f()Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ej;->a(Lcom/yandex/metrica/impl/i;Z)V

    return v1
.end method
