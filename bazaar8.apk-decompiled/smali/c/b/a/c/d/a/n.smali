.class public Lc/b/a/c/d/a/n;
.super Ljava/lang/Object;
.source "DrawableTransformation.java"

# interfaces
.implements Lc/b/a/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/i<",
        "Landroid/graphics/drawable/Drawable;",
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

.field public final b:Z


# direct methods
.method public constructor <init>(Lc/b/a/c/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/a/n;->a:Lc/b/a/c/i;

    .line 3
    iput-boolean p2, p0, Lc/b/a/c/d/a/n;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Lc/b/a/c/d/a/r;->a(Landroid/content/res/Resources;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lc/b/a/c/b/D;II)Lc/b/a/c/b/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/e;->d()Lc/b/a/c/b/a/e;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {v0, v1, p3, p4}, Lc/b/a/c/d/a/m;->a(Lc/b/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Lc/b/a/c/b/D;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-boolean p1, p0, Lc/b/a/c/d/a/n;->b:Z

    if-nez p1, :cond_0

    return-object p2

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to convert "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to a Bitmap"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iget-object v1, p0, Lc/b/a/c/d/a/n;->a:Lc/b/a/c/i;

    .line 7
    invoke-interface {v1, p1, v0, p3, p4}, Lc/b/a/c/i;->a(Landroid/content/Context;Lc/b/a/c/b/D;II)Lc/b/a/c/b/D;

    move-result-object p3

    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 9
    invoke-interface {p3}, Lc/b/a/c/b/D;->a()V

    return-object p2

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p3}, Lc/b/a/c/d/a/n;->a(Landroid/content/Context;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a()Lc/b/a/c/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c/i<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lc/b/a/c/d/a/n;->a:Lc/b/a/c/i;

    invoke-interface {v0, p1}, Lc/b/a/c/c;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lc/b/a/c/d/a/n;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/c/d/a/n;

    .line 3
    iget-object v0, p0, Lc/b/a/c/d/a/n;->a:Lc/b/a/c/i;

    iget-object p1, p1, Lc/b/a/c/d/a/n;->a:Lc/b/a/c/i;

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
    iget-object v0, p0, Lc/b/a/c/d/a/n;->a:Lc/b/a/c/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
