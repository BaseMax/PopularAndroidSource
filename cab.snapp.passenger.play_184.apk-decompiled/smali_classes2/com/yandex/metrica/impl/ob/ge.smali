.class public abstract Lcom/yandex/metrica/impl/ob/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fr;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/yandex/metrica/impl/ob/ge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fr;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ge;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    .line 37
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ge;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/ge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/ge;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->b(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/fr;

    .line 67
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/ge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/ge;",
            ">(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/fr;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/fr;

    .line 59
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/ge;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/fr;

    .line 75
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b(Ljava/lang/String;I)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;J)J
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/ge;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/fr;

    .line 51
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 1

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fr;->b()V

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/je;
    .locals 2

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ge;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/ge;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/fr;

    .line 108
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ge;->a:Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fr;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
