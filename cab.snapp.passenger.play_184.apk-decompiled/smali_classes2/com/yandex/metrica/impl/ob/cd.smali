.class public Lcom/yandex/metrica/impl/ob/cd;
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
.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cd;->a()Lcom/yandex/metrica/impl/ob/x;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/x;->a(Lcom/yandex/metrica/impl/ob/lx;)V

    const/4 p1, 0x0

    return p1
.end method
