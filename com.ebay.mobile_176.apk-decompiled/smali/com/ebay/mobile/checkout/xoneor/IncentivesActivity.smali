.class public Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "IncentivesActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static MODULE_NAME:Ljava/lang/String; = "incentives"


# instance fields
.field private final EXTRA_INCENTIVE_VALUE:Ljava/lang/String;

.field private final EXTRA_IS_REMOVE_OPERATION:Ljava/lang/String;

.field private incentiveCode:Landroid/widget/EditText;

.field private incentiveLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private incentiveValue:Ljava/lang/String;

.field private incentivesSize:I

.field private isRemoveOperation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    const-string v0, "incentiveValue"

    .line 41
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->EXTRA_INCENTIVE_VALUE:Ljava/lang/String;

    const-string v0, "isRemoveOperation"

    .line 42
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->EXTRA_IS_REMOVE_OPERATION:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->handleDoneButtonUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private closeKeyboard()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private handleDoneButtonUpdate(Ljava/lang/String;)V
    .locals 1

    .line 401
    iget v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentivesSize:I

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const v0, 0x7f0a03ba

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->enableMenuItem(IZ)V

    return-void
.end method

.method public static synthetic lambda$renderScreen$0(Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;Landroid/widget/TextView;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private renderIncentives(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p2, 0x7f0a080a

    .line 292
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;

    .line 298
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00c5

    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0801

    .line 301
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 302
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_1

    .line 303
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v4, 0x7f0a07fb

    .line 308
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 309
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->maskedCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->maskedCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 312
    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v4, 0x7f0a07fd

    .line 315
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 316
    iget-boolean v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->applied:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 317
    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 318
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0a07f6

    .line 321
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a07f5

    .line 322
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 323
    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->totalAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    if-eqz v7, :cond_3

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->totalAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->totalAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    .line 327
    invoke-static {p0, v4}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 326
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 329
    :cond_3
    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->redeemedAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    if-eqz v7, :cond_4

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->redeemedAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->redeemedAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    .line 333
    invoke-static {p0, v4}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 332
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    const v4, 0x7f0a07f4

    .line 336
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v4, 0x7f0a0806

    .line 339
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0805

    .line 340
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 341
    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->remainingAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    if-eqz v7, :cond_5

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->remainingAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->remainingAmount:Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryItem;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    .line 345
    invoke-static {p0, v4}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 344
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    const v4, 0x7f0a0804

    .line 348
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v4, 0x7f0a07fa

    .line 351
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 352
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->expirationDate:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 353
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->expirationDate:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 355
    :cond_6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 359
    iget v2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentivesSize:I

    if-ne v1, v2, :cond_7

    const v2, 0x7f0a07f9

    .line 360
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_7
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;)V
    .locals 5
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 219
    iget-boolean v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->applicable:Z

    const v1, 0x7f0a0808

    const v2, 0x7f0a0803

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->disabledNote:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ModuleNote;

    if-eqz v0, :cond_0

    .line 224
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->disabledNote:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ModuleNote;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ModuleNote;->text:Ljava/lang/String;

    const v0, 0x7f0a0802

    .line 225
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 232
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a080a

    .line 236
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->appliedIncentives:Ljava/util/List;

    const/4 v1, 0x1

    const v2, 0x7f0a0800

    if-eqz v0, :cond_3

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentivesSize:I

    .line 244
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->appliedIncentives:Ljava/util/List;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->errors:Ljava/util/List;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->renderIncentives(Ljava/util/List;Z)V

    goto :goto_1

    .line 248
    :cond_3
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a03ba

    .line 251
    iget v2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentivesSize:I

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->enableMenuItem(IZ)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 255
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->errors:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->errors:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->renderErrors(Ljava/util/List;)V

    const v0, 0x7f0a00e9

    .line 258
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 261
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$IncentivesActivity$yt957T8r1PxWKaxrGwu9kxfcn0A;

    invoke-direct {v2, p0, v0}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$IncentivesActivity$yt957T8r1PxWKaxrGwu9kxfcn0A;-><init>(Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;Landroid/widget/TextView;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 269
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->isRemoveOperation:Z

    if-eqz v0, :cond_6

    .line 271
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "CheckoutIncentiveRemoved"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_4

    .line 276
    :cond_6
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "CheckoutIncentiveApplied"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 278
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "CheckoutGiftCardReedemed"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "credeemed"

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->errors:Ljava/util/List;

    if-eqz v2, :cond_7

    const-string v2, "0"

    goto :goto_3

    :cond_7
    const-string v2, "1"

    .line 279
    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 283
    :cond_8
    :goto_4
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->placeHolder:Ljava/lang/String;

    if-eqz v0, :cond_9

    const v0, 0x7f0a07f7

    .line 284
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->placeHolder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private submitUserRedemptionCode()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->closeKeyboard()V

    .line 377
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 378
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->errorContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1210dc

    invoke-static {p0, v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderAlert(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 379
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->errorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->closeKeyboard()V

    .line 388
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->startProgress()V

    .line 389
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveValue:Ljava/lang/String;

    const/4 v1, 0x0

    .line 390
    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->isRemoveOperation:Z

    .line 391
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v1, v0, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->applyIncentive(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckoutIncentiveEntry"

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 192
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;

    .line 194
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->closeKeyboard()V

    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->startProgress()V

    .line 201
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveValue:Ljava/lang/String;

    const/4 p2, 0x0

    .line 202
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->isRemoveOperation:Z

    .line 203
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->id:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->applyIncentive(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->startProgress()V

    .line 210
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveValue:Ljava/lang/String;

    const/4 p2, 0x1

    .line 211
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->isRemoveOperation:Z

    .line 212
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/Incentive;->id:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->removeIncentive(Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00c6

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->initContentView(ILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "incentiveValue"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveValue:Ljava/lang/String;

    const-string v0, "isRemoveOperation"

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->isRemoveOperation:Z

    :cond_0
    const p1, 0x7f0a07fe

    .line 62
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const p1, 0x7f0a07f7

    .line 63
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    .line 64
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 65
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 66
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 79
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->addMaskView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 130
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->submitUserRedemptionCode()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 181
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->submitUserRedemptionCode()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->submitUserRedemptionCode()V

    return v0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->closeKeyboard()V

    .line 163
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->finish()V

    return v0
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->closeKeyboard()V

    .line 145
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f0a03ba

    .line 136
    invoke-virtual {p0, p1, v1, v0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->setMenuItemVisibility(Landroid/view/Menu;IZ)Z

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0, p1, v1, v2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->enableMenuItem(Landroid/view/Menu;IZ)V

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "incentiveValue"

    .line 87
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isRemoveOperation"

    .line 88
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->isRemoveOperation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 105
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->stopProgress()V

    return-void

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;

    if-nez p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->finish()V

    return-void

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    iget-object p3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 121
    :cond_3
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->subtitle:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->incentiveLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;->placeHolder:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/incentive/IncentivesModule;)V

    .line 124
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/IncentivesActivity;->stopProgress()V

    return-void
.end method
