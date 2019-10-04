.class final Lcom/squareup/picasso/b;
.super Lcom/squareup/picasso/y;
.source "SourceFile"


# static fields
.field private static final a:I = 0x16


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private d:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/squareup/picasso/y;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/b;->c:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/squareup/picasso/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final canHandleRequest(Lcom/squareup/picasso/w;)Z
    .locals 2

    .line 42
    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    .line 43
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final load(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object p2, p0, Lcom/squareup/picasso/b;->d:Landroid/content/res/AssetManager;

    if-nez p2, :cond_1

    .line 49
    iget-object p2, p0, Lcom/squareup/picasso/b;->c:Ljava/lang/Object;

    monitor-enter p2

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/b;->d:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/squareup/picasso/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/b;->d:Landroid/content/res/AssetManager;

    .line 53
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 55
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/squareup/picasso/b;->d:Landroid/content/res/AssetManager;

    .line 1060
    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/squareup/picasso/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lb/n;->source(Ljava/io/InputStream;)Lb/v;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/squareup/picasso/y$a;

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {p2, p1, v0}, Lcom/squareup/picasso/y$a;-><init>(Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object p2
.end method
