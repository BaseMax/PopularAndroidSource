.class public abstract Lcom/yandex/metrica/impl/ob/kn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/km;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/ob/kp;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->a:Ljava/util/HashMap;

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/kp;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kp;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->b:Lcom/yandex/metrica/impl/ob/kp;

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kn;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/kn;)Lcom/yandex/metrica/impl/ob/kp;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/kn;->b:Lcom/yandex/metrica/impl/ob/kp;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/km;

    if-nez v0, :cond_2

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kn;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/km;

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->b:Lcom/yandex/metrica/impl/ob/kp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->f()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/yandex/metrica/impl/ob/kn$1;

    invoke-direct {v2, p0, p1}, Lcom/yandex/metrica/impl/ob/kn$1;-><init>(Lcom/yandex/metrica/impl/ob/kn;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 44
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected abstract a(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
