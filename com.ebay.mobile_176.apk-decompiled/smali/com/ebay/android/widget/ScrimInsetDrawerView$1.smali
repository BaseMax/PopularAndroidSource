.class Lcom/ebay/android/widget/ScrimInsetDrawerView$1;
.super Ljava/lang/Object;
.source "ScrimInsetDrawerView.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/android/widget/ScrimInsetDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/ScrimInsetDrawerView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 64
    iget-object p1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    iget-object p1, p1, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p1, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    iget-object p1, p1, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 69
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 70
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 71
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 68
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    iget-object p1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->onInsetsChanged(Landroidx/core/view/WindowInsetsCompat;)V

    .line 73
    iget-object p1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->hasSystemWindowInsets()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    iget-object v0, v0, Lcom/ebay/android/widget/ScrimInsetDrawerView;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/ebay/android/widget/ScrimInsetDrawerView;->setWillNotDraw(Z)V

    .line 74
    iget-object p1, p0, Lcom/ebay/android/widget/ScrimInsetDrawerView$1;->this$0:Lcom/ebay/android/widget/ScrimInsetDrawerView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 75
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
