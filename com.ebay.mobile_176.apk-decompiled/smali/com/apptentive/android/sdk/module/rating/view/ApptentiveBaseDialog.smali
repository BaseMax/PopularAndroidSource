.class public abstract Lcom/apptentive/android/sdk/module/rating/view/ApptentiveBaseDialog;
.super Landroid/app/Dialog;
.source "ApptentiveBaseDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/rating/view/ApptentiveBaseDialog;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/module/rating/view/ApptentiveBaseDialog;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/rating/view/ApptentiveBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    .line 29
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x11

    .line 31
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/rating/view/ApptentiveBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/rating/view/ApptentiveBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, 0x7f000000

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
