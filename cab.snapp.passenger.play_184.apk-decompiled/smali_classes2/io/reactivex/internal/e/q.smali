.class public final Lio/reactivex/internal/e/q;
.super Lio/reactivex/ah;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/e/q$g;,
        Lio/reactivex/internal/e/q$e;,
        Lio/reactivex/internal/e/q$a;,
        Lio/reactivex/internal/e/q$d;,
        Lio/reactivex/internal/e/q$b;,
        Lio/reactivex/internal/e/q$c;,
        Lio/reactivex/internal/e/q$f;
    }
.end annotation


# static fields
.field static final b:Lio/reactivex/b/c;

.field static final c:Lio/reactivex/b/c;


# instance fields
.field private final d:Lio/reactivex/ah;

.field private final e:Lio/reactivex/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/a<",
            "Lio/reactivex/j<",
            "Lio/reactivex/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lio/reactivex/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lio/reactivex/internal/e/q$g;

    invoke-direct {v0}, Lio/reactivex/internal/e/q$g;-><init>()V

    sput-object v0, Lio/reactivex/internal/e/q;->b:Lio/reactivex/b/c;

    .line 155
    invoke-static {}, Lio/reactivex/b/d;->disposed()Lio/reactivex/b/c;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/e/q;->c:Lio/reactivex/b/c;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/e/h;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "Lio/reactivex/a;",
            ">;>;",
            "Lio/reactivex/a;",
            ">;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lio/reactivex/ah;-><init>()V

    .line 111
    iput-object p2, p0, Lio/reactivex/internal/e/q;->d:Lio/reactivex/ah;

    .line 113
    invoke-static {}, Lio/reactivex/h/c;->create()Lio/reactivex/h/c;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/h/c;->toSerialized()Lio/reactivex/h/a;

    move-result-object p2

    iput-object p2, p0, Lio/reactivex/internal/e/q;->e:Lio/reactivex/h/a;

    .line 117
    :try_start_0
    iget-object p2, p0, Lio/reactivex/internal/e/q;->e:Lio/reactivex/h/a;

    invoke-interface {p1, p2}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/a;

    invoke-virtual {p1}, Lio/reactivex/a;->subscribe()Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/e/q;->f:Lio/reactivex/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final createWorker()Lio/reactivex/ah$c;
    .locals 4

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/e/q;->d:Lio/reactivex/ah;

    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 139
    invoke-static {}, Lio/reactivex/h/c;->create()Lio/reactivex/h/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/h/c;->toSerialized()Lio/reactivex/h/a;

    move-result-object v1

    .line 141
    new-instance v2, Lio/reactivex/internal/e/q$a;

    invoke-direct {v2, v0}, Lio/reactivex/internal/e/q$a;-><init>(Lio/reactivex/ah$c;)V

    invoke-virtual {v1, v2}, Lio/reactivex/h/a;->map(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object v2

    .line 144
    new-instance v3, Lio/reactivex/internal/e/q$e;

    invoke-direct {v3, v1, v0}, Lio/reactivex/internal/e/q$e;-><init>(Lio/reactivex/h/a;Lio/reactivex/ah$c;)V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/e/q;->e:Lio/reactivex/h/a;

    invoke-virtual {v0, v2}, Lio/reactivex/h/a;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public final dispose()V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/e/q;->f:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/e/q;->f:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    return v0
.end method
