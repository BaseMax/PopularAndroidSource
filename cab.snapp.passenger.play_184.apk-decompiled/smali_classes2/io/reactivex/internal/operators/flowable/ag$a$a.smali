.class final Lio/reactivex/internal/operators/flowable/ag$a$a;
.super Lio/reactivex/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ag$a;
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
        "Lio/reactivex/k/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/ag$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ag$a<",
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
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ag$a;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ag$a<",
            "TT;TU;>;JTT;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lio/reactivex/k/b;-><init>()V

    .line 161
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->a:Lio/reactivex/internal/operators/flowable/ag$a;

    .line 165
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->b:J

    .line 166
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->a:Lio/reactivex/internal/operators/flowable/ag$a;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/ag$a;->a(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->d:Z

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ag$a$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->d:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->d:Z

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->a:Lio/reactivex/internal/operators/flowable/ag$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/ag$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 171
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ag$a$a;->d:Z

    .line 1111
    invoke-virtual {p0}, Lio/reactivex/k/b;->dispose()V

    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ag$a$a;->a()V

    return-void
.end method
