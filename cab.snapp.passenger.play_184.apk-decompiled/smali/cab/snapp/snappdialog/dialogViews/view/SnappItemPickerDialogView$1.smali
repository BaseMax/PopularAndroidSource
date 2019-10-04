.class final Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 0

    if-eqz p1, :cond_1

    .line 128
    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p2

    if-eqz p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getId()I

    move-result p1

    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 134
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItemSelectedListener()Lcab/snapp/snappdialog/dialogViews/a/e$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    .line 135
    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lt p1, p3, :cond_1

    .line 137
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItemSelectedListener()Lcab/snapp/snappdialog/dialogViews/a/e$b;

    move-result-object p1

    add-int/lit8 p3, p3, -0x1

    iget-object p2, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    invoke-static {p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-interface {p1, p3, p2}, Lcab/snapp/snappdialog/dialogViews/a/e$b;->onItemSelected(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
