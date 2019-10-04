.class public Lc/b/a/c/d/e/j;
.super Ljava/lang/Object;
.source "StreamGifDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "Ljava/io/InputStream;",
        "Lc/b/a/c/d/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/b/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/g<",
            "Ljava/nio/ByteBuffer;",
            "Lc/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/b/a/c/b/a/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lc/b/a/c/g;Lc/b/a/c/b/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lc/b/a/c/g<",
            "Ljava/nio/ByteBuffer;",
            "Lc/b/a/c/d/e/c;",
            ">;",
            "Lc/b/a/c/b/a/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/e/j;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lc/b/a/c/d/e/j;->b:Lc/b/a/c/g;

    .line 4
    iput-object p3, p0, Lc/b/a/c/d/e/j;->c:Lc/b/a/c/b/a/b;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    :try_start_0
    new-array v1, v1, [B

    .line 10
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v0, 0x5

    const-string v1, "StreamGifDecoder"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Error reading data from stream"

    .line 15
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Lc/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lc/b/a/c/d/e/j;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lc/b/a/c/d/e/j;->b:Lc/b/a/c/g;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/b/a/c/g;->a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/d/e/j;->a(Ljava/io/InputStream;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/InputStream;Lc/b/a/c/f;)Z
    .locals 1

    .line 3
    sget-object v0, Lc/b/a/c/d/e/i;->b:Lc/b/a/c/e;

    invoke-virtual {p2, v0}, Lc/b/a/c/f;->a(Lc/b/a/c/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lc/b/a/c/d/e/j;->a:Ljava/util/List;

    iget-object v0, p0, Lc/b/a/c/d/e/j;->c:Lc/b/a/c/b/a/b;

    .line 4
    invoke-static {p2, p1, v0}, Lc/b/a/c/b;->b(Ljava/util/List;Ljava/io/InputStream;Lc/b/a/c/b/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/d/e/j;->a(Ljava/io/InputStream;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
