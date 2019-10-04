.class Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ExpandableUserAgreementViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->onBind(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 98
    instance-of p2, p1, Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_0

    .line 100
    check-cast p1, Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    .line 101
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;->this$0:Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->access$000(Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->bindAgreementContents(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;)V

    :cond_0
    return-void
.end method
