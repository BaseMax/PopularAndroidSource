.class public Lcom/squareup/picasso/MediaStoreRequestHandler;
.super Lc/f/a/n;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/f/a/n;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    sget-object v4, Lcom/squareup/picasso/MediaStoreRequestHandler;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :catch_0
    nop

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0
.end method

.method public static a(II)Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    .locals 2

    .line 24
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v1, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->width:I

    if-gt p0, v1, :cond_0

    iget v1, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->height:I

    if-gt p1, v1, :cond_0

    return-object v0

    .line 25
    :cond_0
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v1, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->width:I

    if-gt p0, v1, :cond_1

    iget p0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->height:I

    if-gt p1, p0, :cond_1

    return-object v0

    .line 26
    :cond_1
    sget-object p0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    return-object p0
.end method


# virtual methods
.method public a(Lc/f/a/G;I)Lc/f/a/I$a;
    .locals 16

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    .line 4
    iget-object v0, v7, Lc/f/a/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 5
    iget-object v0, v6, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-static {v8, v0}, Lcom/squareup/picasso/MediaStoreRequestHandler;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v9

    .line 6
    iget-object v0, v6, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    const-string v1, "video/"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lc/f/a/G;->c()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_4

    .line 9
    iget v0, v6, Lc/f/a/G;->i:I

    iget v1, v6, Lc/f/a/G;->j:I

    invoke-static {v0, v1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->a(II)Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    move-result-object v13

    if-nez v11, :cond_1

    .line 10
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    if-ne v13, v0, :cond_1

    .line 11
    invoke-virtual/range {p0 .. p1}, Lc/f/a/n;->c(Lc/f/a/G;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lk/s;->a(Ljava/io/InputStream;)Lk/z;

    move-result-object v0

    .line 12
    new-instance v1, Lc/f/a/I$a;

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v12, v0, v2, v9}, Lc/f/a/I$a;-><init>(Landroid/graphics/Bitmap;Lk/z;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v1

    .line 13
    :cond_1
    iget-object v0, v6, Lc/f/a/G;->e:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 14
    invoke-static/range {p1 .. p1}, Lc/f/a/I;->b(Lc/f/a/G;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 15
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 16
    iget v0, v6, Lc/f/a/G;->i:I

    iget v1, v6, Lc/f/a/G;->j:I

    iget v2, v13, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->width:I

    iget v3, v13, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->height:I

    move-object v4, v5

    move-object v10, v5

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lc/f/a/I;->a(IIIILandroid/graphics/BitmapFactory$Options;Lc/f/a/G;)V

    if-eqz v11, :cond_3

    .line 17
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    if-ne v13, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, v13, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->androidKind:I

    .line 18
    :goto_1
    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 19
    :cond_3
    iget v0, v13, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->androidKind:I

    .line 20
    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 21
    new-instance v1, Lc/f/a/I$a;

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v0, v12, v2, v9}, Lc/f/a/I$a;-><init>(Landroid/graphics/Bitmap;Lk/z;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v1

    .line 22
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lc/f/a/n;->c(Lc/f/a/G;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lk/s;->a(Ljava/io/InputStream;)Lk/z;

    move-result-object v0

    .line 23
    new-instance v1, Lc/f/a/I$a;

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v12, v0, v2, v9}, Lc/f/a/I$a;-><init>(Landroid/graphics/Bitmap;Lk/z;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v1
.end method

.method public a(Lc/f/a/G;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lc/f/a/G;->e:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
