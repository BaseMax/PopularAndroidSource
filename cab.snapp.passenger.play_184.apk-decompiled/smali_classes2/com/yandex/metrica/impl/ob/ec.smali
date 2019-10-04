.class public Lcom/yandex/metrica/impl/ob/ec;
.super Lcom/yandex/metrica/impl/ob/ea;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 4

    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->C()Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/em;

    .line 25
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->F()Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v2

    const-string v3, "foreground"

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/em;-><init>(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/ec;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/em;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/em;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    .line 37
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ei;->a(Lcom/yandex/metrica/impl/ob/en;)Lcom/yandex/metrica/impl/ob/ei$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ei$a;->a()Lcom/yandex/metrica/impl/ob/ei;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/ea;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/em;Lcom/yandex/metrica/impl/ob/ei;)V

    return-void
.end method
