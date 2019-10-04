.class public Lcom/yandex/metrica/impl/ob/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/bc<",
        "Lcom/yandex/metrica/impl/ob/bd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/bf;Lcom/yandex/metrica/impl/ob/az;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bb;
    .locals 0

    .line 20
    invoke-virtual {p0, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/bi;->a(Lcom/yandex/metrica/impl/ob/bf;Lcom/yandex/metrica/impl/ob/az;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bd;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/bf;Lcom/yandex/metrica/impl/ob/az;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bd;
    .locals 1

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/aq;

    .line 29
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/az;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/ob/aq;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/yandex/metrica/impl/ob/y;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/y;-><init>()V

    .line 28
    invoke-virtual {p1, v0, p3, p2}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ae;)Lcom/yandex/metrica/impl/ob/ad;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/x;

    .line 34
    new-instance p2, Lcom/yandex/metrica/impl/ob/bd;

    invoke-direct {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/bd;-><init>(Lcom/yandex/metrica/impl/ob/x;Lcom/yandex/metrica/impl/ob/t;)V

    return-object p2
.end method
