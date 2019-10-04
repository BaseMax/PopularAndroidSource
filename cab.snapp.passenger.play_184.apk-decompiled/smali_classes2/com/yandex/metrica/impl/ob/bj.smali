.class public Lcom/yandex/metrica/impl/ob/bj;
.super Lcom/yandex/metrica/impl/ob/ay;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ay;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->e()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bj;->b()Lcom/yandex/metrica/impl/ob/ar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/ar;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bj;->b()Lcom/yandex/metrica/impl/ob/ar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/ar;->a(Lcom/yandex/metrica/impl/i;)V

    return-void
.end method
