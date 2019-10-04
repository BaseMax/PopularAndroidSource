.class final Lcab/snapp/snappuikit/SnappClearableEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcab/snapp/snappuikit/SnappClearableEditText;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappClearableEditText;Landroid/content/Context;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->b:Lcab/snapp/snappuikit/SnappClearableEditText;

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 97
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->b:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p1, p1, Lcab/snapp/snappuikit/SnappClearableEditText;->d:Landroid/view/View;

    iget-object p2, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcab/snapp/snappuikit/a$b;->carbon_grey:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->b:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p1, p1, Lcab/snapp/snappuikit/SnappClearableEditText;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 99
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lcab/snapp/snappuikit/SnappClearableEditText;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->b:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p2, p2, Lcab/snapp/snappuikit/SnappClearableEditText;->d:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->b:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p1, p1, Lcab/snapp/snappuikit/SnappClearableEditText;->d:Landroid/view/View;

    iget-object p2, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcab/snapp/snappuikit/a$b;->very_light_pink:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->b:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p1, p1, Lcab/snapp/snappuikit/SnappClearableEditText;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 104
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lcab/snapp/snappuikit/SnappClearableEditText;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappClearableEditText$1;->b:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p2, p2, Lcab/snapp/snappuikit/SnappClearableEditText;->d:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
