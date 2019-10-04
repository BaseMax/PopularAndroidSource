.class public Lc/f/a/t;
.super Lc/f/a/n;
.source "FileRequestHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/f/a/n;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/net/Uri;)I
    .locals 2

    .line 4
    new-instance v0, Lb/n/a/a;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/n/a/a;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p0, v1}, Lb/n/a/a;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lc/f/a/G;I)Lc/f/a/I$a;
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lc/f/a/n;->c(Lc/f/a/G;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lk/s;->a(Ljava/io/InputStream;)Lk/z;

    move-result-object p2

    .line 3
    new-instance v0, Lc/f/a/I$a;

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-object p1, p1, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-static {p1}, Lc/f/a/t;->a(Landroid/net/Uri;)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1, p1}, Lc/f/a/I$a;-><init>(Landroid/graphics/Bitmap;Lk/z;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v0
.end method

.method public a(Lc/f/a/G;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
