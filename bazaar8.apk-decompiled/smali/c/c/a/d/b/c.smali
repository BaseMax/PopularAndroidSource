.class public final Lc/c/a/d/b/c;
.super Ljava/lang/Object;
.source "ButtonExt.kt"


# direct methods
.method public static final a(Landroid/view/View;Landroid/widget/EditText;Lh/f/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/EditText;",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$enableAfterTextChange"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editText"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/d/b/b;

    invoke-direct {v0, p0, p2}, Lc/c/a/d/b/b;-><init>(Landroid/view/View;Lh/f/a/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
