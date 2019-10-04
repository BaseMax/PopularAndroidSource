.class final Lio/reactivex/internal/operators/c/dd$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/disposables/a;

.field final d:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final f:[Lio/reactivex/internal/operators/c/dd$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/c/dd$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/al;ILio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dd$a;->a:Lio/reactivex/al;

    .line 73
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dd$a;->d:Lio/reactivex/ae;

    .line 74
    iput-object p4, p0, Lio/reactivex/internal/operators/c/dd$a;->e:Lio/reactivex/ae;

    .line 75
    iput-object p5, p0, Lio/reactivex/internal/operators/c/dd$a;->b:Lio/reactivex/e/d;

    const/4 p1, 0x2

    new-array p3, p1, [Lio/reactivex/internal/operators/c/dd$b;

    .line 78
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dd$a;->f:[Lio/reactivex/internal/operators/c/dd$b;

    .line 79
    new-instance p4, Lio/reactivex/internal/operators/c/dd$b;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/c/dd$b;-><init>(Lio/reactivex/internal/operators/c/dd$a;II)V

    aput-object p4, p3, p5

    .line 80
    new-instance p4, Lio/reactivex/internal/operators/c/dd$b;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/c/dd$b;-><init>(Lio/reactivex/internal/operators/c/dd$a;II)V

    aput-object p4, p3, p5

    .line 81
    new-instance p2, Lio/reactivex/internal/disposables/a;

    invoke-direct {p2, p1}, Lio/reactivex/internal/disposables/a;-><init>(I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/c/dd$a;->c:Lio/reactivex/internal/disposables/a;

    return-void
.end method

.method private a(Lio/reactivex/internal/d/c;Lio/reactivex/internal/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/d/c<",
            "TT;>;",
            "Lio/reactivex/internal/d/c<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dd$a;->g:Z

    .line 115
    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->clear()V

    .line 116
    invoke-virtual {p2}, Lio/reactivex/internal/d/c;->clear()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 12

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dd$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$a;->f:[Lio/reactivex/internal/operators/c/dd$b;

    const/4 v1, 0x0

    .line 127
    aget-object v2, v0, v1

    .line 128
    iget-object v3, v2, Lio/reactivex/internal/operators/c/dd$b;->b:Lio/reactivex/internal/d/c;

    const/4 v4, 0x1

    .line 129
    aget-object v0, v0, v4

    .line 130
    iget-object v5, v0, Lio/reactivex/internal/operators/c/dd$b;->b:Lio/reactivex/internal/d/c;

    const/4 v6, 0x1

    .line 135
    :cond_1
    iget-boolean v7, p0, Lio/reactivex/internal/operators/c/dd$a;->g:Z

    if-eqz v7, :cond_2

    .line 136
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    .line 137
    invoke-virtual {v5}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 141
    :cond_2
    iget-boolean v7, v2, Lio/reactivex/internal/operators/c/dd$b;->d:Z

    if-eqz v7, :cond_3

    .line 144
    iget-object v8, v2, Lio/reactivex/internal/operators/c/dd$b;->e:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 146
    invoke-direct {p0, v3, v5}, Lio/reactivex/internal/operators/c/dd$a;->a(Lio/reactivex/internal/d/c;Lio/reactivex/internal/d/c;)V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$a;->a:Lio/reactivex/al;

    invoke-interface {v0, v8}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 153
    :cond_3
    iget-boolean v8, v0, Lio/reactivex/internal/operators/c/dd$b;->d:Z

    if-eqz v8, :cond_4

    .line 155
    iget-object v9, v0, Lio/reactivex/internal/operators/c/dd$b;->e:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 157
    invoke-direct {p0, v3, v5}, Lio/reactivex/internal/operators/c/dd$a;->a(Lio/reactivex/internal/d/c;Lio/reactivex/internal/d/c;)V

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$a;->a:Lio/reactivex/al;

    invoke-interface {v0, v9}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 164
    :cond_4
    iget-object v9, p0, Lio/reactivex/internal/operators/c/dd$a;->h:Ljava/lang/Object;

    if-nez v9, :cond_5

    .line 165
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lio/reactivex/internal/operators/c/dd$a;->h:Ljava/lang/Object;

    .line 167
    :cond_5
    iget-object v9, p0, Lio/reactivex/internal/operators/c/dd$a;->h:Ljava/lang/Object;

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    .line 169
    :goto_0
    iget-object v10, p0, Lio/reactivex/internal/operators/c/dd$a;->i:Ljava/lang/Object;

    if-nez v10, :cond_7

    .line 170
    invoke-virtual {v5}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lio/reactivex/internal/operators/c/dd$a;->i:Ljava/lang/Object;

    .line 172
    :cond_7
    iget-object v10, p0, Lio/reactivex/internal/operators/c/dd$a;->i:Ljava/lang/Object;

    if-nez v10, :cond_8

    const/4 v10, 0x1

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$a;->a:Lio/reactivex/al;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    if-eq v9, v10, :cond_a

    .line 179
    invoke-direct {p0, v3, v5}, Lio/reactivex/internal/operators/c/dd$a;->a(Lio/reactivex/internal/d/c;Lio/reactivex/internal/d/c;)V

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$a;->a:Lio/reactivex/al;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_a
    if-nez v9, :cond_c

    if-nez v10, :cond_c

    .line 189
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/c/dd$a;->b:Lio/reactivex/e/d;

    iget-object v8, p0, Lio/reactivex/internal/operators/c/dd$a;->h:Ljava/lang/Object;

    iget-object v11, p0, Lio/reactivex/internal/operators/c/dd$a;->i:Ljava/lang/Object;

    invoke-interface {v7, v8, v11}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_b

    .line 199
    invoke-direct {p0, v3, v5}, Lio/reactivex/internal/operators/c/dd$a;->a(Lio/reactivex/internal/d/c;Lio/reactivex/internal/d/c;)V

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$a;->a:Lio/reactivex/al;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v7, 0x0

    .line 205
    iput-object v7, p0, Lio/reactivex/internal/operators/c/dd$a;->h:Ljava/lang/Object;

    .line 206
    iput-object v7, p0, Lio/reactivex/internal/operators/c/dd$a;->i:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 191
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 192
    invoke-direct {p0, v3, v5}, Lio/reactivex/internal/operators/c/dd$a;->a(Lio/reactivex/internal/d/c;Lio/reactivex/internal/d/c;)V

    .line 194
    iget-object v1, p0, Lio/reactivex/internal/operators/c/dd$a;->a:Lio/reactivex/al;

    invoke-interface {v1, v0}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_2
    if-nez v9, :cond_d

    if-eqz v10, :cond_1

    :cond_d
    neg-int v6, v6

    .line 214
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/c/dd$a;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 3

    .line 96
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dd$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dd$a;->g:Z

    .line 98
    iget-object v1, p0, Lio/reactivex/internal/operators/c/dd$a;->c:Lio/reactivex/internal/disposables/a;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/a;->dispose()V

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dd$a;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/operators/c/dd$a;->f:[Lio/reactivex/internal/operators/c/dd$b;

    const/4 v2, 0x0

    .line 102
    aget-object v2, v1, v2

    iget-object v2, v2, Lio/reactivex/internal/operators/c/dd$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    .line 103
    aget-object v0, v1, v0

    iget-object v0, v0, Lio/reactivex/internal/operators/c/dd$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dd$a;->g:Z

    return v0
.end method
