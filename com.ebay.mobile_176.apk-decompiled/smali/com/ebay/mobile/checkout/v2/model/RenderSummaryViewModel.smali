.class public Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "RenderSummaryViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field private actionConfirmationViewModel:Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

.field public actionContentDescription:Ljava/lang/String;

.field public actionDrawable:Landroid/graphics/drawable/Drawable;

.field public actionImportantForAccessibility:I

.field public addressCellAccessibilityText:Ljava/lang/String;

.field private bubbleHelpContent:Ljava/lang/CharSequence;

.field public bubbleHelpContentDescription:Ljava/lang/String;

.field public bubbleHelpDrawable:Landroid/graphics/drawable/Drawable;

.field private bubbleHelpTitle:Ljava/lang/CharSequence;

.field protected cellCount:I

.field public disabled:Z

.field private isShippingAddress:Z

.field public isSubItem:Z

.field public isV2Mixed:Z

.field public primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

.field public secondary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

.field public final showDivider:Z

.field public final showSpacer:Z

.field public subItem:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

.field protected final summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

.field public tertiary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public topPadding:I


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;II)V
    .locals 10
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 244
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionImportantForAccessibility:I

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    const-string v1, "RenderSummary must not be null."

    .line 245
    invoke-static {p2, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 246
    iget-boolean v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->disabled:Z

    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->disabled:Z

    const v1, 0x7f0a14b8

    .line 247
    iput v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    .line 248
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showDivider:Z

    .line 249
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showSpacer:Z

    .line 250
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->checkForShippingAddress(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isShippingAddress:Z

    .line 252
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getPrimaryLayoutId()I

    move-result v2

    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-direct {v1, v2, v3, v0}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 255
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    const v2, 0x7f0a0c8e

    iput v2, v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->id:I

    .line 258
    :cond_0
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->secondary:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->secondary:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 266
    new-instance v4, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getSecondaryLayoutId()I

    move-result v5

    invoke-direct {v4, v5, v3, p3}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    .line 268
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, p4

    goto :goto_0

    .line 271
    :cond_1
    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondary:Ljava/util/List;

    .line 274
    :cond_2
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->tertiary:Ljava/util/List;

    invoke-static {p3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 276
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->tertiary:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 280
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getTertiaryLayoutId()I

    move-result v3

    invoke-direct {v2, v3, v1, v0}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    .line 282
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :cond_3
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->tertiary:Ljava/util/List;

    .line 287
    :cond_4
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->subItems:Ljava/util/List;

    invoke-static {p3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 289
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->subItems:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 290
    new-instance p2, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZZZ)V

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->subItem:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    :cond_5
    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V
    .locals 12
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    .line 119
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const/4 v2, 0x0

    .line 82
    iput v2, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionImportantForAccessibility:I

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    const-string v3, "RenderSummary must not be null."

    .line 120
    invoke-static {p2, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 121
    iget-boolean v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->disabled:Z

    iput-boolean v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->disabled:Z

    const v3, 0x7f0a14b8

    .line 122
    iput v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    move/from16 v3, p6

    .line 123
    iput-boolean v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showDivider:Z

    move/from16 v3, p7

    .line 124
    iput-boolean v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showSpacer:Z

    .line 125
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->checkForShippingAddress(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isShippingAddress:Z

    .line 127
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v3, :cond_0

    .line 129
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getPrimaryLayoutId()I

    move-result v4

    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    move v6, p3

    invoke-direct {v3, v4, v5, p3}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 131
    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    const v4, 0x7f0a0c8e

    iput v4, v3, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->id:I

    .line 134
    :cond_0
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->secondary:Ljava/util/List;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->secondary:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 140
    new-instance v6, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getSecondaryLayoutId()I

    move-result v7

    move/from16 v8, p4

    invoke-direct {v6, v7, v5, v8}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    .line 142
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-direct {p0, v5}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->constructRadioButtonAccessibilityText(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)V

    goto :goto_0

    .line 147
    :cond_1
    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondary:Ljava/util/List;

    .line 150
    :cond_2
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->tertiary:Ljava/util/List;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->tertiary:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 156
    new-instance v6, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getTertiaryLayoutId()I

    move-result v7

    move/from16 v8, p5

    invoke-direct {v6, v7, v5, v8}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    .line 158
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_3
    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->tertiary:Ljava/util/List;

    .line 163
    :cond_4
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->subItems:Ljava/util/List;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 165
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->subItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 166
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZZZ)V

    iput-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->subItem:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    :cond_5
    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZZZ)V
    .locals 12
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p4

    move/from16 v3, p9

    .line 176
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const/4 v4, 0x0

    .line 82
    iput v4, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionImportantForAccessibility:I

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    const-string v5, "RenderSummary must not be null."

    .line 177
    invoke-static {p2, v5}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iput-object v5, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 178
    iget-boolean v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->disabled:Z

    iput-boolean v5, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->disabled:Z

    const v5, 0x7f0a14b8

    .line 179
    iput v5, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    move/from16 v5, p6

    .line 180
    iput-boolean v5, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showDivider:Z

    move/from16 v5, p7

    .line 181
    iput-boolean v5, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showSpacer:Z

    .line 182
    iput-boolean v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isSubItem:Z

    .line 183
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->checkForShippingAddress(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isShippingAddress:Z

    .line 185
    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const v6, 0x7f0a0c8e

    if-eqz v5, :cond_0

    .line 187
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getPrimaryLayoutId()I

    move-result v5

    iget-object v7, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    move v8, p3

    invoke-direct {v3, v5, v7, p3}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 189
    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    iput v6, v3, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->id:I

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 193
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getPrimaryLayoutId()I

    move-result v5

    new-instance v7, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-direct {v7}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;-><init>()V

    invoke-direct {v3, v5, v7}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)V

    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 194
    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    iput v6, v3, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->id:I

    .line 197
    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->secondary:Ljava/util/List;

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->secondary:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 205
    iget-object v8, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->secondary:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    if-ne v8, v6, :cond_2

    .line 206
    new-instance v8, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getSecondaryLayoutId()I

    move-result v9

    invoke-direct {v8, v9, v7, v2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    goto :goto_2

    .line 209
    :cond_2
    new-instance v8, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getSecondaryLayoutId()I

    move-result v9

    const-string v10, "payPalCreditDetails"

    invoke-direct {v8, v9, v7, v2, v10}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;ILjava/lang/String;)V

    .line 212
    :goto_2
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-direct {p0, v7}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->constructRadioButtonAccessibilityText(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)V

    goto :goto_1

    .line 217
    :cond_3
    iput-object v3, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondary:Ljava/util/List;

    .line 220
    :cond_4
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->tertiary:Ljava/util/List;

    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->tertiary:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 226
    new-instance v6, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getTertiaryLayoutId()I

    move-result v7

    move/from16 v8, p5

    invoke-direct {v6, v7, v5, v8}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    .line 228
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 230
    :cond_5
    iput-object v2, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->tertiary:Ljava/util/List;

    .line 233
    :cond_6
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->subItems:Ljava/util/List;

    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 235
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->subItems:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 236
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZZZ)V

    iput-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->subItem:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    :cond_7
    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)V
    .locals 7
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const v1, 0x7f0d0649

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 110
    invoke-direct/range {v0 .. v7}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    return-void
.end method

.method private constructRadioButtonAccessibilityText(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    .line 532
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-nez v0, :cond_0

    goto :goto_1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isShippingAddress:Z

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 545
    :cond_2
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 546
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 548
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic lambda$onModelClick$0(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;Landroid/view/View;)V
    .locals 0

    .line 570
    invoke-interface {p0, p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;->onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    return-void
.end method

.method public static onActionIcon(Landroid/widget/ImageButton;Z)V
    .locals 2
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxActionButton"
        }
    .end annotation

    .line 584
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 585
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 586
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0702a3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 591
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 594
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0403b6

    invoke-static {p1, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 593
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 598
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, 0x0

    .line 599
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static onModelClick(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;)V
    .locals 1
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxOnModelClick",
            "uxContent"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->hasAction()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->shouldShowBubbleHelp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    :cond_1
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$RenderSummaryViewModel$xvbkqzGTNIh_M9UG18_5WdqE2lc;

    invoke-direct {v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$RenderSummaryViewModel$xvbkqzGTNIh_M9UG18_5WdqE2lc;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static setCenterVertical(Landroid/view/View;Z)V
    .locals 2
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "android:layout_centerVertical"
        }
    .end annotation

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xd

    .line 620
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 621
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public checkForShippingAddress(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 313
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->SELECT_ADDRESS:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    .line 314
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->EXPAND_SHIPPING_ADDRESSES:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    .line 315
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public getActionConfirmation()Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;

    return-object v0
.end method

.method public getActionMenu()Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->actionMenu:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->disabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected getPrimaryLayoutId()I
    .locals 1

    const v0, 0x7f0d063e

    return v0
.end method

.method protected getSecondaryLayoutId()I
    .locals 1

    const v0, 0x7f0d063b

    return v0
.end method

.method protected getTertiaryLayoutId()I
    .locals 1

    const v0, 0x7f0d063b

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasAction()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 321
    instance-of v0, p1, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isV2Mixed:Z

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondary:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->secondary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 329
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->tertiary:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->tertiary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 333
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_1

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->subItem:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->subItem:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    .line 338
    :cond_4
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isShippingAddress:Z

    if-eqz v0, :cond_5

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->cellCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->addressCellAccessibilityText:Ljava/lang/String;

    .line 342
    :cond_5
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->shouldShowActionMenu()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 344
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->getActionMenu()Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;

    move-result-object v0

    .line 345
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isShippingAddress:Z

    const v2, 0x7f120eab

    if-eqz v1, :cond_6

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->addressCellAccessibilityText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionContentDescription:Ljava/lang/String;

    goto :goto_2

    .line 351
    :cond_6
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionContentDescription:Ljava/lang/String;

    :cond_7
    :goto_2
    const v0, 0x7f0802f2

    .line 359
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 361
    :cond_8
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->shouldShowChevron()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionContentDescription:Ljava/lang/String;

    const/4 v0, 0x2

    .line 364
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionImportantForAccessibility:I

    const v0, 0x7f0403f0

    .line 365
    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionDrawable:Landroid/graphics/drawable/Drawable;

    .line 368
    :cond_9
    :goto_3
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->overlay:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    if-eqz v1, :cond_a

    const v1, 0x7f08036f

    .line 371
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->overlay:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->getIconAccessibilityText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpContentDescription:Ljava/lang/String;

    .line 373
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->overlay:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpTitle:Ljava/lang/CharSequence;

    .line 374
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->overlay:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->messages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ebay/mobile/payments/experience/PaymentsExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    .line 377
    :cond_a
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasActionConfirmatiom()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 379
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionConfirmationViewModel:Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    .line 380
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionConfirmationViewModel:Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->onBind(Landroid/content/Context;)V

    .line 383
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 384
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showDivider:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0701cd

    .line 385
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->topPadding:I

    goto :goto_4

    .line 386
    :cond_c
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->isV2Mixed:Z

    if-eqz v0, :cond_d

    const v0, 0x7f0701c2

    .line 387
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->topPadding:I

    goto :goto_4

    :cond_d
    const v0, 0x7f070499

    .line 389
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->topPadding:I

    :goto_4
    return-void
.end method

.method public synthetic onBind(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method

.method public shouldShowActionConfirmation()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionConfirmationViewModel:Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowActionIcon()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->disabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasActionMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowActionMenu()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasActionMenu()Z

    move-result v0

    return v0
.end method

.method public shouldShowBubbleHelp()Z
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowChevron()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasAction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasActionConfirmatiom()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public showActionConfirmation(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionConfirmationViewModel:Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->actionConfirmationViewModel:Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->show(Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x1

    return p1
.end method

.method public showActionMenu(Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;Landroid/view/View;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment<",
            "*>;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 469
    instance-of v0, p2, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->shouldShowActionMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 475
    :cond_1
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 476
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->actionMenu:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionMenu;->actionItems:Ljava/util/List;

    .line 477
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;

    .line 479
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    .line 480
    invoke-static {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->ordinal()I

    move-result v5

    iget-object v6, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->text:Ljava/lang/String;

    .line 479
    invoke-interface {v4, v1, v5, v1, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 481
    new-instance v5, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 482
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 483
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$jELo0wkhoA8pbWZreT0T7JNxm8U;

    invoke-direct {p2, p1}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$jELo0wkhoA8pbWZreT0T7JNxm8U;-><init>(Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 486
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public showBubbleHelp(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 502
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 506
    :cond_1
    instance-of v0, p1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-eqz v0, :cond_3

    .line 508
    check-cast p1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/view/util/DialogManager;

    .line 509
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    .line 510
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {p1, v0, v2, v1}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
