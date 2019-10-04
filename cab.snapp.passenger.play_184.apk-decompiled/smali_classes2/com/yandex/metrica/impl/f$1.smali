.class Lcom/yandex/metrica/impl/f$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/f;->a()Landroid/util/SparseArray;
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


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/f;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/f;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/f$1;->a:Lcom/yandex/metrica/impl/f;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 34
    new-instance p1, Lcom/yandex/metrica/impl/f$a;

    iget-object v0, p0, Lcom/yandex/metrica/impl/f$1;->a:Lcom/yandex/metrica/impl/f;

    .line 35
    invoke-static {v0}, Lcom/yandex/metrica/impl/f;->a(Lcom/yandex/metrica/impl/f;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/f$a;-><init>(Lcom/yandex/metrica/impl/ob/gc;)V

    const/16 v0, 0x2f

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/f$1;->put(ILjava/lang/Object;)V

    .line 36
    new-instance p1, Lcom/yandex/metrica/impl/f$b;

    iget-object v0, p0, Lcom/yandex/metrica/impl/f$1;->a:Lcom/yandex/metrica/impl/f;

    .line 37
    invoke-static {v0}, Lcom/yandex/metrica/impl/f;->a(Lcom/yandex/metrica/impl/f;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/f$b;-><init>(Lcom/yandex/metrica/impl/ob/gc;)V

    const/16 v0, 0x42

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/f$1;->put(ILjava/lang/Object;)V

    return-void
.end method
