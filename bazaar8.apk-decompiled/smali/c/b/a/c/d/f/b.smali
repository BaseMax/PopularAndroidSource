.class public Lc/b/a/c/d/f/b;
.super Ljava/lang/Object;
.source "BitmapDrawableTranscoder.java"

# interfaces
.implements Lc/b/a/c/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/d/f/e<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lc/b/a/c/d/f/b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/b/D;Lc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc/b/a/c/d/f/b;->a:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lc/b/a/c/d/a/r;->a(Landroid/content/res/Resources;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method
