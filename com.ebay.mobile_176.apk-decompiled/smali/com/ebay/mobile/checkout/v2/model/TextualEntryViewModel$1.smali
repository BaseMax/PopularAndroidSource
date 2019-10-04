.class Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "TextualEntryViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->onPropertyChangedCallBack()Landroidx/databinding/Observable$OnPropertyChangedCallback;
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

    .line 225
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 229
    instance-of p2, p1, Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_0

    .line 231
    check-cast p1, Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    .line 232
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 234
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    iget-object p2, p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 235
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    iget-object p2, p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 237
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    const/16 v0, 0x41

    invoke-virtual {p1, p2, v0}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    :cond_0
    return-void
.end method
