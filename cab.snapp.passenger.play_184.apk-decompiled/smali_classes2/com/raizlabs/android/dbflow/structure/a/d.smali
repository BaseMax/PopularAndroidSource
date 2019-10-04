.class public final Lcom/raizlabs/android/dbflow/structure/a/d;
.super Lcom/raizlabs/android/dbflow/structure/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/a/c<",
        "TTModel;",
        "Lcom/raizlabs/android/dbflow/structure/a/b<",
        "Ljava/lang/Long;",
        "TTModel;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 25
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/a/b;

    invoke-direct {v0, p1}, Lcom/raizlabs/android/dbflow/structure/a/b;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/structure/a/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static newInstance(I)Lcom/raizlabs/android/dbflow/structure/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/raizlabs/android/dbflow/structure/a/d<",
            "TTModel;>;"
        }
    .end annotation

    if-gtz p0, :cond_0

    const/16 p0, 0x19

    .line 21
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/a/d;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/a/d;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final addModel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTModel;)V"
        }
    .end annotation

    .line 30
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/a/b;

    monitor-enter v0

    .line 32
    :try_start_0
    check-cast p1, Ljava/lang/Number;

    .line 33
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/structure/a/b;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/raizlabs/android/dbflow/structure/a/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A ModelLruCache must use an id that can cast toa Number to convert it into a long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/a/b;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/structure/a/b;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/a/b;->evictAll()V

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTModel;"
        }
    .end annotation

    .line 69
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/a/b;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/a/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A ModelLruCache must use an id that can cast toa Number to convert it into a long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTModel;"
        }
    .end annotation

    .line 44
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/a/b;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/structure/a/b;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/a/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A ModelLruCache uses an id that can cast toa Number to convert it into a long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCacheSize(I)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a/d;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/a/b;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/a/b;->resize(I)V

    return-void
.end method
