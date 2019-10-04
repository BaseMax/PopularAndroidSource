.class public Lc/b/a/c/d/a/a;
.super Ljava/lang/Object;
.source "BitmapDrawableDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/g<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lc/b/a/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lc/b/a/c/g<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lc/b/a/c/d/a/a;->b:Landroid/content/res/Resources;

    .line 3
    invoke-static {p2}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lc/b/a/c/g;

    iput-object p2, p0, Lc/b/a/c/d/a/a;->a:Lc/b/a/c/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/a/a;->a:Lc/b/a/c/g;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/b/a/c/g;->a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc/b/a/c/d/a/a;->b:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lc/b/a/c/d/a/r;->a(Landroid/content/res/Resources;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lc/b/a/c/f;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/a/a;->a:Lc/b/a/c/g;

    invoke-interface {v0, p1, p2}, Lc/b/a/c/g;->a(Ljava/lang/Object;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
