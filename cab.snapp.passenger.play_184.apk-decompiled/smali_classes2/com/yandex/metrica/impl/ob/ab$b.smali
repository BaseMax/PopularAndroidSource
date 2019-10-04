.class Lcom/yandex/metrica/impl/ob/ab$b;
.super Lcom/yandex/metrica/impl/ob/ab$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/iv;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ab$g;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/iv;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$b;->e()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    .line 393
    instance-of v0, v0, Lcom/yandex/metrica/impl/ob/ao;

    return v0
.end method

.method protected b()V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$b;->c()Lcom/yandex/metrica/impl/ob/iv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iv;->a()V

    return-void
.end method
