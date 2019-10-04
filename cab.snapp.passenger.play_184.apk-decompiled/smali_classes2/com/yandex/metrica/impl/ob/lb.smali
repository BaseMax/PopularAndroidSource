.class public abstract Lcom/yandex/metrica/impl/ob/lb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/lb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/kz;",
        "A:",
        "Ljava/lang/Object;",
        "L::Lcom/yandex/metrica/impl/ob/kz$d<",
        "TT;",
        "Lcom/yandex/metrica/impl/ob/kz$c<",
        "TA;>;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/kz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/ob/kz$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/kz$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "TA;>;"
        }
    .end annotation
.end field

.field private d:Lcom/yandex/metrica/impl/ob/lb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/lb$a<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/kz$d;Lcom/yandex/metrica/impl/ob/lb$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Lcom/yandex/metrica/impl/ob/lb$a<",
            "TA;>;",
            "Lcom/yandex/metrica/impl/ob/ma;",
            "Lcom/yandex/metrica/impl/ob/t;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lb;->b:Lcom/yandex/metrica/impl/ob/kz$d;

    .line 44
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/lb;->d:Lcom/yandex/metrica/impl/ob/lb$a;

    .line 45
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object p1

    const-class p2, Lcom/yandex/metrica/impl/ob/p;

    new-instance v0, Lcom/yandex/metrica/impl/ob/lb$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/lb$1;-><init>(Lcom/yandex/metrica/impl/ob/lb;)V

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/l;->a(Lcom/yandex/metrica/impl/ob/k;)Lcom/yandex/metrica/impl/ob/l$a;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/l$a;->a()Lcom/yandex/metrica/impl/ob/l;

    move-result-object v0

    .line 45
    invoke-virtual {p1, p0, p2, v0}, Lcom/yandex/metrica/impl/ob/h;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/l;)V

    .line 52
    new-instance p1, Lcom/yandex/metrica/impl/ob/kz$c;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/lb;->d:Lcom/yandex/metrica/impl/ob/lb$a;

    const/4 v0, 0x0

    .line 53
    invoke-interface {p2, v0, p4}, Lcom/yandex/metrica/impl/ob/lb$a;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/yandex/metrica/impl/ob/kz$c;-><init>(Lcom/yandex/metrica/impl/ob/ma;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/lb;->a(Lcom/yandex/metrica/impl/ob/kz$c;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Lcom/yandex/metrica/impl/ob/kz$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "TA;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lb;->c:Lcom/yandex/metrica/impl/ob/kz$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/kz$c;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lb;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/kz$c;-><init>(Lcom/yandex/metrica/impl/ob/ma;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/lb;->a(Lcom/yandex/metrica/impl/ob/kz$c;)V

    .line 75
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lb;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/t;",
            ")TA;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->d:Lcom/yandex/metrica/impl/ob/lb$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lb;->c:Lcom/yandex/metrica/impl/ob/kz$c;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/lb$a;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    :try_start_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->a:Lcom/yandex/metrica/impl/ob/kz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/yandex/metrica/impl/ob/ma;
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->c:Lcom/yandex/metrica/impl/ob/kz$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->c:Lcom/yandex/metrica/impl/ob/kz$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/yandex/metrica/impl/ob/kz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->a:Lcom/yandex/metrica/impl/ob/kz;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->b:Lcom/yandex/metrica/impl/ob/kz$d;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lb;->c:Lcom/yandex/metrica/impl/ob/kz$c;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/kz$d;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->a:Lcom/yandex/metrica/impl/ob/kz;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lb;->a:Lcom/yandex/metrica/impl/ob/kz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
