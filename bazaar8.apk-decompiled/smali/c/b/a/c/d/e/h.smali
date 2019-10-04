.class public final Lc/b/a/c/d/e/h;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "Lc/b/a/b/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/a/e;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/e/h;->a:Lc/b/a/c/b/a/e;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/a;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/b/a;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lc/b/a/b/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lc/b/a/c/d/e/h;->a:Lc/b/a/c/b/a/e;

    invoke-static {p1, p2}, Lc/b/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lc/b/a/c/b/a/e;)Lc/b/a/c/d/a/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/b/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/d/e/h;->a(Lc/b/a/b/a;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/b/a/b/a;Lc/b/a/c/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 0

    .line 2
    check-cast p1, Lc/b/a/b/a;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/d/e/h;->a(Lc/b/a/b/a;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
