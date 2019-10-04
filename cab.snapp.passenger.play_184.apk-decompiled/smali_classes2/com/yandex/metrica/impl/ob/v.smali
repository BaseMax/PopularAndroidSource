.class public Lcom/yandex/metrica/impl/ob/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/v;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gd;)Lcom/yandex/metrica/impl/b;
    .locals 4

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/v;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/b;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gd;->a()Lcom/yandex/metrica/impl/b$a;

    move-result-object p2

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/b;

    iget-object v1, p2, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    iget-wide v2, p2, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/b;-><init>(Ljava/lang/String;J)V

    .line 28
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/v;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/z;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/gd;)Z
    .locals 5

    .line 36
    iget-wide v0, p1, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gd;->a()Lcom/yandex/metrica/impl/b$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/yandex/metrica/impl/b$a;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 37
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/gd;)V
    .locals 0

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
