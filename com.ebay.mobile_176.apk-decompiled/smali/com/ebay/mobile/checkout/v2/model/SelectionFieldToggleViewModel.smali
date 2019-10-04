.class public Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;
.source "SelectionFieldToggleViewModel.java"


# static fields
.field public static final IS_CHECKED:Ljava/lang/String; = "_isChecked"


# instance fields
.field private hintLabel:Ljava/lang/CharSequence;

.field public final isChecked:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Group;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/Group;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Group;I)V

    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Group;I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/Group;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Group;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;I)V

    .line 16
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p1}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    const p1, 0x7f0a14ac

    .line 38
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->id:I

    .line 39
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getFieldId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->tag:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHintLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->hintLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->onBind(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->hintLabel:Ljava/lang/CharSequence;

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->hintLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->entries:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->hintLabel:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->restoreState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_isChecked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->saveState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_isChecked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
