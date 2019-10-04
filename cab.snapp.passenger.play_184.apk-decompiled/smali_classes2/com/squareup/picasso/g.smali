.class Lcom/squareup/picasso/g;
.super Lcom/squareup/picasso/y;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/squareup/picasso/y;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/squareup/picasso/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(Lcom/squareup/picasso/w;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/squareup/picasso/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public canHandleRequest(Lcom/squareup/picasso/w;)Z
    .locals 1

    .line 37
    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public load(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/g;->a(Lcom/squareup/picasso/w;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lb/n;->source(Ljava/io/InputStream;)Lb/v;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/squareup/picasso/y$a;

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {p2, p1, v0}, Lcom/squareup/picasso/y$a;-><init>(Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object p2
.end method
