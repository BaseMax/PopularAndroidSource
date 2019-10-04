.class final Lio/reactivex/internal/operators/flowable/ao$a;
.super Lio/reactivex/internal/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/a<",
        "TT;TT;>;"
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
.method constructor <init>(Lio/reactivex/internal/b/a;Lio/reactivex/e/h;Lio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;TK;>;",
            "Lio/reactivex/e/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1}, Lio/reactivex/internal/f/a;-><init>(Lio/reactivex/internal/b/a;)V

    .line 152
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ao$a;->a:Lio/reactivex/e/h;

    .line 153
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ao$a;->b:Lio/reactivex/e/d;

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

    .line 158
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ao$a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ao$a;->f:Lorg/b/d;

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

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$a;->g:Lio/reactivex/internal/b/g;

    invoke-interface {v0}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$a;->a:Lio/reactivex/e/h;

    invoke-interface {v1, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ao$a;->d:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 210
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ao$a;->d:Z

    .line 211
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$a;->c:Ljava/lang/Object;

    return-object v0

    .line 215
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ao$a;->b:Lio/reactivex/e/d;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ao$a;->c:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$a;->c:Ljava/lang/Object;

    return-object v0

    .line 219
    :cond_3
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$a;->c:Ljava/lang/Object;

    .line 220
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ao$a;->i:I

    if-eq v0, v3, :cond_0

    .line 221
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$a;->f:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    goto :goto_0
.end method

.method public final requestFusion(I)I
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ao$a;->a(I)I

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

    .line 165
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ao$a;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ao$a;->i:I

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ao$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 175
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ao$a;->a:Lio/reactivex/e/h;

    invoke-interface {v2, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 176
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/ao$a;->d:Z

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ao$a;->b:Lio/reactivex/e/d;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ao$a;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 178
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/ao$a;->c:Ljava/lang/Object;

    if-eqz v3, :cond_3

    return v1

    .line 183
    :cond_2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ao$a;->d:Z

    .line 184
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/ao$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ao$a;->e:Lio/reactivex/internal/b/a;

    invoke-interface {v1, p1}, Lio/reactivex/internal/b/a;->onNext(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception p1

    .line 187
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ao$a;->a(Ljava/lang/Throwable;)V

    return v0
.end method
