.class public Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;
.super Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;
.source "SourceFile"


# instance fields
.field a:Lcab/snapp/snappdialog/dialogViews/a/i;

.field b:Lcab/snapp/snappdialog/a/c;

.field c:Landroidx/appcompat/widget/AppCompatTextView;

.field d:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    return-void
.end method

.method public static getLayout()I
    .locals 1

    .line 108
    sget v0, Lcab/snapp/snappdialog/a$f;->radio_list_content_type:I

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;->onFinishInflate()V

    .line 169
    sget v0, Lcab/snapp/snappdialog/a$e;->list_content_type_message:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    sget v0, Lcab/snapp/snappdialog/a$e;->list_content_type_recycler:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setData(Lcab/snapp/snappdialog/dialogViews/a/c;)V
    .locals 5

    .line 161
    check-cast p1, Lcab/snapp/snappdialog/dialogViews/a/i;

    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    .line 162
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    .line 1119
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1125
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getMessageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getMessageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1132
    new-instance v0, Lcab/snapp/snappdialog/a/c;

    invoke-virtual {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getMessageList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getDefaultCheckedItemPosition()I

    move-result v4

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i;->getSingleItemSelectedListener()Lcab/snapp/snappdialog/b/d;

    move-result-object p1

    invoke-direct {v0, v2, v3, v4, p1}, Lcab/snapp/snappdialog/a/c;-><init>(Landroid/content/Context;Ljava/util/List;ILcab/snapp/snappdialog/b/d;)V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->b:Lcab/snapp/snappdialog/a/c;

    .line 1133
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1134
    invoke-virtual {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1135
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1136
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->b:Lcab/snapp/snappdialog/a/c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method public setDirection(I)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 145
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextDirection(I)V

    .line 146
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    return-void

    :cond_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    .line 150
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 151
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextDirection(I)V

    :cond_1
    return-void
.end method
