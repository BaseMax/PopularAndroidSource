.class public final Lc/e/a/a/n/y;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/n/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$d;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/l;

.field public final b:I

.field public final c:Lc/e/a/a/n/z;

.field public final d:Lc/e/a/a/n/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/n/y$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j;Landroid/net/Uri;ILc/e/a/a/n/y$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/j;",
            "Landroid/net/Uri;",
            "I",
            "Lc/e/a/a/n/y$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/a/n/l;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lc/e/a/a/n/l;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lc/e/a/a/n/y;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;ILc/e/a/a/n/y$a;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;ILc/e/a/a/n/y$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/j;",
            "Lc/e/a/a/n/l;",
            "I",
            "Lc/e/a/a/n/y$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/e/a/a/n/z;

    invoke-direct {v0, p1}, Lc/e/a/a/n/z;-><init>(Lc/e/a/a/n/j;)V

    iput-object v0, p0, Lc/e/a/a/n/y;->c:Lc/e/a/a/n/z;

    .line 4
    iput-object p2, p0, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 5
    iput p3, p0, Lc/e/a/a/n/y;->b:I

    .line 6
    iput-object p4, p0, Lc/e/a/a/n/y;->d:Lc/e/a/a/n/y$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/y;->c:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->e()V

    .line 2
    new-instance v0, Lc/e/a/a/n/k;

    iget-object v1, p0, Lc/e/a/a/n/y;->c:Lc/e/a/a/n/z;

    iget-object v2, p0, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    invoke-direct {v0, v1, v2}, Lc/e/a/a/n/k;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lc/e/a/a/n/k;->t()V

    .line 4
    iget-object v1, p0, Lc/e/a/a/n/y;->c:Lc/e/a/a/n/z;

    invoke-virtual {v1}, Lc/e/a/a/n/z;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    .line 5
    iget-object v2, p0, Lc/e/a/a/n/y;->d:Lc/e/a/a/n/y$a;

    invoke-interface {v2, v1, v0}, Lc/e/a/a/n/y$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/n/y;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lc/e/a/a/o/I;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Ljava/io/Closeable;)V

    .line 7
    throw v1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/y;->c:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/y;->c:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/y;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/y;->c:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
