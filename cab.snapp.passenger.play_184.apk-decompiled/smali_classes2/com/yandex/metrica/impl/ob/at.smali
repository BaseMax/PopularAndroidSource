.class public Lcom/yandex/metrica/impl/ob/at;
.super Lcom/yandex/metrica/impl/ob/la;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/at$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/la<",
        "Lcom/yandex/metrica/impl/ob/le;",
        "Lcom/yandex/metrica/impl/ob/le$a;",
        "Lcom/yandex/metrica/impl/ob/le$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/le$b;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/la;-><init>(Lcom/yandex/metrica/impl/ob/kz$b;Lcom/yandex/metrica/impl/ob/lb$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/at;->b(Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/le$a;

    .line 37
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/le$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/kz$c;

    .line 39
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/kz$c;-><init>(Lcom/yandex/metrica/impl/ob/ma;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/at;->a(Lcom/yandex/metrica/impl/ob/kz$c;)V

    .line 41
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
