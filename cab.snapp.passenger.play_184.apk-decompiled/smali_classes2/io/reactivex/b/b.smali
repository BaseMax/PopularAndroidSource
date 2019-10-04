.class public final Lio/reactivex/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/disposables/c;


# instance fields
.field a:Lio/reactivex/internal/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/l<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "disposables is null"

    .line 59
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    new-instance v0, Lio/reactivex/internal/util/l;

    invoke-direct {v0}, Lio/reactivex/internal/util/l;-><init>()V

    iput-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    const-string v1, "A Disposable item in the disposables sequence is null"

    .line 62
    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/l;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lio/reactivex/b/c;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "disposables is null"

    .line 45
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lio/reactivex/internal/util/l;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/l;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    .line 47
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "A Disposable in the disposables array is null"

    .line 48
    invoke-static {v2, v3}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    invoke-virtual {v3, v2}, Lio/reactivex/internal/util/l;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lio/reactivex/internal/util/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/l<",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0}, Lio/reactivex/internal/util/l;->keys()[Ljava/lang/Object;

    move-result-object p0

    .line 237
    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v4, p0, v0

    .line 238
    instance-of v5, v4, Lio/reactivex/b/c;

    if-eqz v5, :cond_2

    .line 240
    :try_start_0
    check-cast v4, Lio/reactivex/b/c;

    invoke-interface {v4}, Lio/reactivex/b/c;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 242
    invoke-static {v4}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v3, :cond_1

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    .line 251
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 252
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 254
    :cond_4
    new-instance p0, Lio/reactivex/c/a;

    invoke-direct {p0, v3}, Lio/reactivex/c/a;-><init>(Ljava/lang/Iterable;)V

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method public final add(Lio/reactivex/b/c;)Z
    .locals 1

    const-string v0, "disposable is null"

    .line 99
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-nez v0, :cond_2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lio/reactivex/internal/util/l;

    invoke-direct {v0}, Lio/reactivex/internal/util/l;-><init>()V

    .line 106
    iput-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    .line 108
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/l;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 109
    monitor-exit p0

    return p1

    .line 111
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 113
    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public final varargs addAll([Lio/reactivex/b/c;)Z
    .locals 6

    const-string v0, "disposables is null"

    .line 125
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lio/reactivex/internal/util/l;

    array-length v3, p1

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Lio/reactivex/internal/util/l;-><init>(I)V

    .line 132
    iput-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    .line 134
    :cond_0
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    const-string v5, "A Disposable in the disposables array is null"

    .line 135
    invoke-static {v4, v5}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0, v4}, Lio/reactivex/internal/util/l;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    monitor-exit p0

    return v2

    .line 140
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 142
    :cond_3
    :goto_1
    array-length v0, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 143
    invoke-interface {v3}, Lio/reactivex/b/c;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method public final clear()V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-eqz v0, :cond_1

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    const/4 v1, 0x0

    .line 203
    iput-object v1, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {v0}, Lio/reactivex/b/b;->a(Lio/reactivex/internal/util/l;)V

    return-void

    :catchall_0
    move-exception v0

    .line 204
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final delete(Lio/reactivex/b/c;)Z
    .locals 2

    const-string v0, "disposables is null"

    .line 172
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 176
    :cond_0
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-eqz v0, :cond_1

    .line 178
    monitor-exit p0

    return v1

    .line 181
    :cond_1
    iget-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/l;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 183
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 185
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final dispose()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-eqz v0, :cond_1

    .line 75
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    .line 78
    iget-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {v0}, Lio/reactivex/b/b;->a(Lio/reactivex/internal/util/l;)V

    return-void

    :catchall_0
    move-exception v0

    .line 80
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    return v0
.end method

.method public final remove(Lio/reactivex/b/c;)Z
    .locals 1

    .line 156
    invoke-virtual {p0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 2

    .line 214
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 217
    :cond_0
    monitor-enter p0

    .line 218
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/b/b;->b:Z

    if-eqz v0, :cond_1

    .line 219
    monitor-exit p0

    return v1

    .line 221
    :cond_1
    iget-object v0, p0, Lio/reactivex/b/b;->a:Lio/reactivex/internal/util/l;

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v0}, Lio/reactivex/internal/util/l;->size()I

    move-result v1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
