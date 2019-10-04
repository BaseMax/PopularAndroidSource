.class public Lcom/yandex/metrica/impl/ob/kj;
.super Lcom/yandex/metrica/impl/ob/ow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/ow<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/kp;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/kj$1;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/kj$1;-><init>(Lcom/yandex/metrica/impl/ob/kp;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/oy;
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/ob/ow;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object v0

    return-object v0
.end method
