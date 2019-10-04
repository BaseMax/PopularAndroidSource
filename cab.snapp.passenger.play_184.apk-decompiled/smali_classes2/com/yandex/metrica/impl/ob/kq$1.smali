.class Lcom/yandex/metrica/impl/ob/kq$1;
.super Lcom/yandex/metrica/impl/ob/kn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/kn<",
        "Lcom/yandex/metrica/impl/ob/km<",
        "Lcom/yandex/metrica/impl/ob/ks;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/kn;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/metrica/impl/ob/km<",
            "Lcom/yandex/metrica/impl/ob/ks;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/km;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ks;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ks;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/yandex/metrica/impl/ob/km;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ks;)V

    return-object v0
.end method
