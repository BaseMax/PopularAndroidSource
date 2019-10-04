.class public final Lb/a/f;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.kt"


# direct methods
.method public static final a(Landroidx/activity/OnBackPressedDispatcher;Lb/r/k;ZLh/f/a/b;)Lb/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/OnBackPressedDispatcher;",
            "Lb/r/k;",
            "Z",
            "Lh/f/a/b<",
            "-",
            "Lb/a/d;",
            "Lh/h;",
            ">;)",
            "Lb/a/d;"
        }
    .end annotation

    const-string v0, "$this$addCallback"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressed"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lb/a/e;

    invoke-direct {v0, p3, p2, p2}, Lb/a/e;-><init>(Lh/f/a/b;ZZ)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->a(Lb/r/k;Lb/a/d;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->a(Lb/a/d;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic a(Landroidx/activity/OnBackPressedDispatcher;Lb/r/k;ZLh/f/a/b;ILjava/lang/Object;)Lb/a/d;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lb/a/f;->a(Landroidx/activity/OnBackPressedDispatcher;Lb/r/k;ZLh/f/a/b;)Lb/a/d;

    move-result-object p0

    return-object p0
.end method
