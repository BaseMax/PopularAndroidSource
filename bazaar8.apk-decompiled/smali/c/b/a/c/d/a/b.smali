.class public Lc/b/a/c/d/a/b;
.super Ljava/lang/Object;
.source "BitmapDrawableEncoder.java"

# interfaces
.implements Lc/b/a/c/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/h<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/a/e;

.field public final b:Lc/b/a/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/b/a/e;Lc/b/a/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/a/e;",
            "Lc/b/a/c/h<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/a/b;->a:Lc/b/a/c/b/a/e;

    .line 3
    iput-object p2, p0, Lc/b/a/c/d/a/b;->b:Lc/b/a/c/h;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/f;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/c/d/a/b;->b:Lc/b/a/c/h;

    invoke-interface {v0, p1}, Lc/b/a/c/h;->a(Lc/b/a/c/f;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/b/a/c/b/D;Ljava/io/File;Lc/b/a/c/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lc/b/a/c/f;",
            ")Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/a/b;->b:Lc/b/a/c/h;

    new-instance v1, Lc/b/a/c/d/a/d;

    invoke-interface {p1}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lc/b/a/c/d/a/b;->a:Lc/b/a/c/b/a/e;

    invoke-direct {v1, p1, v2}, Lc/b/a/c/d/a/d;-><init>(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)V

    invoke-interface {v0, v1, p2, p3}, Lc/b/a/c/a;->a(Ljava/lang/Object;Ljava/io/File;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lc/b/a/c/f;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/c/b/D;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/c/d/a/b;->a(Lc/b/a/c/b/D;Ljava/io/File;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
