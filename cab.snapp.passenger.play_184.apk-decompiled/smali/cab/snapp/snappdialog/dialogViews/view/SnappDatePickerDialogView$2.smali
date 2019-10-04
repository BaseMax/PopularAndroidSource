.class final Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1

    if-eqz p1, :cond_3

    .line 206
    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->a(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->c(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_3

    const/4 p1, 0x6

    const/16 p2, 0x1f

    if-gt p3, p1, :cond_1

    .line 214
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->c(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->c(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->getValue()I

    move-result p1

    const/16 v0, 0x1e

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->d(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/c/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->d(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/c/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/c/a;->setDay(I)V

    .line 222
    :cond_2
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->c(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setMaxValue(I)V

    .line 224
    :goto_0
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->d(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/c/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 226
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->d(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)Lcab/snapp/snappdialog/c/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcab/snapp/snappdialog/c/a;->setMonth(I)V

    .line 227
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView$2;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->e(Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;)V

    :cond_3
    :goto_1
    return-void
.end method
