.class public final Lc/b/a/c/d/f/c;
.super Ljava/lang/Object;
.source "DrawableBytesTranscoder.java"

# interfaces
.implements Lc/b/a/c/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/d/f/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/a/e;

.field public final b:Lc/b/a/c/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/d/f/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Lc/b/a/c/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/d/f/e<",
            "Lc/b/a/c/d/e/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/b/a/e;Lc/b/a/c/d/f/e;Lc/b/a/c/d/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/a/e;",
            "Lc/b/a/c/d/f/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lc/b/a/c/d/f/e<",
            "Lc/b/a/c/d/e/c;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/f/c;->a:Lc/b/a/c/b/a/e;

    .line 3
    iput-object p2, p0, Lc/b/a/c/d/f/c;->b:Lc/b/a/c/d/f/e;

    .line 4
    iput-object p3, p0, Lc/b/a/c/d/f/c;->c:Lc/b/a/c/d/f/e;

    return-void
.end method

.method public static a(Lc/b/a/c/b/D;)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lc/b/a/c/b/D<",
            "Lc/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a(Lc/b/a/c/b/D;Lc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lc/b/a/c/d/f/c;->b:Lc/b/a/c/d/f/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/c/d/f/c;->a:Lc/b/a/c/b/a/e;

    invoke-static {v0, v1}, Lc/b/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)Lc/b/a/c/d/a/d;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Lc/b/a/c/d/f/e;->a(Lc/b/a/c/b/D;Lc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Lc/b/a/c/d/e/c;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lc/b/a/c/d/f/c;->c:Lc/b/a/c/d/f/e;

    invoke-static {p1}, Lc/b/a/c/d/f/c;->a(Lc/b/a/c/b/D;)Lc/b/a/c/b/D;

    invoke-interface {v0, p1, p2}, Lc/b/a/c/d/f/e;->a(Lc/b/a/c/b/D;Lc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
