.class Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;
.super Ljava/lang/Object;
.source "AddressEditFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setupStateSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeSureStateIsWithinSetOfStatesFromResources(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$100(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getStateProvinceCodes(Ljava/lang/String;)I

    move-result v0

    if-lez p1, :cond_1

    if-lez v0, :cond_1

    .line 204
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 213
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$100(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v1

    aget-object p1, v0, p1

    iput-object p1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    .line 216
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$200(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$200(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$100(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$100(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    .line 222
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$200(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateStateToMatchServiceProvidedState(I)V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$300(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    .line 239
    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->selectable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 243
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$400(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$300(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 244
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$402(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;I)I

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$500(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Landroid/widget/Spinner;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$400(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 247
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$200(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$402(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;I)I

    const/4 v0, 0x0

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$300(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    move-result-object v2

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$300(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    move-result-object v2

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    if-ne v0, p1, :cond_2

    .line 262
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {v3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$200(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v3

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 263
    iput-boolean v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->selected:Z

    goto :goto_1

    .line 266
    :cond_2
    iput-boolean v1, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->selected:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->access$000(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    iget-boolean p1, p1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->updateStateToMatchServiceProvidedState(I)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-direct {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;->makeSureStateIsWithinSetOfStatesFromResources(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
