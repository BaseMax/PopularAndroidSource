.class abstract Lio/reactivex/internal/operators/flowable/w$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/w$e;
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/operators/flowable/w$e<",
        "TR;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/w$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/w$d<",
            "TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field e:Lorg/b/d;

.field f:I

.field g:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile h:Z

.field volatile i:Z

.field final j:Lio/reactivex/internal/util/b;

.field volatile k:Z

.field l:I


# direct methods
.method constructor <init>(Lio/reactivex/e/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w$a;->b:Lio/reactivex/e/h;

    .line 103
    iput p2, p0, Lio/reactivex/internal/operators/flowable/w$a;->c:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 104
    iput p2, p0, Lio/reactivex/internal/operators/flowable/w$a;->d:I

    .line 105
    new-instance p1, Lio/reactivex/internal/operators/flowable/w$d;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/w$d;-><init>(Lio/reactivex/internal/operators/flowable/w$e;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w$a;->a:Lio/reactivex/internal/operators/flowable/w$d;

    .line 106
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w$a;->j:Lio/reactivex/internal/util/b;

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract b()V
.end method

.method public final innerComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->k:Z

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$a;->a()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->h:Z

    .line 165
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 152
    iget v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/w$a;->e:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 155
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/w$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w$a;->e:Lorg/b/d;

    .line 114
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 115
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x7

    .line 116
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    iput v1, p0, Lio/reactivex/internal/operators/flowable/w$a;->l:I

    .line 119
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->g:Lio/reactivex/internal/b/j;

    .line 120
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/w$a;->h:Z

    .line 122
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$a;->b()V

    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$a;->a()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 128
    iput v1, p0, Lio/reactivex/internal/operators/flowable/w$a;->l:I

    .line 129
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->g:Lio/reactivex/internal/b/j;

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$a;->b()V

    .line 133
    iget v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 138
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/w$a;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->g:Lio/reactivex/internal/b/j;

    .line 140
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$a;->b()V

    .line 142
    iget v0, p0, Lio/reactivex/internal/operators/flowable/w$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method
