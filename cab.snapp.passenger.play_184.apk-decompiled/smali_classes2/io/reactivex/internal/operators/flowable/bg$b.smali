.class final Lio/reactivex/internal/operators/flowable/bg$b;
.super Lio/reactivex/internal/operators/flowable/bg$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/bg$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/bg$c;-><init>([Ljava/lang/Object;)V

    .line 114
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bg$b;->a:Lorg/b/c;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bg$b;->b:[Ljava/lang/Object;

    .line 120
    array-length v1, v0

    .line 121
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bg$b;->a:Lorg/b/c;

    .line 123
    iget v3, p0, Lio/reactivex/internal/operators/flowable/bg$b;->c:I

    :goto_0
    if-eq v3, v1, :cond_2

    .line 124
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/bg$b;->d:Z

    if-eqz v4, :cond_0

    return-void

    .line 127
    :cond_0
    aget-object v4, v0, v3

    if-nez v4, :cond_1

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "The element at index "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 132
    :cond_1
    invoke-interface {v2, v4}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bg$b;->d:Z

    if-eqz v0, :cond_3

    return-void

    .line 138
    :cond_3
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method final a(J)V
    .locals 10

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bg$b;->b:[Ljava/lang/Object;

    .line 145
    array-length v1, v0

    .line 146
    iget v2, p0, Lio/reactivex/internal/operators/flowable/bg$b;->c:I

    .line 147
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/bg$b;->a:Lorg/b/c;

    const-wide/16 v4, 0x0

    move-wide v6, p1

    :cond_0
    move-wide p1, v4

    :cond_1
    :goto_0
    cmp-long v8, p1, v6

    if-eqz v8, :cond_4

    if-eq v2, v1, :cond_4

    .line 152
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/bg$b;->d:Z

    if-eqz v8, :cond_2

    return-void

    .line 156
    :cond_2
    aget-object v8, v0, v2

    if-nez v8, :cond_3

    .line 159
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The element at index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 162
    :cond_3
    invoke-interface {v3, v8}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr p1, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ne v2, v1, :cond_6

    .line 170
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/bg$b;->d:Z

    if-nez p1, :cond_5

    .line 171
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    :cond_5
    return-void

    .line 176
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bg$b;->get()J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-nez v8, :cond_1

    .line 178
    iput v2, p0, Lio/reactivex/internal/operators/flowable/bg$b;->c:I

    neg-long p1, p1

    .line 179
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/bg$b;->addAndGet(J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_0

    return-void
.end method
