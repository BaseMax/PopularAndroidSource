.class public final Lc/e/a/a/n/p;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lc/e/a/a/n/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/n/A;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/a/n/j;

.field public d:Lc/e/a/a/n/j;

.field public e:Lc/e/a/a/n/j;

.field public f:Lc/e/a/a/n/j;

.field public g:Lc/e/a/a/n/j;

.field public h:Lc/e/a/a/n/j;

.field public i:Lc/e/a/a/n/j;

.field public j:Lc/e/a/a/n/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/e/a/a/n/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/n/p;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lc/e/a/a/n/j;

    iput-object p2, p0, Lc/e/a/a/n/p;->c:Lc/e/a/a/n/j;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/n/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/n/l;)J
    .locals 2

    .line 9
    iget-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 10
    iget-object v0, p1, Lc/e/a/a/n/l;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p1, Lc/e/a/a/n/l;->a:Landroid/net/Uri;

    invoke-static {v1}, Lc/e/a/a/o/I;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v0, p1, Lc/e/a/a/n/l;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lc/e/a/a/n/p;->b()Lc/e/a/a/n/j;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/n/p;->e()Lc/e/a/a/n/j;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {p0}, Lc/e/a/a/n/p;->b()Lc/e/a/a/n/j;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {p0}, Lc/e/a/a/n/p;->c()Lc/e/a/a/n/j;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_1

    :cond_4
    const-string v1, "rtmp"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {p0}, Lc/e/a/a/n/p;->g()Lc/e/a/a/n/j;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_1

    :cond_5
    const-string v1, "data"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {p0}, Lc/e/a/a/n/p;->d()Lc/e/a/a/n/j;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_1

    :cond_6
    const-string v1, "rawresource"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p0}, Lc/e/a/a/n/p;->f()Lc/e/a/a/n/j;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_1

    .line 26
    :cond_7
    iget-object v0, p0, Lc/e/a/a/n/p;->c:Lc/e/a/a/n/j;

    iput-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    .line 27
    :goto_1
    iget-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    invoke-interface {v0, p1}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lc/e/a/a/n/j;->a()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->c:Lc/e/a/a/n/j;

    invoke-interface {v0, p1}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/n/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/e/a/a/n/p;->d:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/A;)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/n/p;->e:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/A;)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/n/p;->f:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/A;)V

    .line 6
    iget-object v0, p0, Lc/e/a/a/n/p;->g:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/A;)V

    .line 7
    iget-object v0, p0, Lc/e/a/a/n/p;->h:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/A;)V

    .line 8
    iget-object v0, p0, Lc/e/a/a/n/p;->i:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/A;)V

    return-void
.end method

.method public final a(Lc/e/a/a/n/j;)V
    .locals 2

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lc/e/a/a/n/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lc/e/a/a/n/p;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/n/A;

    invoke-interface {p1, v1}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/n/j;Lc/e/a/a/n/A;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1, p2}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    :cond_0
    return-void
.end method

.method public final b()Lc/e/a/a/n/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->e:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lc/e/a/a/n/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/e/a/a/n/p;->e:Lc/e/a/a/n/j;

    .line 3
    iget-object v0, p0, Lc/e/a/a/n/p;->e:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/n/p;->e:Lc/e/a/a/n/j;

    return-object v0
.end method

.method public final c()Lc/e/a/a/n/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->f:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lc/e/a/a/n/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/e/a/a/n/p;->f:Lc/e/a/a/n/j;

    .line 3
    iget-object v0, p0, Lc/e/a/a/n/p;->f:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/n/p;->f:Lc/e/a/a/n/j;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lc/e/a/a/n/j;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()Lc/e/a/a/n/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->h:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/e/a/a/n/h;

    invoke-direct {v0}, Lc/e/a/a/n/h;-><init>()V

    iput-object v0, p0, Lc/e/a/a/n/p;->h:Lc/e/a/a/n/j;

    .line 3
    iget-object v0, p0, Lc/e/a/a/n/p;->h:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/n/p;->h:Lc/e/a/a/n/j;

    return-object v0
.end method

.method public final e()Lc/e/a/a/n/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->d:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lc/e/a/a/n/p;->d:Lc/e/a/a/n/j;

    .line 3
    iget-object v0, p0, Lc/e/a/a/n/p;->d:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/n/p;->d:Lc/e/a/a/n/j;

    return-object v0
.end method

.method public final f()Lc/e/a/a/n/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->i:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lc/e/a/a/n/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/e/a/a/n/p;->i:Lc/e/a/a/n/j;

    .line 3
    iget-object v0, p0, Lc/e/a/a/n/p;->i:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/n/p;->i:Lc/e/a/a/n/j;

    return-object v0
.end method

.method public final g()Lc/e/a/a/n/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->g:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/n/j;

    iput-object v0, p0, Lc/e/a/a/n/p;->g:Lc/e/a/a/n/j;

    .line 4
    iget-object v0, p0, Lc/e/a/a/n/p;->g:Lc/e/a/a/n/j;

    invoke-virtual {p0, v0}, Lc/e/a/a/n/p;->a(Lc/e/a/a/n/j;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 6
    invoke-static {v0, v1}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lc/e/a/a/n/p;->g:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lc/e/a/a/n/p;->c:Lc/e/a/a/n/j;

    iput-object v0, p0, Lc/e/a/a/n/p;->g:Lc/e/a/a/n/j;

    .line 9
    :cond_0
    iget-object v0, p0, Lc/e/a/a/n/p;->g:Lc/e/a/a/n/j;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lc/e/a/a/n/j;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/p;->j:Lc/e/a/a/n/j;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/n/j;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/n/j;->read([BII)I

    move-result p1

    return p1
.end method
