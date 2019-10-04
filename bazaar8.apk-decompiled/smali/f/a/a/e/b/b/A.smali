.class public abstract Lf/a/a/e/b/b/A;
.super Ljava/lang/Object;
.source "InlinePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/b/b/A$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Landroid/widget/PopupWindow;

.field public b:Lf/a/a/e/b/b/A$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a/e/b/b/A$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lir/cafebazaar/inline/ui/InlineActivity;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/b/A;)Lf/a/a/e/b/b/A$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/b/A;->b:Lf/a/a/e/b/b/A$a;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/e/b/b/A;)Lir/cafebazaar/inline/ui/InlineActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/view/LayoutInflater;Lf/a/a/e/g;)Landroid/view/View;
.end method

.method public a()V
    .locals 1

    .line 44
    iget-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/core/widget/NestedScrollView;Landroid/view/View;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {p0, v0, v1}, Lf/a/a/e/b/b/A;->a(Landroid/view/LayoutInflater;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v1, Lf/a/a/e/b/b/a/a;

    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v2

    invoke-interface {v2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/a/a/e/b/b/a/a;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf0

    .line 5
    invoke-static {v2}, Lf/a/a/f/c;->a(I)I

    move-result v2

    const/4 v3, -0x1

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {v1, v2}, Lf/a/a/e/b/b/a/a;->setMaxHeight(I)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-direct {v0, v1, v3, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    .line 10
    iget-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    iget-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 12
    iget-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    const v3, 0x1030056

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 13
    iget-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v0, v3, v5, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 14
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 15
    iget-object v3, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v3, 0x2

    .line 16
    new-array v5, v3, [I

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    .line 17
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    aget v7, v5, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v8, v2

    if-le v7, v8, :cond_4

    .line 19
    aget v5, v5, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    .line 20
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v0, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    if-nez v1, :cond_2

    .line 23
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p2, 0x11

    .line 24
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    iget-object p2, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    sget v1, Lf/a/a/e;->header:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 27
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v3

    add-int/2addr v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 28
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 29
    :cond_2
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 30
    iget-object v1, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    sget v2, Lf/a/a/e;->footer:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 32
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 33
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroidx/core/widget/NestedScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 35
    :cond_4
    :goto_1
    iget-object p2, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    new-instance v0, Lf/a/a/e/b/b/z;

    invoke-direct {v0, p0, v6, p1}, Lf/a/a/e/b/b/z;-><init>(Lf/a/a/e/b/b/A;Landroid/widget/FrameLayout$LayoutParams;Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 36
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object p1

    new-instance p2, Lf/a/a/a/a/a;

    invoke-direct {p2}, Lf/a/a/a/a/a;-><init>()V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lf/a/a/a/a/a;->a(J)Lf/a/a/a/a/a;

    const-string v0, "user"

    .line 38
    invoke-virtual {p2, v0}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v0, "inline_popup"

    .line 39
    invoke-virtual {p2, v0}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v0, "action"

    const-string v1, "show"

    .line 40
    invoke-virtual {p2, v0, v1}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    iget-object v0, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    .line 41
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lf/a/a/a/a/a;->c(Ljava/lang/String;)Lf/a/a/a/a/a;

    iget-object v0, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    .line 42
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p2, v1, v0}, Lf/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 43
    invoke-virtual {p1, p2}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    return-void
.end method

.method public a(Lf/a/a/e/b/b/A$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/e/b/b/A$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lf/a/a/e/b/b/A;->b:Lf/a/a/e/b/b/A$a;

    return-void
.end method

.method public c()Lf/a/a/e/b/b/A$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/a/a/e/b/b/A$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/A;->b:Lf/a/a/e/b/b/A$a;

    return-object v0
.end method

.method public d()Lf/a/a/e/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/A;->c:Lir/cafebazaar/inline/ui/InlineActivity;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/A;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
