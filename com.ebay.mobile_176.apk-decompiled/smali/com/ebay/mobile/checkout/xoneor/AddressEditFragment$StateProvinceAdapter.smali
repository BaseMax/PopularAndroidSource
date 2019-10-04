.class Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AddressEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateProvinceAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;",
            ">;)V"
        }
    .end annotation

    .line 1328
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    .line 1329
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1351
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    if-nez p2, :cond_0

    .line 1353
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090009

    const/4 v1, 0x0

    .line 1354
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x1020014

    .line 1355
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1357
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1337
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    if-nez p2, :cond_0

    .line 1339
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d050c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a1172

    .line 1340
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1342
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method
