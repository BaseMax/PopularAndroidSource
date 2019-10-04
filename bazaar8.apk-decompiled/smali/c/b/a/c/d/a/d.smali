.class public Lc/b/a/c/d/a/d;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lc/b/a/c/b/D;
.implements Lc/b/a/c/b/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/D<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lc/b/a/c/b/y;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Lc/b/a/c/b/a/e;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Lc/b/a/i/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lc/b/a/c/d/a/d;->a:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 3
    invoke-static {p2, p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lc/b/a/c/b/a/e;

    iput-object p2, p0, Lc/b/a/c/d/a/d;->b:Lc/b/a/c/b/a/e;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)Lc/b/a/c/d/a/d;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lc/b/a/c/d/a/d;

    invoke-direct {v0, p0, p1}, Lc/b/a/c/d/a/d;-><init>(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/a/d;->b:Lc/b/a/c/b/a/e;

    iget-object v1, p0, Lc/b/a/c/d/a/d;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lc/b/a/c/b/a/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/a/d;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lc/b/a/i/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/a/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/a/d;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/d/a/d;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
