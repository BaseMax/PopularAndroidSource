.class Lcom/ebay/android/widget/ViewVisibility;
.super Ljava/lang/Object;
.source "ViewVisibility.java"


# instance fields
.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final viewToVisibilityFunction:Lcom/ebay/android/widget/ViewToVisibilityFunction;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/ebay/android/widget/ViewToVisibilityFunction;

    invoke-direct {v0}, Lcom/ebay/android/widget/ViewToVisibilityFunction;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/ViewVisibility;->viewToVisibilityFunction:Lcom/ebay/android/widget/ViewToVisibilityFunction;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/android/widget/ViewVisibility;->viewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method isVisible()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/ebay/android/widget/ViewVisibility;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 35
    iget-object v1, p0, Lcom/ebay/android/widget/ViewVisibility;->viewToVisibilityFunction:Lcom/ebay/android/widget/ViewToVisibilityFunction;

    invoke-virtual {v1, v0}, Lcom/ebay/android/widget/ViewToVisibilityFunction;->apply(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
