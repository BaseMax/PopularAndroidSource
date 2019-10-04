.class public Lc/b/a/c/d/e/f;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lc/b/a/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/i<",
        "Lc/b/a/c/d/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/i;

    iput-object p1, p0, Lc/b/a/c/d/e/f;->a:Lc/b/a/c/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/b/a/c/b/D;II)Lc/b/a/c/b/D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/c/b/D<",
            "Lc/b/a/c/d/e/c;",
            ">;II)",
            "Lc/b/a/c/b/D<",
            "Lc/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/d/e/c;

    .line 2
    invoke-static {p1}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lc/b/a/e;->d()Lc/b/a/c/b/a/e;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lc/b/a/c/d/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Lc/b/a/c/d/a/d;

    invoke-direct {v3, v2, v1}, Lc/b/a/c/d/a/d;-><init>(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)V

    .line 5
    iget-object v1, p0, Lc/b/a/c/d/e/f;->a:Lc/b/a/c/i;

    invoke-interface {v1, p1, v3, p3, p4}, Lc/b/a/c/i;->a(Landroid/content/Context;Lc/b/a/c/b/D;II)Lc/b/a/c/b/D;

    move-result-object p1

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    invoke-interface {v3}, Lc/b/a/c/b/D;->a()V

    .line 8
    :cond_0
    invoke-interface {p1}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 9
    iget-object p3, p0, Lc/b/a/c/d/e/f;->a:Lc/b/a/c/i;

    invoke-virtual {v0, p3, p1}, Lc/b/a/c/d/e/c;->a(Lc/b/a/c/i;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lc/b/a/c/d/e/f;->a:Lc/b/a/c/i;

    invoke-interface {v0, p1}, Lc/b/a/c/c;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lc/b/a/c/d/e/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/c/d/e/f;

    .line 3
    iget-object v0, p0, Lc/b/a/c/d/e/f;->a:Lc/b/a/c/i;

    iget-object p1, p1, Lc/b/a/c/d/e/f;->a:Lc/b/a/c/i;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/f;->a:Lc/b/a/c/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
