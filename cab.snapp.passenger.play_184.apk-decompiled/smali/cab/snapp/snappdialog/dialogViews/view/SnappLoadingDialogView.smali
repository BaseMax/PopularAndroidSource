.class public Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;
.super Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;
.source "SourceFile"


# instance fields
.field a:Lcab/snapp/snappdialog/dialogViews/a/f;

.field private b:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    return-void
.end method

.method public static getLayout()I
    .locals 1

    .line 92
    sget v0, Lcab/snapp/snappdialog/a$f;->loading_content_type:I

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;->onFinishInflate()V

    .line 125
    sget v0, Lcab/snapp/snappdialog/a$e;->loading_content_type_title_tv:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public setData(Lcab/snapp/snappdialog/dialogViews/a/c;)V
    .locals 1

    .line 117
    check-cast p1, Lcab/snapp/snappdialog/dialogViews/a/f;

    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    .line 118
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    .line 1102
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1106
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/f;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/f;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/f;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
