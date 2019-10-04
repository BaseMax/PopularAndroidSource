.class public abstract Lc/e/a/a/k/c;
.super Lc/e/a/a/c/i;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lc/e/a/a/k/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/a/c/i<",
        "Lc/e/a/a/k/i;",
        "Lc/e/a/a/k/j;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lc/e/a/a/k/f;"
    }
.end annotation


# instance fields
.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [Lc/e/a/a/k/i;

    new-array v0, v0, [Lc/e/a/a/k/j;

    invoke-direct {p0, v1, v0}, Lc/e/a/a/c/i;-><init>([Lc/e/a/a/c/f;[Lc/e/a/a/c/g;)V

    .line 2
    iput-object p1, p0, Lc/e/a/a/k/c;->n:Ljava/lang/String;

    const/16 p1, 0x400

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/a/c/i;->a(I)V

    return-void
.end method


# virtual methods
.method public abstract a([BIZ)Lc/e/a/a/k/e;
.end method

.method public final a(Lc/e/a/a/k/i;Lc/e/a/a/k/j;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8

    .line 5
    :try_start_0
    iget-object v0, p1, Lc/e/a/a/c/f;->c:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lc/e/a/a/k/c;->a([BIZ)Lc/e/a/a/k/e;

    move-result-object v5

    .line 7
    iget-wide v3, p1, Lc/e/a/a/c/f;->d:J

    iget-wide v6, p1, Lc/e/a/a/k/i;->f:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lc/e/a/a/k/j;->a(JLc/e/a/a/k/e;J)V

    const/high16 p1, -0x80000000

    .line 8
    invoke-virtual {p2, p1}, Lc/e/a/a/c/a;->c(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic a(Lc/e/a/a/c/f;Lc/e/a/a/c/g;Z)Ljava/lang/Exception;
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/a/k/i;

    check-cast p2, Lc/e/a/a/k/j;

    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/k/c;->a(Lc/e/a/a/k/i;Lc/e/a/a/k/j;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/a/k/c;->a(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public final a(Lc/e/a/a/k/j;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lc/e/a/a/c/i;->a(Lc/e/a/a/c/g;)V

    return-void
.end method

.method public bridge synthetic e()Lc/e/a/a/c/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/k/c;->e()Lc/e/a/a/k/i;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lc/e/a/a/k/i;
    .locals 1

    .line 2
    new-instance v0, Lc/e/a/a/k/i;

    invoke-direct {v0}, Lc/e/a/a/k/i;-><init>()V

    return-object v0
.end method

.method public bridge synthetic f()Lc/e/a/a/c/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/k/c;->f()Lc/e/a/a/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lc/e/a/a/k/j;
    .locals 1

    .line 2
    new-instance v0, Lc/e/a/a/k/d;

    invoke-direct {v0, p0}, Lc/e/a/a/k/d;-><init>(Lc/e/a/a/k/c;)V

    return-object v0
.end method
