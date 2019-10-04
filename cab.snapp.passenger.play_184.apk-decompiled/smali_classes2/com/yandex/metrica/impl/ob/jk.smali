.class public Lcom/yandex/metrica/impl/ob/jk;
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
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/jk;->a(Lcom/yandex/metrica/impl/ob/ke$a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jk;->a()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object p2

    invoke-interface {p3}, Lcom/yandex/metrica/impl/ob/jg;->a()Lcom/yandex/metrica/impl/ob/ke$a$a;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/jh;->a(Lcom/yandex/metrica/impl/ob/jy;Lcom/yandex/metrica/impl/ob/ke$a$a;)Lcom/yandex/metrica/impl/ob/ke$a$a;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/ke$a$b;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/ke$a$b;-><init>()V

    iput-object p1, p2, Lcom/yandex/metrica/impl/ob/ke$a$a;->d:Lcom/yandex/metrica/impl/ob/ke$a$b;

    return-object p2
.end method
