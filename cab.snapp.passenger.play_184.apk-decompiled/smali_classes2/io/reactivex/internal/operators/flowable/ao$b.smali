.class final Lio/reactivex/internal/operators/flowable/ao$b;
.super Lio/reactivex/internal/f/b;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/b<",
        "TT;TT;>;",
        "Lio/reactivex/internal/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;Lio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;TK;>;",
            "Lio/reactivex/e/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/b;-><init>(Lorg/b/c;)V

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ao$b;->a:Lio/reactivex/e/h;

    .line 62
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ao$b;->b:Lio/reactivex/e/d;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ao$b;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ao$b;->f:Lorg/b/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->g:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$b;->a:Lio/reactivex/e/h;

    invoke-interface {v1, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ao$b;->d:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 120
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ao$b;->d:Z

    .line 121
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$b;->c:Ljava/lang/Object;

    return-object v0

    .line 125
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ao$b;->b:Lio/reactivex/e/d;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ao$b;->c:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$b;->c:Ljava/lang/Object;

    return-object v0

    .line 129
    :cond_3
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$b;->c:Ljava/lang/Object;

    .line 130
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->i:I

    if-eq v0, v3, :cond_0

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->f:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    goto :goto_0
.end method

.method public final requestFusion(I)I
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ao$b;->a(I)I

    move-result p1

    return p1
.end method

.method public final tryOnNext(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->i:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->e:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return v2

    .line 85
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->a:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ao$b;->d:Z

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ao$b;->b:Lio/reactivex/e/d;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ao$b;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 88
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->c:Ljava/lang/Object;

    if-eqz v3, :cond_3

    return v1

    .line 93
    :cond_2
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ao$b;->d:Z

    .line 94
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$b;->e:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return v2

    :catchall_0
    move-exception p1

    .line 97
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ao$b;->a(Ljava/lang/Throwable;)V

    return v2
.end method
