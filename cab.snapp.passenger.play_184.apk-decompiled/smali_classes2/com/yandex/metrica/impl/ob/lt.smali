.class public Lcom/yandex/metrica/impl/ob/lt;
.super Lcom/yandex/metrica/impl/ob/lb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/lb<",
        "Lcom/yandex/metrica/impl/ob/lf;",
        "Lcom/yandex/metrica/impl/ob/lf$a;",
        "Lcom/yandex/metrica/impl/ob/lf$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/lf$b;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/lt$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lt$1;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/yandex/metrica/impl/ob/lb;-><init>(Lcom/yandex/metrica/impl/ob/kz$d;Lcom/yandex/metrica/impl/ob/lb$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/kz$c;

    .line 38
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lt;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/lt;->b(Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/kz$c;-><init>(Lcom/yandex/metrica/impl/ob/ma;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/lt;->a(Lcom/yandex/metrica/impl/ob/kz$c;)V

    .line 40
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lt;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
