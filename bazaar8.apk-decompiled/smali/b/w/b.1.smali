.class public final Lb/w/b;
.super Ljava/lang/Object;
.source "Activity.kt"


# direct methods
.method public static final a(Landroid/app/Activity;I)Lb/w/j;
    .locals 1

    const-string v0, "$this$findNavController"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lb/w/J;->a(Landroid/app/Activity;I)Lb/w/j;

    move-result-object p0

    const-string p1, "Navigation.findNavController(this, viewId)"

    invoke-static {p0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
