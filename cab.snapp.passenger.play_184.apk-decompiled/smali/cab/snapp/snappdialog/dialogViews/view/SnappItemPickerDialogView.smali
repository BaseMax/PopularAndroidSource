.class public Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;
.super Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;
.source "SourceFile"


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/e;

.field private b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;
    .locals 0

    .line 15
    iget-object p0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItemSelectedListener()Lcab/snapp/snappdialog/dialogViews/a/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItemSelectedListener()Lcab/snapp/snappdialog/dialogViews/a/e$b;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v2, v1}, Lcab/snapp/snappdialog/dialogViews/a/e$b;->onItemSelected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)Lcab/snapp/snappdialog/dialogViews/a/e;
    .locals 0

    .line 15
    iget-object p0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    return-object p0
.end method

.method public static getLayout()I
    .locals 1

    .line 110
    sget v0, Lcab/snapp/snappdialog/a$f;->item_picker_content_type:I

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;->onAttachedToWindow()V

    .line 185
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;->onFinishInflate()V

    .line 178
    sget v0, Lcab/snapp/snappdialog/a$e;->picker_first:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    return-void
.end method

.method public setData(Lcab/snapp/snappdialog/dialogViews/a/c;)V
    .locals 1

    .line 170
    check-cast p1, Lcab/snapp/snappdialog/dialogViews/a/e;

    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    .line 1118
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    const/high16 v0, 0x60000

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setDescendantFocusability(I)V

    .line 1124
    new-instance p1, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;

    invoke-direct {p1, p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView$1;-><init>(Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;)V

    .line 1143
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 1145
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setMinValue(I)V

    .line 1146
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setMaxValue(I)V

    .line 1147
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/e;->getItems()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1148
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->b:Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;

    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/e;->isRepeatingEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/custom_views/PersianNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1150
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->a()V

    :cond_1
    :goto_0
    return-void
.end method
