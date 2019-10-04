.class Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "UserAgreementViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Ljava/util/List;Ljava/util/List;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

.field final synthetic val$termsAndConditionsAlternateList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;Ljava/util/List;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;->val$termsAndConditionsAlternateList:Ljava/util/List;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 88
    instance-of p2, p1, Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_0

    .line 90
    check-cast p1, Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    .line 91
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;->val$termsAndConditionsAlternateList:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->showAlternate:Landroidx/databinding/ObservableBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 94
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->showCurrent:Landroidx/databinding/ObservableBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :cond_0
    return-void
.end method
