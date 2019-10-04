.class public final Lc/e/a/a/h/c;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Lc/e/a/a/n/y$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/e/a/a/h/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lc/e/a/a/n/y$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/n/y$a<",
            "+TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lc/e/a/a/n/y$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y$a<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/h/c;->a:Lc/e/a/a/n/y$a;

    .line 3
    iput-object p2, p0, Lc/e/a/a/h/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lc/e/a/a/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/a/h/c;->a:Lc/e/a/a/n/y$a;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/n/y$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/h/b;

    .line 3
    iget-object p2, p0, Lc/e/a/a/h/c;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lc/e/a/a/h/c;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lc/e/a/a/h/b;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/h/b;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/h/c;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lc/e/a/a/h/b;

    move-result-object p1

    return-object p1
.end method
