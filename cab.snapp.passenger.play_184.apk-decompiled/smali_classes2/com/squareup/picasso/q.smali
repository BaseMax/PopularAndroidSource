.class final Lcom/squareup/picasso/q;
.super Lcom/squareup/picasso/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/q$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lcom/squareup/picasso/q;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/picasso/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :try_start_0
    sget-object v4, Lcom/squareup/picasso/q;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0

    :catch_0
    nop

    goto :goto_1

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

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0
.end method


# virtual methods
.method public final canHandleRequest(Lcom/squareup/picasso/w;)Z
    .locals 2

    .line 51
    iget-object p1, p1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final load(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    .line 57
    iget-object v0, v7, Lcom/squareup/picasso/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 58
    iget-object v0, v6, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-static {v8, v0}, Lcom/squareup/picasso/q;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v9

    .line 60
    iget-object v0, v6, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    const-string v1, "video/"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 63
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/picasso/w;->hasSize()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_6

    .line 64
    iget v0, v6, Lcom/squareup/picasso/w;->targetWidth:I

    iget v1, v6, Lcom/squareup/picasso/w;->targetHeight:I

    .line 1100
    sget-object v2, Lcom/squareup/picasso/q$a;->MICRO:Lcom/squareup/picasso/q$a;

    iget v2, v2, Lcom/squareup/picasso/q$a;->b:I

    if-gt v0, v2, :cond_1

    sget-object v2, Lcom/squareup/picasso/q$a;->MICRO:Lcom/squareup/picasso/q$a;

    iget v2, v2, Lcom/squareup/picasso/q$a;->c:I

    if-gt v1, v2, :cond_1

    .line 1101
    sget-object v0, Lcom/squareup/picasso/q$a;->MICRO:Lcom/squareup/picasso/q$a;

    goto :goto_1

    .line 1102
    :cond_1
    sget-object v2, Lcom/squareup/picasso/q$a;->MINI:Lcom/squareup/picasso/q$a;

    iget v2, v2, Lcom/squareup/picasso/q$a;->b:I

    if-gt v0, v2, :cond_2

    sget-object v0, Lcom/squareup/picasso/q$a;->MINI:Lcom/squareup/picasso/q$a;

    iget v0, v0, Lcom/squareup/picasso/q$a;->c:I

    if-gt v1, v0, :cond_2

    .line 1103
    sget-object v0, Lcom/squareup/picasso/q$a;->MINI:Lcom/squareup/picasso/q$a;

    goto :goto_1

    .line 1105
    :cond_2
    sget-object v0, Lcom/squareup/picasso/q$a;->FULL:Lcom/squareup/picasso/q$a;

    :goto_1
    move-object v13, v0

    if-nez v11, :cond_3

    .line 65
    sget-object v0, Lcom/squareup/picasso/q$a;->FULL:Lcom/squareup/picasso/q$a;

    if-ne v13, v0, :cond_3

    .line 66
    invoke-virtual/range {p0 .. p1}, Lcom/squareup/picasso/q;->a(Lcom/squareup/picasso/w;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/n;->source(Ljava/io/InputStream;)Lb/v;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/squareup/picasso/y$a;

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v12, v0, v2, v9}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v1

    .line 70
    :cond_3
    iget-object v0, v6, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 72
    invoke-static/range {p1 .. p1}, Lcom/squareup/picasso/q;->b(Lcom/squareup/picasso/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 73
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    iget v0, v6, Lcom/squareup/picasso/w;->targetWidth:I

    iget v1, v6, Lcom/squareup/picasso/w;->targetHeight:I

    iget v2, v13, Lcom/squareup/picasso/q$a;->b:I

    iget v3, v13, Lcom/squareup/picasso/q$a;->c:I

    move-object v4, v5

    move-object v10, v5

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/q;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/w;)V

    if-eqz v11, :cond_5

    .line 83
    sget-object v0, Lcom/squareup/picasso/q$a;->FULL:Lcom/squareup/picasso/q$a;

    if-ne v13, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget v0, v13, Lcom/squareup/picasso/q$a;->a:I

    .line 84
    :goto_2
    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 86
    :cond_5
    iget v0, v13, Lcom/squareup/picasso/q$a;->a:I

    .line 87
    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_6

    .line 91
    new-instance v1, Lcom/squareup/picasso/y$a;

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v0, v12, v2, v9}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v1

    .line 95
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/squareup/picasso/q;->a(Lcom/squareup/picasso/w;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/n;->source(Ljava/io/InputStream;)Lb/v;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/squareup/picasso/y$a;

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v12, v0, v2, v9}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Lb/v;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v1
.end method
