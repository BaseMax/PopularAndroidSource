.class final Lcab/snapp/passenger/units/main/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/main/d;->onInitialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/main/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/main/d;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->y(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->z(Lcab/snapp/passenger/units/main/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->viewIsReady()V

    .line 732
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->A(Lcab/snapp/passenger/units/main/d;)Z

    .line 734
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 735
    iget-object v1, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v1}, Lcab/snapp/passenger/units/main/d;->B(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/main/MainView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 736
    iget-object v1, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v1}, Lcab/snapp/passenger/units/main/d;->C(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/MainView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 740
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 742
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/d;->D(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 744
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d$3;->a:Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->scrollJekRecyclerViewToTop()V

    :cond_2
    return-void
.end method
