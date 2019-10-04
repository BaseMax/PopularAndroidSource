.class public final Lcom/adyen/threeds2/internal/ui/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adyen/threeds2/customization/UiCustomization;


# direct methods
.method public constructor <init>(Lcom/adyen/threeds2/customization/UiCustomization;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Z)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Z)V
    .locals 2

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 441
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 442
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_3

    .line 443
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p3, :cond_1

    .line 445
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 447
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result p3

    if-lez p3, :cond_2

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 448
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    goto :goto_1

    .line 449
    :cond_3
    instance-of p3, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p3, :cond_4

    .line 450
    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    .line 451
    invoke-virtual {p1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    goto :goto_1

    .line 453
    :cond_4
    instance-of p3, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_5

    .line 454
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 455
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/ColorDrawable;->setTint(I)V

    .line 456
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    .line 458
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 461
    :cond_6
    instance-of p3, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_7

    .line 462
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 463
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    .line 465
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .line 373
    sget v0, Lcom/adyen/threeds2/R$style;->Widget_ThreeDS2_SelectItem:I

    if-ne p2, v0, :cond_1

    .line 374
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getSelectionItemCustomization()Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->getHighlightedBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 384
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Z)V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/Button;I)V
    .locals 1

    .line 162
    sget v0, Lcom/adyen/threeds2/R$style;->Widget_ThreeDS2_Button_Borderless_Cancel:I

    if-ne p2, v0, :cond_0

    .line 163
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    sget-object v0, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->CANCEL:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    invoke-virtual {p2, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getButtonCustomization(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object p2

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->b(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V

    goto :goto_0

    .line 165
    :cond_0
    sget v0, Lcom/adyen/threeds2/R$style;->Widget_ThreeDS2_Button_Borderless_Resend:I

    if-ne p2, v0, :cond_1

    .line 166
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    sget-object v0, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->RESEND:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    invoke-virtual {p2, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getButtonCustomization(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object p2

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->b(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V

    goto :goto_0

    .line 168
    :cond_1
    sget v0, Lcom/adyen/threeds2/R$style;->Widget_ThreeDS2_Button_Colored_Verify:I

    if-ne p2, v0, :cond_2

    .line 169
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    sget-object v0, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->VERIFY:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    invoke-virtual {p2, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getButtonCustomization(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object p2

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V

    goto :goto_0

    .line 171
    :cond_2
    sget v0, Lcom/adyen/threeds2/R$style;->Widget_ThreeDS2_Button_Colored_Continue:I

    if-ne p2, v0, :cond_3

    .line 172
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    sget-object v0, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->CONTINUE:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    invoke-virtual {p2, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getButtonCustomization(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object p2

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V

    goto :goto_0

    .line 174
    :cond_3
    sget v0, Lcom/adyen/threeds2/R$style;->Widget_ThreeDS2_Button_Colored_Next:I

    if-ne p2, v0, :cond_4

    .line 175
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    sget-object v0, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->NEXT:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    invoke-virtual {p2, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getButtonCustomization(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object p2

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/ButtonCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    invoke-direct {p0, v1, v0}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 192
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->c(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V

    return-void
.end method

.method private a(Landroid/widget/CompoundButton;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getSelectionItemCustomization()Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->getSelectionIndicatorTintColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getTextBoxCustomization()Lcom/adyen/threeds2/customization/TextBoxCustomization;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/TextBoxCustomization;->getBorderColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 231
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 232
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 235
    invoke-direct {p0, v2, v1}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 249
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Lcom/adyen/threeds2/customization/Customization;)V

    return-void
.end method

.method private a(Landroid/widget/ProgressBar;I)V
    .locals 1

    .line 129
    sget v0, Lcom/adyen/threeds2/R$style;->Widget_ThreeDS2_ProgressBar:I

    if-ne p2, v0, :cond_1

    .line 130
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getToolbarCustomization()Lcom/adyen/threeds2/customization/ToolbarCustomization;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    .line 253
    sget v0, Lcom/adyen/threeds2/R$style;->TextAppearance_ThreeDS2_Widget_Toolbar_Title:I

    if-ne p2, v0, :cond_0

    .line 254
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getToolbarCustomization()Lcom/adyen/threeds2/customization/ToolbarCustomization;

    move-result-object p2

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Lcom/adyen/threeds2/customization/Customization;)V

    goto/16 :goto_0

    .line 256
    :cond_0
    sget v0, Lcom/adyen/threeds2/R$style;->TextAppearance_ThreeDS2_Heading:I

    if-ne p2, v0, :cond_1

    .line 257
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getLabelCustomization()Lcom/adyen/threeds2/customization/LabelCustomization;

    move-result-object p2

    .line 258
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/LabelCustomization;->getHeadingTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/LabelCustomization;->getHeadingTextFontName()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/LabelCustomization;->getHeadingTextFontSize()I

    move-result p2

    .line 258
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 260
    :cond_1
    sget v0, Lcom/adyen/threeds2/R$style;->TextAppearance_ThreeDS2_InputLabel:I

    if-ne p2, v0, :cond_2

    .line 261
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getLabelCustomization()Lcom/adyen/threeds2/customization/LabelCustomization;

    move-result-object p2

    .line 262
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/LabelCustomization;->getInputLabelTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/LabelCustomization;->getInputLabelTextFontName()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/LabelCustomization;->getInputLabelTextFontSize()I

    move-result p2

    .line 262
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    :cond_2
    sget v0, Lcom/adyen/threeds2/R$style;->TextAppearance_ThreeDS2_SelectItem_Title:I

    if-ne p2, v0, :cond_3

    .line 265
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getSelectionItemCustomization()Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    move-result-object p2

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Lcom/adyen/threeds2/customization/Customization;)V

    goto :goto_0

    .line 267
    :cond_3
    sget v0, Lcom/adyen/threeds2/R$style;->TextAppearance_ThreeDS2_Widget_ExpandableInfoText_Title:I

    if-ne p2, v0, :cond_4

    .line 268
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getExpandableInfoCustomization()Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    move-result-object p2

    .line 269
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getHeadingTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getHeadingTextFontName()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getHeadingTextFontSize()I

    move-result p2

    .line 269
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 271
    :cond_4
    sget v0, Lcom/adyen/threeds2/R$style;->TextAppearance_ThreeDS2_Widget_ExpandableInfoText_Info:I

    if-ne p2, v0, :cond_5

    .line 272
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getExpandableInfoCustomization()Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    move-result-object p2

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Lcom/adyen/threeds2/customization/Customization;)V

    goto :goto_0

    .line 275
    :cond_5
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/UiCustomization;->getLabelCustomization()Lcom/adyen/threeds2/customization/LabelCustomization;

    move-result-object p2

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Lcom/adyen/threeds2/customization/Customization;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/adyen/threeds2/customization/Customization;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/Customization;->getTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/Customization;->getTextFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/Customization;->getTextFontSize()I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 289
    invoke-static {p2}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 292
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/adyen/threeds2/customization/Customization;->parseTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 298
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    if-lez p4, :cond_2

    int-to-float p2, p4

    .line 302
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/ui/widget/DividerView;)V
    .locals 2

    .line 390
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getId()I

    move-result v0

    .line 392
    sget v1, Lcom/adyen/threeds2/R$id;->dividerView_info:I

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getExpandableInfoCustomization()Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getBorderColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getBorderWidth()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/adyen/threeds2/internal/ui/a;->a(Lcom/adyen/threeds2/internal/ui/widget/DividerView;Ljava/lang/String;I)V

    goto :goto_0

    .line 397
    :cond_0
    sget v1, Lcom/adyen/threeds2/R$id;->dividerView_select:I

    if-ne v0, v1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getSelectionItemCustomization()Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->getBorderColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->getBorderWidth()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/adyen/threeds2/internal/ui/a;->a(Lcom/adyen/threeds2/internal/ui/widget/DividerView;Ljava/lang/String;I)V

    goto :goto_0

    .line 402
    :cond_1
    sget v1, Lcom/adyen/threeds2/R$id;->dividerView_logos:I

    if-ne v0, v1, :cond_2

    .line 403
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getExpandableInfoCustomization()Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getBorderColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getBorderWidth()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/adyen/threeds2/internal/ui/a;->a(Lcom/adyen/threeds2/internal/ui/widget/DividerView;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/ui/widget/DividerView;Ljava/lang/String;I)V
    .locals 1

    .line 411
    invoke-static {p2}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 414
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setColor(I)V

    :cond_0
    if-ltz p3, :cond_1

    .line 418
    sget-object p2, Lcom/adyen/threeds2/internal/ui/a$1;->a:[I

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getOrientation()Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 423
    :pswitch_0
    invoke-virtual {p1, p3}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setThickness(I)V

    goto :goto_0

    .line 420
    :pswitch_1
    invoke-virtual {p1, p3}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setThickness(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getExpandableInfoCustomization()Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getHighlightedBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;->setHeaderBackgroundColor(I)V

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->getExpandedStateIndicatorColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;->setStateIndicatorColor(I)V

    :cond_2
    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getToolbarCustomization()Lcom/adyen/threeds2/customization/ToolbarCustomization;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setBackgroundColor(I)V

    .line 319
    :cond_1
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    invoke-virtual {p1, v1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setTitle(Ljava/lang/String;)V

    .line 325
    :cond_2
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->getButtonText()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 328
    invoke-virtual {p1, v1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setCancelButtonText(Ljava/lang/String;)V

    .line 331
    :cond_3
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->getTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 334
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setTitleTextColor(I)V

    .line 335
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setCancelButtonTextColor(I)V

    .line 338
    :cond_4
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->getTextFontName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adyen/threeds2/customization/Customization;->parseTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 341
    invoke-virtual {p1, v1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setTitleTypeface(Landroid/graphics/Typeface;)V

    .line 342
    invoke-virtual {p1, v1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setCancelButtonTextTypeface(Landroid/graphics/Typeface;)V

    .line 345
    :cond_5
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->getTextFontSize()I

    move-result v0

    if-lez v0, :cond_6

    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->setTitleFontSize(Ljava/lang/Integer;)V

    :cond_6
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 4

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 475
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 476
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    .line 477
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 478
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 479
    invoke-direct {p0, v0, p2}, Lcom/adyen/threeds2/internal/ui/a;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    goto :goto_1

    .line 480
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    .line 481
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    .line 483
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 485
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 486
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 487
    invoke-direct {p0, v3, p2}, Lcom/adyen/threeds2/internal/ui/a;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    .line 491
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 492
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 496
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_5

    .line 497
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 498
    invoke-virtual {p1}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 499
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    :cond_5
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method private b(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/ButtonCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    .line 204
    invoke-direct {p0, v1, v0, v2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Z)V

    .line 207
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->c(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V

    return-void
.end method

.method private c(Landroid/widget/Button;Lcom/adyen/threeds2/customization/ButtonCustomization;)V
    .locals 2

    .line 211
    invoke-virtual {p2}, Lcom/adyen/threeds2/customization/ButtonCustomization;->getCornerRadius()I

    move-result v0

    if-ltz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/adyen/threeds2/internal/ui/a;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 218
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;Lcom/adyen/threeds2/customization/Customization;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p2

    .line 107
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Landroid/widget/ProgressBar;

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/ProgressBar;I)V

    goto :goto_0

    .line 109
    :cond_1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 110
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/CompoundButton;)V

    goto :goto_0

    .line 111
    :cond_2
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 112
    check-cast p1, Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/Button;I)V

    goto :goto_0

    .line 113
    :cond_3
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 114
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 115
    :cond_4
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 116
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 117
    :cond_5
    instance-of v0, p1, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;

    if-eqz v0, :cond_6

    .line 118
    check-cast p1, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/a;->a(Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;)V

    goto :goto_0

    .line 119
    :cond_6
    instance-of v0, p1, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    if-eqz v0, :cond_7

    .line 120
    check-cast p1, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/a;->a(Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;)V

    goto :goto_0

    .line 121
    :cond_7
    instance-of v0, p1, Lcom/adyen/threeds2/internal/ui/widget/DividerView;

    if-eqz v0, :cond_8

    .line 122
    check-cast p1, Lcom/adyen/threeds2/internal/ui/widget/DividerView;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/a;->a(Lcom/adyen/threeds2/internal/ui/widget/DividerView;)V

    goto :goto_0

    .line 123
    :cond_8
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/view/View;I)V

    :cond_9
    :goto_0
    return-void
.end method

.method a(Landroid/view/Window;)V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a;->a:Lcom/adyen/threeds2/customization/UiCustomization;

    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/UiCustomization;->getScreenCustomization()Lcom/adyen/threeds2/customization/ScreenCustomization;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ScreenCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    if-eqz v1, :cond_3

    .line 84
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 85
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/ColorDrawable;->setTint(I)V

    .line 88
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    .line 92
    invoke-virtual {v0}, Lcom/adyen/threeds2/customization/ScreenCustomization;->getStatusBarColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/customization/Customization;->parseHexColorCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_4
    return-void
.end method
