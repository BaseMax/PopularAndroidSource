.class final Lcom/google/android/material/appbar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/material/appbar/a;->a:Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/a;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/a;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 53
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/a;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/a;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final getLayoutLeft()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/android/material/appbar/a;->c:I

    return v0
.end method

.method public final getLayoutTop()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/google/android/material/appbar/a;->b:I

    return v0
.end method

.method public final getLeftAndRightOffset()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/android/material/appbar/a;->e:I

    return v0
.end method

.method public final getTopAndBottomOffset()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/android/material/appbar/a;->d:I

    return v0
.end method

.method public final onViewLayout()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/a;->b:I

    .line 45
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/a;->c:I

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->a()V

    return-void
.end method

.method public final setLeftAndRightOffset(I)Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/google/android/material/appbar/a;->e:I

    if-eq v0, p1, :cond_0

    .line 79
    iput p1, p0, Lcom/google/android/material/appbar/a;->e:I

    .line 80
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setTopAndBottomOffset(I)Z
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/material/appbar/a;->d:I

    if-eq v0, p1, :cond_0

    .line 64
    iput p1, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 65
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
