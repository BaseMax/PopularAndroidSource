.class public Lcom/yandex/metrica/impl/ob/he;
.super Lcom/yandex/metrica/impl/ob/hc;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bo$a;Lcom/yandex/metrica/impl/ob/hf;Lcom/yandex/metrica/impl/ob/hf;)V
    .locals 0

    if-nez p2, :cond_0

    move-object p2, p3

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/hc;-><init>(Lcom/yandex/metrica/impl/bo$a;Lcom/yandex/metrica/impl/ob/hf;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/yandex/metrica/impl/ob/hb;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/hc;->a()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hh;)Lcom/yandex/metrica/impl/ob/hc$a;
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/he;->b()Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hf;->d()Lcom/yandex/metrica/impl/ob/hh;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/hh;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    sget-object p1, Lcom/yandex/metrica/impl/ob/hc$a;->a:Lcom/yandex/metrica/impl/ob/hc$a;

    return-object p1

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hf;->d()Lcom/yandex/metrica/impl/ob/hh;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    sget-object p1, Lcom/yandex/metrica/impl/ob/hc$a;->b:Lcom/yandex/metrica/impl/ob/hc$a;

    return-object p1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hf;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    sget-object p1, Lcom/yandex/metrica/impl/ob/hc$a;->b:Lcom/yandex/metrica/impl/ob/hc$a;

    return-object p1

    .line 32
    :cond_2
    sget-object p1, Lcom/yandex/metrica/impl/ob/hc$a;->c:Lcom/yandex/metrica/impl/ob/hc$a;

    return-object p1
.end method

.method public bridge synthetic b()Lcom/yandex/metrica/impl/ob/hf;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/hc;->b()Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/yandex/metrica/impl/bo$a;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/hc;->c()Lcom/yandex/metrica/impl/bo$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/hc;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
