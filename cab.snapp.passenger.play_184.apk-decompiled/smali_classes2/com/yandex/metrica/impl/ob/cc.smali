.class public Lcom/yandex/metrica/impl/ob/cc;
.super Lcom/yandex/metrica/impl/ob/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/cb;",
        "C:",
        "Lcom/yandex/metrica/impl/ob/x;",
        ">",
        "Lcom/yandex/metrica/impl/ob/bt<",
        "TT;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/bz<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bt;-><init>(Lcom/yandex/metrica/impl/ob/bz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)Z
    .locals 1

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/cc$1;

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/ob/cc$1;-><init>(Lcom/yandex/metrica/impl/ob/bd;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cc;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bt$a;)Z

    move-result p1

    return p1
.end method
