.class public final Lb/w/b/b;
.super Ljava/lang/Object;
.source "Fragment.kt"


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;)Lb/w/j;
    .locals 1

    const-string v0, "$this$findNavController"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->b(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p0

    const-string v0, "NavHostFragment.findNavController(this)"

    invoke-static {p0, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
