.class final Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;-><init>()V

    const/4 p1, -0x1

    .line 238
    iput p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->c:I

    .line 239
    iput p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->d:I

    return-void
.end method


# virtual methods
.method public final onSlide(Landroid/view/View;F)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->c(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->c(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->onSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->b:Z

    .line 245
    iget v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->d:I

    iput v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->c:I

    .line 246
    iput p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->d:I

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->a(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)Z

    .line 263
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->handleModalBottomSheetOpened()V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->handleModalBottomSheetClosed()V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->handleModalBottomSheetClosed()V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->a(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)Z

    .line 259
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->handleModalBottomSheetOpened()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    .line 266
    iput-boolean v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->b:Z

    .line 267
    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {v1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->b(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->getBottomSheetBehavior()Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;->setEnabled(Z)V

    .line 271
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->c(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$1;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->c(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->onStateChanged(Landroid/view/View;I)V

    :cond_5
    return-void
.end method
