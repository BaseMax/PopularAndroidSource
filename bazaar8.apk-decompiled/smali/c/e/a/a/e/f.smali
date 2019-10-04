.class public final Lc/e/a/a/e/f;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lc/e/a/a/e/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;IZ)I
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lc/e/a/a/e/h;->b(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public a(JIIILc/e/a/a/e/q$a;)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/o/v;I)V
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Lc/e/a/a/o/v;->f(I)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method
