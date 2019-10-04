.class public Lc/f/a/J;
.super Lc/f/a/I;
.source "ResourceRequestHandler.java"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/f/a/I;-><init>()V

    .line 2
    iput-object p1, p0, Lc/f/a/J;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILc/f/a/G;)Landroid/graphics/Bitmap;
    .locals 3

    .line 6
    invoke-static {p2}, Lc/f/a/I;->b(Lc/f/a/G;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lc/f/a/I;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9
    iget v1, p2, Lc/f/a/G;->i:I

    iget v2, p2, Lc/f/a/G;->j:I

    invoke-static {v1, v2, v0, p2}, Lc/f/a/I;->a(IILandroid/graphics/BitmapFactory$Options;Lc/f/a/G;)V

    .line 10
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lc/f/a/G;I)Lc/f/a/I$a;
    .locals 2

    .line 3
    iget-object p2, p0, Lc/f/a/J;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lc/f/a/P;->a(Landroid/content/Context;Lc/f/a/G;)Landroid/content/res/Resources;

    move-result-object p2

    .line 4
    invoke-static {p2, p1}, Lc/f/a/P;->a(Landroid/content/res/Resources;Lc/f/a/G;)I

    move-result v0

    .line 5
    new-instance v1, Lc/f/a/I$a;

    invoke-static {p2, v0, p1}, Lc/f/a/J;->a(Landroid/content/res/Resources;ILc/f/a/G;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, p1, p2}, Lc/f/a/I$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v1
.end method

.method public a(Lc/f/a/G;)Z
    .locals 1

    .line 1
    iget v0, p1, Lc/f/a/G;->f:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
