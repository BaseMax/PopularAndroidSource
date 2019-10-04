.class public Lcom/yandex/metrica/impl/ob/ft;
.super Lcom/yandex/metrica/impl/ob/fk;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/fp;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/gf;

    .line 23
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    .line 20
    invoke-direct {p0, p2, v0}, Lcom/yandex/metrica/impl/ob/ft;-><init>(Lcom/yandex/metrica/impl/ob/fp;Lcom/yandex/metrica/impl/ob/gf;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fp;Lcom/yandex/metrica/impl/ob/gf;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fk;-><init>(Lcom/yandex/metrica/impl/ob/fp;Lcom/yandex/metrica/impl/ob/gf;)V

    return-void
.end method


# virtual methods
.method protected d(J)J
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ft;->c()Lcom/yandex/metrica/impl/ob/gf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->d(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected e(J)Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ft;->c()Lcom/yandex/metrica/impl/ob/gf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gf;->e(J)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "l_dat"

    return-object v0
.end method
