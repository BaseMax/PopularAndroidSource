.class public final Lc/e/a/a/j/d/a/d;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lc/e/a/a/j/d/a/i;


# instance fields
.field public final a:Lc/e/a/a/j/d/a/i;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/a/j/d/a/i;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/d/a/i;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/d/a/d;->a:Lc/e/a/a/j/d/a/i;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/d/a/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lc/e/a/a/n/y$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/a/n/y$a<",
            "Lc/e/a/a/j/d/a/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/a/h/c;

    iget-object v1, p0, Lc/e/a/a/j/d/a/d;->a:Lc/e/a/a/j/d/a/i;

    .line 2
    invoke-interface {v1}, Lc/e/a/a/j/d/a/i;->a()Lc/e/a/a/n/y$a;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/a/j/d/a/d;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lc/e/a/a/h/c;-><init>(Lc/e/a/a/n/y$a;Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lc/e/a/a/j/d/a/e;)Lc/e/a/a/n/y$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/d/a/e;",
            ")",
            "Lc/e/a/a/n/y$a<",
            "Lc/e/a/a/j/d/a/g;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lc/e/a/a/h/c;

    iget-object v1, p0, Lc/e/a/a/j/d/a/d;->a:Lc/e/a/a/j/d/a/i;

    .line 4
    invoke-interface {v1, p1}, Lc/e/a/a/j/d/a/i;->a(Lc/e/a/a/j/d/a/e;)Lc/e/a/a/n/y$a;

    move-result-object p1

    iget-object v1, p0, Lc/e/a/a/j/d/a/d;->b:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lc/e/a/a/h/c;-><init>(Lc/e/a/a/n/y$a;Ljava/util/List;)V

    return-object v0
.end method
