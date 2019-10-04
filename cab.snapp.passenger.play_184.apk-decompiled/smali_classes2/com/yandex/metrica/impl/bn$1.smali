.class Lcom/yandex/metrica/impl/bn$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/bn;->a()Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/yandex/metrica/impl/am$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/bn$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/bn$b;-><init>(B)V

    const/16 v2, 0x1d

    invoke-virtual {p0, v2, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/bn$c;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/bn$c;-><init>(B)V

    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/bn$d;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bn$d;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/bn$e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bn$e;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/bn$f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bn$f;-><init>()V

    const/16 v1, 0x3e

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/yandex/metrica/impl/bn$g;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bn$g;-><init>()V

    const/16 v1, 0x42

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/bn$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bn$a;-><init>()V

    const/16 v1, 0x43

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/yandex/metrica/impl/bn$h;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bn$h;-><init>()V

    const/16 v1, 0x44

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bn$1;->put(ILjava/lang/Object;)V

    return-void
.end method
