.class public Lcom/yandex/metrica/impl/ob/bn;
.super Lcom/yandex/metrica/impl/ob/lb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/lb<",
        "Lcom/yandex/metrica/impl/ob/bq;",
        "Lcom/yandex/metrica/impl/ob/bq$a;",
        "Lcom/yandex/metrica/impl/ob/bq$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/t;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bq$b;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/bn$1;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/yandex/metrica/impl/ob/lb;-><init>(Lcom/yandex/metrica/impl/ob/kz$d;Lcom/yandex/metrica/impl/ob/lb$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V

    .line 35
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/t;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/t;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/t;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 3

    monitor-enter p0

    .line 40
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/kz$c;

    .line 41
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bn;->b(Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/kz$c;-><init>(Lcom/yandex/metrica/impl/ob/ma;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/kz$c;)V

    .line 43
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn;->b()V

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Lcom/yandex/metrica/impl/ob/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
