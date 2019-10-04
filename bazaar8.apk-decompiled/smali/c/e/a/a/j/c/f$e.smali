.class public final Lc/e/a/a/j/c/f$e;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lc/e/a/a/n/y<",
        "Lc/e/a/a/j/c/a/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/j/c/f;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/c/f$e;->a:Lc/e/a/a/j/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/j/c/f;Lc/e/a/a/j/c/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/a/j/c/f$e;-><init>(Lc/e/a/a/j/c/f;)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/c/a/b;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$b;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/c/f$e;->a:Lc/e/a/a/j/c/f;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .line 3
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p7}, Lc/e/a/a/j/c/f$e;->a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/a/a/n/y;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/c/a/b;",
            ">;JJ)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/c/f$e;->a:Lc/e/a/a/j/c/f;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/j/c/f;->b(Lc/e/a/a/n/y;JJ)V

    return-void
.end method

.method public a(Lc/e/a/a/n/y;JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/c/a/b;",
            ">;JJZ)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/c/f$e;->a:Lc/e/a/a/j/c/f;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/n/y;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p5}, Lc/e/a/a/j/c/f$e;->a(Lc/e/a/a/n/y;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/j/c/f$e;->a(Lc/e/a/a/n/y;JJZ)V

    return-void
.end method
