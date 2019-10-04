.class final Lcom/squareup/picasso/l;
.super Lcom/squareup/picasso/g;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/squareup/picasso/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final canHandleRequest(Lcom/squareup/picasso/w;)Z
    .locals 1

    .line 37
    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final load(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/l;->a(Lcom/squareup/picasso/w;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lb/n;->source(Ljava/io/InputStream;)Lb/v;

    move-result-object p2

    .line 42
    new-instance v0, Lcom/squareup/picasso/y$a;

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    .line 1046
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v3, 0x1

    .line 1047
    invoke-virtual {v2, p1, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v2, p2, v1, p1}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v0
.end method
