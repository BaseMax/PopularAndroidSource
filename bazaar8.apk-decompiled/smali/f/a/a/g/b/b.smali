.class public Lf/a/a/g/b/b;
.super Ljava/lang/Object;
.source "MediaMetaDataRetrieverThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/g/b/b$a;
    }
.end annotation


# instance fields
.field public a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

.field public b:Lf/a/a/g/b/b$a;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;Lf/a/a/g/b/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/b/b;->a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    .line 3
    iput-object p2, p0, Lf/a/a/g/b/b;->b:Lf/a/a/g/b/b$a;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt p1, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 6
    :cond_0
    div-int/lit8 p1, p1, 0x2

    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    :goto_0
    div-int v2, p1, v1

    if-lt v2, p2, :cond_1

    div-int v2, v0, v1

    if-lt v2, p3, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public run()V
    .locals 9

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    iget-object v1, p0, Lf/a/a/g/b/b;->a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x7

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    .line 6
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const/16 v6, 0x40

    .line 8
    invoke-static {v6}, Lf/a/a/f/c;->a(I)I

    move-result v6

    .line 9
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 10
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 11
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 12
    invoke-virtual {p0, v0, v6, v6}, Lf/a/a/g/b/b;->a([BII)I

    move-result v6

    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x0

    .line 13
    array-length v8, v0

    invoke-static {v0, v6, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    const v7, 0xaae60

    if-le v6, v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/a/a/g/b/b;->a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lf/a/a/g/b/b;->a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v0, v2}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lf/a/a/g/b/b;->a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v0, v5}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a(Landroid/graphics/Bitmap;)V

    .line 18
    iget-object v0, p0, Lf/a/a/g/b/b;->a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v0, v3}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lf/a/a/g/b/b;->a:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a(J)V

    .line 20
    iget-object v0, p0, Lf/a/a/g/b/b;->b:Lf/a/a/g/b/b$a;

    invoke-interface {v0}, Lf/a/a/g/b/b$a;->onSuccess()V

    return-void
.end method
