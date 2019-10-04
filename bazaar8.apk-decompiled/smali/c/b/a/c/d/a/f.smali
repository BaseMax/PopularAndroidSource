.class public Lc/b/a/c/d/a/f;
.super Ljava/lang/Object;
.source "ByteBufferBitmapDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/d/a/k;


# direct methods
.method public constructor <init>(Lc/b/a/c/d/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/a/f;->a:Lc/b/a/c/d/a/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/d/a/f;->a(Ljava/nio/ByteBuffer;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/nio/ByteBuffer;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lc/b/a/i/a;->c(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lc/b/a/c/d/a/f;->a:Lc/b/a/c/d/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/b/a/c/d/a/k;->a(Ljava/io/InputStream;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/d/a/f;->a(Ljava/nio/ByteBuffer;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;Lc/b/a/c/f;)Z
    .locals 0

    .line 3
    iget-object p2, p0, Lc/b/a/c/d/a/f;->a:Lc/b/a/c/d/a/k;

    invoke-virtual {p2, p1}, Lc/b/a/c/d/a/k;->a(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method
