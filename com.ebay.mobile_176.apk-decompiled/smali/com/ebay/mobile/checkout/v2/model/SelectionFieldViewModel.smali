.class public Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;
.source "SelectionFieldViewModel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;
    }
.end annotation


# static fields
.field public static final SELECTED_POSITION:Ljava/lang/String; = "_selectedPosition"


# instance fields
.field private arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field private displayLabel:Ljava/lang/CharSequence;

.field protected entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lastSelectedPosition:I

.field private listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final selectedPosition:Landroidx/databinding/ObservableInt;

.field private spinnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Group;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/Group;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Group;",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Group;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;I)V

    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Group;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/Group;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Group;",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            "I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p5}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Field;I)V

    .line 33
    new-instance p1, Landroidx/databinding/ObservableInt;

    invoke-direct {p1}, Landroidx/databinding/ObservableInt;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    const p1, 0x7f0a14ba

    .line 66
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->id:I

    .line 67
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getFieldId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->tag:Ljava/lang/Object;

    .line 69
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getEntries()Ljava/util/List;

    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    .line 71
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 72
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    .line 78
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getParamValue()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 80
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 82
    invoke-interface {p1, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p5

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p5}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 84
    iput p5, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->lastSelectedPosition:I

    .line 86
    :cond_0
    iget-object p5, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    new-instance v6, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v4

    .line 87
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getDisabled()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Z)V

    .line 86
    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    new-instance p2, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;-><init>(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$1;)V

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->lastSelectedPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->lastSelectedPosition:I

    return p1
.end method

.method static synthetic lambda$setError$0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setError(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxLayoutErrorMessage",
            "uxLayoutErrorIndex"
        }
    .end annotation

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$7HWO4eTq0JBwO-3aknZFbDhF0ik;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$7HWO4eTq0JBwO-3aknZFbDhF0ik;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p2, 0x1

    .line 179
    invoke-static {p0, p2}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 180
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 181
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$SelectionFieldViewModel$AKpEewvLnVk9eU1yaurkjY-R3Rc;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$SelectionFieldViewModel$AKpEewvLnVk9eU1yaurkjY-R3Rc;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 184
    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getArrayAdapter()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->arrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->displayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    return-object p0
.end method

.method public getSpinnerList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    return-object v0
.end method

.method public getUnboundParamValue()Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 10

    .line 139
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->onBind(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 147
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;->setDisplayText(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    .line 158
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 161
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object v5, v3

    .line 162
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->spinnerList:Ljava/util/List;

    new-instance v3, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getDisabled()Z

    move-result v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Z)V

    .line 162
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->displayLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->lastSelectedPosition:I

    if-eq v0, p3, :cond_0

    .line 219
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p3}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 220
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 p2, 0x1

    .line 224
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->restoreState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_selectedPosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->saveState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_selectedPosition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public validateField()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
