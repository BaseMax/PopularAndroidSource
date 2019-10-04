.class public Lc/b/a/c/a/a/c;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lc/b/a/c/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/a/a/c$a;,
        Lc/b/a/c/a/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/a/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lc/b/a/c/a/a/e;

.field public c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lc/b/a/c/a/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/a/a/c;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lc/b/a/c/a/a/c;->b:Lc/b/a/c/a/a/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lc/b/a/c/a/a/c;
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/c/a/a/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/b/a/c/a/a/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lc/b/a/c/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lc/b/a/c/a/a/d;)Lc/b/a/c/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lc/b/a/c/a/a/d;)Lc/b/a/c/a/a/c;
    .locals 3

    .line 2
    invoke-static {p0}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/e;->c()Lc/b/a/c/b/a/b;

    move-result-object v0

    .line 3
    new-instance v1, Lc/b/a/c/a/a/e;

    .line 4
    invoke-static {p0}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lc/b/a/e;->h()Lcom/bumptech/glide/Registry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lc/b/a/c/a/a/e;-><init>(Ljava/util/List;Lc/b/a/c/a/a/d;Lc/b/a/c/b/a/b;Landroid/content/ContentResolver;)V

    .line 6
    new-instance p0, Lc/b/a/c/a/a/c;

    invoke-direct {p0, p1, v1}, Lc/b/a/c/a/a/c;-><init>(Landroid/net/Uri;Lc/b/a/c/a/a/e;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Lc/b/a/c/a/a/c;
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/c/a/a/c$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/b/a/c/a/a/c$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lc/b/a/c/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lc/b/a/c/a/a/d;)Lc/b/a/c/a/a/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 12
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lc/b/a/c/a/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lc/b/a/c/a/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lc/b/a/c/a/a/c;->d()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/c/a/a/c;->c:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object p1, p0, Lc/b/a/c/a/a/c;->c:Ljava/io/InputStream;

    invoke-interface {p2, p1}, Lc/b/a/c/a/d$a;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find thumbnail file"

    .line 10
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_0
    invoke-interface {p2, p1}, Lc/b/a/c/a/d$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/c/a/a/c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public final d()Ljava/io/InputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/b/a/c/a/a/c;->b:Lc/b/a/c/a/a/e;

    iget-object v1, p0, Lc/b/a/c/a/a/c;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lc/b/a/c/a/a/e;->c(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lc/b/a/c/a/a/c;->b:Lc/b/a/c/a/a/e;

    iget-object v3, p0, Lc/b/a/c/a/a/c;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lc/b/a/c/a/a/e;->a(Landroid/net/Uri;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eq v2, v1, :cond_1

    .line 3
    new-instance v1, Lc/b/a/c/a/h;

    invoke-direct {v1, v0, v2}, Lc/b/a/c/a/h;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method
