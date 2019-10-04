.class public Lc/b/a/c/d/a/u;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/d/a/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/d/a/k;

.field public final b:Lc/b/a/c/b/a/b;


# direct methods
.method public constructor <init>(Lc/b/a/c/d/a/k;Lc/b/a/c/b/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/a/u;->a:Lc/b/a/c/d/a/k;

    .line 3
    iput-object p2, p0, Lc/b/a/c/d/a/u;->b:Lc/b/a/c/b/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 4
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    iget-object v1, p0, Lc/b/a/c/d/a/u;->b:Lc/b/a/c/b/a/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lc/b/a/c/b/a/b;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 7
    :goto_0
    invoke-static {p1}, Lc/b/a/i/d;->a(Ljava/io/InputStream;)Lc/b/a/i/d;

    move-result-object v1

    .line 8
    new-instance v3, Lc/b/a/i/g;

    invoke-direct {v3, v1}, Lc/b/a/i/g;-><init>(Ljava/io/InputStream;)V

    .line 9
    new-instance v7, Lc/b/a/c/d/a/u$a;

    invoke-direct {v7, p1, v1}, Lc/b/a/c/d/a/u$a;-><init>(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lc/b/a/i/d;)V

    .line 10
    :try_start_0
    iget-object v2, p0, Lc/b/a/c/d/a/u;->a:Lc/b/a/c/d/a/k;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lc/b/a/c/d/a/k;->a(Ljava/io/InputStream;IILc/b/a/c/f;Lc/b/a/c/d/a/k$a;)Lc/b/a/c/b/D;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v1}, Lc/b/a/i/d;->t()V

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->t()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 13
    invoke-virtual {v1}, Lc/b/a/i/d;->t()V

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->t()V

    :cond_2
    throw p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/d/a/u;->a(Ljava/io/InputStream;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/InputStream;Lc/b/a/c/f;)Z
    .locals 0

    .line 3
    iget-object p2, p0, Lc/b/a/c/d/a/u;->a:Lc/b/a/c/d/a/k;

    invoke-virtual {p2, p1}, Lc/b/a/c/d/a/k;->a(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/d/a/u;->a(Ljava/io/InputStream;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
