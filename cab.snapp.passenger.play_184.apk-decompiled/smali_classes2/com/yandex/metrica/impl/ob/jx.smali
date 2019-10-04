.class public Lcom/yandex/metrica/impl/ob/jx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 20
    sput-object v0, Lcom/yandex/metrica/impl/ob/jx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "String"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/yandex/metrica/impl/ob/jx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Number"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/yandex/metrica/impl/ob/jx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Counter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/ob/jx;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
