.class public Lc/b/a/c/d/a/s;
.super Ljava/lang/Object;
.source "ResourceBitmapDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/d/c/d;

.field public final b:Lc/b/a/c/b/a/e;


# direct methods
.method public constructor <init>(Lc/b/a/c/d/c/d;Lc/b/a/c/b/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/a/s;->a:Lc/b/a/c/d/c/d;

    .line 3
    iput-object p2, p0, Lc/b/a/c/d/a/s;->b:Lc/b/a/c/b/a/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/b/a/c/d/a/s;->a:Lc/b/a/c/d/c/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/b/a/c/d/c/d;->a(Landroid/net/Uri;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p4, p0, Lc/b/a/c/d/a/s;->b:Lc/b/a/c/b/a/e;

    invoke-static {p4, p1, p2, p3}, Lc/b/a/c/d/a/m;->a(Lc/b/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/d/a/s;->a(Landroid/net/Uri;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;Lc/b/a/c/f;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 0

    .line 2
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/d/a/s;->a(Landroid/net/Uri;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
