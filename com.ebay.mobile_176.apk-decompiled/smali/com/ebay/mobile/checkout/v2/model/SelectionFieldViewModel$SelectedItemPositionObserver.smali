.class Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SelectionFieldViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedItemPositionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$1;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;-><init>(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;)V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 2

    .line 239
    instance-of p2, p1, Landroidx/databinding/ObservableInt;

    if-eqz p2, :cond_2

    .line 241
    check-cast p1, Landroidx/databinding/ObservableInt;

    .line 242
    invoke-virtual {p1}, Landroidx/databinding/ObservableInt;->get()I

    move-result p2

    .line 243
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->access$100(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    .line 244
    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->access$100(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    invoke-static {p2}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->access$200(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->errorMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 253
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    const/16 v1, 0x41

    invoke-virtual {p1, v0, v1}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel$SelectedItemPositionObserver;->this$0:Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    invoke-static {p1, p2}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->access$202(Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;I)I

    :cond_2
    :goto_0
    return-void
.end method
