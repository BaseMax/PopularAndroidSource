.class public final Lb/i/k/E;
.super Ljava/lang/Object;
.source "ViewGroup.kt"


# direct methods
.method public static final a(Landroid/view/ViewGroup;)Lh/j/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lh/j/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lb/i/k/C;

    invoke-direct {v0, p0}, Lb/i/k/C;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public static final b(Landroid/view/ViewGroup;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lb/i/k/D;

    invoke-direct {v0, p0}, Lb/i/k/D;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
