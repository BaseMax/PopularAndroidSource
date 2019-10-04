.class public Lc/b/a/c/d/f/d;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lc/b/a/c/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/d/f/e<",
        "Lc/b/a/c/d/e/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/b/D;Lc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "Lc/b/a/c/d/e/c;",
            ">;",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/d/e/c;

    .line 2
    invoke-virtual {p1}, Lc/b/a/c/d/e/c;->c()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    new-instance p2, Lc/b/a/c/d/b/b;

    invoke-static {p1}, Lc/b/a/i/a;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lc/b/a/c/d/b/b;-><init>([B)V

    return-object p2
.end method
