.class public Lc/b/a/c/d/a/z;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/d/a/z$d;,
        Lc/b/a/c/d/a/z$a;,
        Lc/b/a/c/d/a/z$c;,
        Lc/b/a/c/d/a/z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/b/a/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/e<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/b/a/c/d/a/z$b;


# instance fields
.field public final d:Lc/b/a/c/d/a/z$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/d/a/z$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lc/b/a/c/b/a/e;

.field public final f:Lc/b/a/c/d/a/z$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lc/b/a/c/d/a/x;

    invoke-direct {v1}, Lc/b/a/c/d/a/x;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 2
    invoke-static {v2, v0, v1}, Lc/b/a/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Lc/b/a/c/e$a;)Lc/b/a/c/e;

    move-result-object v0

    sput-object v0, Lc/b/a/c/d/a/z;->a:Lc/b/a/c/e;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lc/b/a/c/d/a/y;

    invoke-direct {v1}, Lc/b/a/c/d/a/y;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 4
    invoke-static {v2, v0, v1}, Lc/b/a/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Lc/b/a/c/e$a;)Lc/b/a/c/e;

    move-result-object v0

    sput-object v0, Lc/b/a/c/d/a/z;->b:Lc/b/a/c/e;

    .line 5
    new-instance v0, Lc/b/a/c/d/a/z$b;

    invoke-direct {v0}, Lc/b/a/c/d/a/z$b;-><init>()V

    sput-object v0, Lc/b/a/c/d/a/z;->c:Lc/b/a/c/d/a/z$b;

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/b/a/e;Lc/b/a/c/d/a/z$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/a/e;",
            "Lc/b/a/c/d/a/z$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/c/d/a/z;->c:Lc/b/a/c/d/a/z$b;

    invoke-direct {p0, p1, p2, v0}, Lc/b/a/c/d/a/z;-><init>(Lc/b/a/c/b/a/e;Lc/b/a/c/d/a/z$c;Lc/b/a/c/d/a/z$b;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/b/a/e;Lc/b/a/c/d/a/z$c;Lc/b/a/c/d/a/z$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/a/e;",
            "Lc/b/a/c/d/a/z$c<",
            "TT;>;",
            "Lc/b/a/c/d/a/z$b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/c/d/a/z;->e:Lc/b/a/c/b/a/e;

    .line 4
    iput-object p2, p0, Lc/b/a/c/d/a/z;->d:Lc/b/a/c/d/a/z$c;

    .line 5
    iput-object p3, p0, Lc/b/a/c/d/a/z;->f:Lc/b/a/c/d/a/z$b;

    return-void
.end method

.method public static a(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .locals 2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_0

    if-eq p5, v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->f:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    if-eq p6, v0, :cond_0

    .line 17
    invoke-static/range {p0 .. p6}, Lc/b/a/c/d/a/z;->b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    .line 18
    invoke-static {p0, p1, p2, p3}, Lc/b/a/c/d/a/z;->a(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method public static a(Lc/b/a/c/b/a/e;)Lc/b/a/c/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/a/e;",
            ")",
            "Lc/b/a/c/g<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/d/a/z;

    new-instance v1, Lc/b/a/c/d/a/z$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc/b/a/c/d/a/z$a;-><init>(Lc/b/a/c/d/a/x;)V

    invoke-direct {v0, p0, v1}, Lc/b/a/c/d/a/z;-><init>(Lc/b/a/c/b/a/e;Lc/b/a/c/d/a/z$c;)V

    return-object v0
.end method

.method public static b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    const/16 v0, 0x12

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    .line 4
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    .line 6
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    .line 8
    :cond_1
    invoke-virtual {p6, v0, v1, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float p5, p5, p4

    .line 9
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float p4, p4, p5

    .line 10
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    .line 11
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string p2, "VideoDecoder"

    .line 12
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Exception trying to decode frame on oreo+"

    .line 13
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lc/b/a/c/b/a/e;)Lc/b/a/c/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/a/e;",
            ")",
            "Lc/b/a/c/g<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/d/a/z;

    new-instance v1, Lc/b/a/c/d/a/z$d;

    invoke-direct {v1}, Lc/b/a/c/d/a/z$d;-><init>()V

    invoke-direct {v0, p0, v1}, Lc/b/a/c/d/a/z;-><init>(Lc/b/a/c/b/a/e;Lc/b/a/c/d/a/z$c;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lc/b/a/c/d/a/z;->a:Lc/b/a/c/e;

    invoke-virtual {p4, v0}, Lc/b/a/c/f;->a(Lc/b/a/c/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lc/b/a/c/d/a/z;->b:Lc/b/a/c/e;

    invoke-virtual {p4, v0}, Lc/b/a/c/f;->a(Lc/b/a/c/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6
    :cond_2
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->h:Lc/b/a/c/e;

    invoke-virtual {p4, v1}, Lc/b/a/c/f;->a(Lc/b/a/c/e;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    if-nez p4, :cond_3

    .line 7
    sget-object p4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->g:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    :cond_3
    move-object v7, p4

    .line 8
    iget-object p4, p0, Lc/b/a/c/d/a/z;->f:Lc/b/a/c/d/a/z$b;

    invoke-virtual {p4}, Lc/b/a/c/d/a/z$b;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object p4

    .line 9
    :try_start_0
    iget-object v1, p0, Lc/b/a/c/d/a/z;->d:Lc/b/a/c/d/a/z$c;

    invoke-interface {v1, p4, p1}, Lc/b/a/c/d/a/z$c;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p4

    move v5, p2

    move v6, p3

    .line 11
    invoke-static/range {v1 .. v7}, Lc/b/a/c/d/a/z;->a(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 13
    iget-object p2, p0, Lc/b/a/c/d/a/z;->e:Lc/b/a/c/b/a/e;

    invoke-static {p1, p2}, Lc/b/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)Lc/b/a/c/d/a/d;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method

.method public a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/b/a/c/f;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
