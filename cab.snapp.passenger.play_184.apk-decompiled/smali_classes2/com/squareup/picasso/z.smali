.class final Lcom/squareup/picasso/z;
.super Lcom/squareup/picasso/y;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/squareup/picasso/y;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/squareup/picasso/z;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final canHandleRequest(Lcom/squareup/picasso/w;)Z
    .locals 1

    .line 35
    iget v0, p1, Lcom/squareup/picasso/w;->resourceId:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_0
    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final load(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object p2, p0, Lcom/squareup/picasso/z;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/squareup/picasso/af;->a(Landroid/content/Context;Lcom/squareup/picasso/w;)Landroid/content/res/Resources;

    move-result-object p2

    .line 44
    invoke-static {p2, p1}, Lcom/squareup/picasso/af;->a(Landroid/content/res/Resources;Lcom/squareup/picasso/w;)I

    move-result v0

    .line 45
    new-instance v1, Lcom/squareup/picasso/y$a;

    .line 1049
    invoke-static {p1}, Lcom/squareup/picasso/z;->b(Lcom/squareup/picasso/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 1050
    invoke-static {v2}, Lcom/squareup/picasso/z;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1051
    invoke-static {p2, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1052
    iget v3, p1, Lcom/squareup/picasso/w;->targetWidth:I

    iget v4, p1, Lcom/squareup/picasso/w;->targetHeight:I

    invoke-static {v3, v4, v2, p1}, Lcom/squareup/picasso/z;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/w;)V

    .line 1054
    :cond_0
    invoke-static {p2, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 45
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, p1, p2}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v1
.end method
