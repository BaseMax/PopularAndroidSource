.class Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$2;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "TextualEntryViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registerCardNumberChangeObserver(Landroidx/databinding/ObservableField;)V
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

    .line 986
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$2;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 990
    instance-of p2, p1, Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_0

    .line 992
    check-cast p1, Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    .line 993
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 994
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$2;->this$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->fromCardNumber(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->access$002(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Lcom/ebay/nautilus/domain/data/CreditCard$Type;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    :cond_0
    return-void
.end method
