.class final Lio/reactivex/internal/operators/c/ad$a$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ad$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/ad$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ad$a<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Z

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ad$a;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ad$a<",
            "TT;TU;>;JTT;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ad$a$a;->a:Lio/reactivex/internal/operators/c/ad$a;

    .line 149
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ad$a$a;->b:J

    .line 150
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ad$a$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->a:Lio/reactivex/internal/operators/c/ad$a;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/ad$a$a;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ad$a$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/internal/operators/c/ad$a;->a(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 181
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->d:Z

    .line 185
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ad$a$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->d:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->d:Z

    .line 176
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ad$a$a;->a:Lio/reactivex/internal/operators/c/ad$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/ad$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 155
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ad$a$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/ad$a$a;->d:Z

    .line 159
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ad$a$a;->dispose()V

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ad$a$a;->a()V

    return-void
.end method
