.class public final Lc/b/a/a/b$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/b/a/a/b$c;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lc/b/a/a/b;


# direct methods
.method public constructor <init>(Lc/b/a/a/b;Lc/b/a/a/b$c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/b/a/a/b$b;->d:Lc/b/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lc/b/a/a/b$b;->a:Lc/b/a/a/b$c;

    .line 4
    invoke-static {p2}, Lc/b/a/a/b$c;->d(Lc/b/a/a/b$c;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lc/b/a/a/b;->b(Lc/b/a/a/b;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lc/b/a/a/b$b;->b:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lc/b/a/a/b;Lc/b/a/a/b$c;Lc/b/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/b/a/a/b$b;-><init>(Lc/b/a/a/b;Lc/b/a/a/b$c;)V

    return-void
.end method

.method public static synthetic a(Lc/b/a/a/b$b;)Lc/b/a/a/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/b$b;->a:Lc/b/a/a/b$c;

    return-object p0
.end method

.method public static synthetic b(Lc/b/a/a/b$b;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/b$b;->b:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/b/a/a/b$b;->d:Lc/b/a/a/b;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/b$b;->a:Lc/b/a/a/b$c;

    invoke-static {v1}, Lc/b/a/a/b$c;->e(Lc/b/a/a/b$c;)Lc/b/a/a/b$b;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 4
    iget-object v1, p0, Lc/b/a/a/b$b;->a:Lc/b/a/a/b$c;

    invoke-static {v1}, Lc/b/a/a/b$c;->d(Lc/b/a/a/b$c;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lc/b/a/a/b$b;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 6
    :cond_0
    iget-object v1, p0, Lc/b/a/a/b$b;->a:Lc/b/a/a/b$c;

    invoke-virtual {v1, p1}, Lc/b/a/a/b$c;->b(I)Ljava/io/File;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lc/b/a/a/b$b;->d:Lc/b/a/a/b;

    invoke-static {v1}, Lc/b/a/a/b;->d(Lc/b/a/a/b;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lc/b/a/a/b$b;->d:Lc/b/a/a/b;

    invoke-static {v1}, Lc/b/a/a/b;->d(Lc/b/a/a/b;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    monitor-exit v0

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lc/b/a/a/b$b;->d:Lc/b/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc/b/a/a/b;->a(Lc/b/a/a/b;Lc/b/a/a/b$b;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lc/b/a/a/b$b;->c:Z

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lc/b/a/a/b$b;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/b$b;->d:Lc/b/a/a/b;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lc/b/a/a/b;->a(Lc/b/a/a/b;Lc/b/a/a/b$b;Z)V

    .line 2
    iput-boolean v1, p0, Lc/b/a/a/b$b;->c:Z

    return-void
.end method
