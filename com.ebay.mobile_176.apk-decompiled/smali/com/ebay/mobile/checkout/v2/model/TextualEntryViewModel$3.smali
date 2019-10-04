.class Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$3;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "TextualEntryViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registerRoutingNumberChangeObserver(Landroidx/databinding/ObservableField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$3;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 1010
    instance-of p2, p1, Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_0

    .line 1012
    check-cast p1, Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    .line 1013
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 1015
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1016
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$3;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
