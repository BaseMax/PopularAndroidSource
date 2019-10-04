.class public Lcom/yandex/metrica/impl/ob/ju;
.super Lcom/yandex/metrica/impl/ob/ji;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/jh;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ji;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/jy;Lcom/yandex/metrica/impl/ob/ke$a$a;Lcom/yandex/metrica/impl/ob/jg;)Lcom/yandex/metrica/impl/ob/ke$a$a;
    .locals 1

    .line 26
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/ju;->a(Lcom/yandex/metrica/impl/ob/ke$a$a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p3}, Lcom/yandex/metrica/impl/ob/jg;->a()Lcom/yandex/metrica/impl/ob/ke$a$a;

    move-result-object p2

    .line 28
    iget-object p3, p2, Lcom/yandex/metrica/impl/ob/ke$a$a;->d:Lcom/yandex/metrica/impl/ob/ke$a$b;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/yandex/metrica/impl/ob/ke$a$b;->b:Z

    .line 29
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ju;->a()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/yandex/metrica/impl/ob/jh;->a(Lcom/yandex/metrica/impl/ob/jy;Lcom/yandex/metrica/impl/ob/ke$a$a;)Lcom/yandex/metrica/impl/ob/ke$a$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
