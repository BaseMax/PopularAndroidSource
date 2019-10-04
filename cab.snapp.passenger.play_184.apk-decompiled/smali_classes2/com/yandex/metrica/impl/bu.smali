.class public Lcom/yandex/metrica/impl/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/yandex/metrica/impl/ob/ai;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/yandex/metrica/impl/an;

.field c:Z

.field private d:Lcom/yandex/metrica/impl/ob/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/metrica/impl/ob/mg;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/an;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/yandex/metrica/impl/ob/mg;",
            "Lcom/yandex/metrica/impl/an;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bu;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bu;->c:Z

    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/bu;->d:Lcom/yandex/metrica/impl/ob/ai;

    .line 37
    iput-object p2, p0, Lcom/yandex/metrica/impl/bu;->e:Lcom/yandex/metrica/impl/ob/mg;

    .line 38
    iput-object p3, p0, Lcom/yandex/metrica/impl/bu;->b:Lcom/yandex/metrica/impl/an;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method c()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/bu;->e:Lcom/yandex/metrica/impl/ob/mg;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bu;->b:Lcom/yandex/metrica/impl/an;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/mg;->a(Lcom/yandex/metrica/impl/an;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/bu;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bu;->c:Z

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bu;->a()V

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/bu;->c:Z

    .line 51
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/bu;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bu;->c:Z

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bu;->e()V

    .line 62
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bu;->a()V

    .line 64
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method e()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/bu;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bu;->c:Z

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bu;->c()V

    .line 72
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Lcom/yandex/metrica/impl/ob/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/bu;->d:Lcom/yandex/metrica/impl/ob/ai;

    return-object v0
.end method
