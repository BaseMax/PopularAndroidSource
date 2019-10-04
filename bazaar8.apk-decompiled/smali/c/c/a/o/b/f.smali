.class public Lc/c/a/o/b/f;
.super Ljava/lang/Object;
.source "PersianDatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    .line 2
    invoke-static {p1}, Lc/c/a/o/b/e;->a(I)Z

    move-result p1

    .line 3
    iget-object p2, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->b(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    .line 4
    iget-object p3, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p3}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/NumberPicker;->getValue()I

    move-result p3

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ge p2, v2, :cond_0

    .line 5
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 6
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    const/16 v3, 0x1e

    if-ge p2, v2, :cond_2

    if-ne p3, v0, :cond_1

    .line 7
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 9
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_6

    if-eqz p1, :cond_4

    if-ne p3, v0, :cond_3

    .line 10
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 11
    :cond_3
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 12
    iget-object p1, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x1d

    if-le p3, p1, :cond_5

    .line 13
    iget-object p2, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 14
    :cond_5
    iget-object p2, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 15
    iget-object p2, p0, Lc/c/a/o/b/f;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;

    invoke-static {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :cond_6
    :goto_0
    return-void
.end method
