.class public Lcom/yandex/metrica/impl/ob/cq;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/gb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->A()Lcom/yandex/metrica/impl/ob/gb;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cq;->a:Lcom/yandex/metrica/impl/ob/gb;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cq;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cq;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gb;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->e(Lcom/yandex/metrica/impl/i;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
