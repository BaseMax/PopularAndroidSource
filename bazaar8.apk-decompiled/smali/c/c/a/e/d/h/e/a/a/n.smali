.class public final Lc/c/a/e/d/h/e/a/a/n;
.super Ljava/lang/Object;
.source "VideoStorage.kt"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/a/a/n;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lc/c/a/e/d/h/e/a/a/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->e(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/h/e/a/a/m;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 9
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->PART_EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 12
    :cond_2
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    goto :goto_0

    .line 13
    :cond_3
    sget-object p1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->NOT_EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    :goto_0
    return-object p1
.end method

.method public final a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "video"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cover.jpeg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "subtitle"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lc/c/a/e/d/h/e/a/a/n;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "getBazaarVideosDirectory(context)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBazaarVideosDirectory(context).path"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v1, "off"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lc/c/a/e/d/h/e/a/a/n;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final e(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->TEMP:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->NOT_EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    :goto_0
    return-object p1
.end method

.method public final f(Ljava/lang/String;)J
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
