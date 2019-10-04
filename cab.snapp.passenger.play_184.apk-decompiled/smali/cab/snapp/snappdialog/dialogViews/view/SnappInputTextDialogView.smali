.class public Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;
.super Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;
.source "SourceFile"


# instance fields
.field a:Lcab/snapp/snappdialog/dialogViews/a/d;

.field b:Landroidx/appcompat/widget/AppCompatTextView;

.field c:Landroidx/appcompat/widget/AppCompatTextView;

.field d:Landroidx/appcompat/widget/AppCompatEditText;

.field e:Landroidx/appcompat/widget/AppCompatTextView;

.field f:Landroidx/appcompat/widget/AppCompatEditText;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/CheckBox;

.field i:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    return-void
.end method

.method public static getLayout()I
    .locals 1

    .line 128
    sget v0, Lcab/snapp/snappdialog/a$f;->input_text_content_type:I

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 249
    invoke-super {p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;->onFinishInflate()V

    .line 250
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_message:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_et_title_first:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_et_first:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 253
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_et_title_second:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 254
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_et_second:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 255
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_checkbox_layout:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->g:Landroid/widget/LinearLayout;

    .line 256
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_checkbox:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->h:Landroid/widget/CheckBox;

    .line 257
    sget v0, Lcab/snapp/snappdialog/a$e;->input_text_content_type_checkbox_title:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public setData(Lcab/snapp/snappdialog/dialogViews/a/c;)V
    .locals 3

    .line 242
    check-cast p1, Lcab/snapp/snappdialog/dialogViews/a/d;

    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 243
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 1139
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 1145
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtHint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1160
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1162
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtTextWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1168
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getFirstEtTextWatcher()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1171
    :cond_4
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1173
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    :cond_5
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtHint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1178
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1181
    :cond_6
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1183
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    :cond_7
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtTextWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1188
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getSecondEtTextWatcher()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1191
    :cond_8
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getCheckboxText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getCheckboxText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1193
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getCheckboxText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    :cond_9
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->isCheckboxIsChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1198
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->h:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1202
    :cond_a
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1204
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 1206
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->h:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d;->getCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1208
    :cond_b
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 1210
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView$1;

    invoke-direct {v0, p0}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView$1;-><init>(Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method public setDirection(I)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 226
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextDirection(I)V

    .line 227
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    return-void

    :cond_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    .line 231
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 232
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextDirection(I)V

    :cond_1
    return-void
.end method
