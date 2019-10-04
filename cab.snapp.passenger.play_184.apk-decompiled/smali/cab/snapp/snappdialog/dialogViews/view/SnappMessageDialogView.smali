.class public Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;
.super Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;
.source "SourceFile"


# instance fields
.field a:Lcab/snapp/snappdialog/dialogViews/a/g;

.field b:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    return-void
.end method

.method public static getLayout()I
    .locals 1

    .line 96
    sget v0, Lcab/snapp/snappdialog/a$f;->default_content_type:I

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;->onFinishInflate()V

    .line 146
    sget v0, Lcab/snapp/snappdialog/a$e;->default_content_type_message:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public setData(Lcab/snapp/snappdialog/dialogViews/a/c;)V
    .locals 1

    .line 122
    check-cast p1, Lcab/snapp/snappdialog/dialogViews/a/g;

    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    .line 123
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    .line 1107
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g;->getDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->setDirection(I)V

    return-void
.end method

.method public setDirection(I)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextDirection(I)V

    .line 132
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    return-void

    :cond_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    .line 136
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 137
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextDirection(I)V

    :cond_1
    return-void
.end method
