.class public final Lcom/bumptech/glide/load/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final buildLoadData(Landroid/net/Uri;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p2, p3}, Lcom/bumptech/glide/load/a/a/b;->isThumbnailSize(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    new-instance p2, Lcom/bumptech/glide/load/c/n$a;

    new-instance p3, Lcom/bumptech/glide/f/c;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/f/c;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/bumptech/glide/load/c/a/c;->a:Landroid/content/Context;

    invoke-static {p4, p1}, Lcom/bumptech/glide/load/a/a/c;->buildImageFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/a/c;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/a/d;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;
    .locals 0

    .line 19
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/a/c;->buildLoadData(Landroid/net/Uri;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object p1

    return-object p1
.end method

.method public final handles(Landroid/net/Uri;)Z
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/bumptech/glide/load/a/a/b;->isMediaStoreImageUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/c/a/c;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
