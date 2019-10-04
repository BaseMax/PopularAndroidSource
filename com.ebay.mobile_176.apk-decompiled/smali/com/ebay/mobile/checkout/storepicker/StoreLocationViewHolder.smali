.class Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;
.super Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;
.source "StoreLocationViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder<",
        "TT;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private countryHasReversedPostalCode:Z

.field private final day1:Landroid/widget/TextView;

.field private final day2:Landroid/widget/TextView;

.field private final day3:Landroid/widget/TextView;

.field private final day4:Landroid/widget/TextView;

.field private final day5:Landroid/widget/TextView;

.field private final day6:Landroid/widget/TextView;

.field private final day7:Landroid/widget/TextView;

.field private ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

.field private final hours1:Landroid/widget/TextView;

.field private final hours2:Landroid/widget/TextView;

.field private final hours3:Landroid/widget/TextView;

.field private final hours4:Landroid/widget/TextView;

.field private final hours5:Landroid/widget/TextView;

.field private final hours6:Landroid/widget/TextView;

.field private final hours7:Landroid/widget/TextView;

.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onClickListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pickupProgramsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedItem:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final storeAddress1:Landroid/widget/TextView;

.field private final storeAddress2:Landroid/widget/TextView;

.field private final storeCityPostalCode:Landroid/widget/TextView;

.field private final storeDistance:Landroid/widget/TextView;

.field private final storeDistanceResId:I

.field private final storeName:Landroid/widget/TextView;

.field private final storeSelection:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Landroid/view/View;[Ljava/lang/Object;Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;Ljava/util/Map;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[TT;",
            "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;",
            ">;Z)V"
        }
    .end annotation

    const v0, 0x7f0a11d8

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    .line 66
    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->selectedItem:[Ljava/lang/Object;

    .line 67
    iput-object p3, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->onClickListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;

    .line 68
    iput-object p4, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->pickupProgramsById:Ljava/util/Map;

    .line 69
    iput-boolean p5, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->countryHasReversedPostalCode:Z

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->context:Landroid/content/Context;

    const p2, 0x7f0a11da

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeSelection:Landroid/widget/RadioButton;

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeName:Landroid/widget/TextView;

    const p2, 0x7f0a11bf

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeAddress1:Landroid/widget/TextView;

    const p2, 0x7f0a11c0

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeAddress2:Landroid/widget/TextView;

    const p2, 0x7f0a11c6

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeCityPostalCode:Landroid/widget/TextView;

    const p2, 0x7f0a11c7

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeDistance:Landroid/widget/TextView;

    const p2, 0x7f0a11d9

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    const p2, 0x7f0a0508

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day1:Landroid/widget/TextView;

    const p2, 0x7f0a079c

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours1:Landroid/widget/TextView;

    const p2, 0x7f0a0509

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day2:Landroid/widget/TextView;

    const p2, 0x7f0a079d

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours2:Landroid/widget/TextView;

    const p2, 0x7f0a050a

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day3:Landroid/widget/TextView;

    const p2, 0x7f0a079e

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours3:Landroid/widget/TextView;

    const p2, 0x7f0a050b

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day4:Landroid/widget/TextView;

    const p2, 0x7f0a079f

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours4:Landroid/widget/TextView;

    const p2, 0x7f0a050c

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day5:Landroid/widget/TextView;

    const p2, 0x7f0a07a0

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours5:Landroid/widget/TextView;

    const p2, 0x7f0a050d

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day6:Landroid/widget/TextView;

    const p2, 0x7f0a07a1

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours6:Landroid/widget/TextView;

    const p2, 0x7f0a050e

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day7:Landroid/widget/TextView;

    const p2, 0x7f0a07a2

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours7:Landroid/widget/TextView;

    const p2, 0x7f0a11cd

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/dcs/DcsHelper;->getPudoPickupStationSearchUnits()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MILES"

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12110a

    .line 102
    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeDistanceResId:I

    goto :goto_0

    :cond_0
    const p1, 0x7f121109

    .line 104
    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeDistanceResId:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onBindView(ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1, p2}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;->onBindView(ILjava/lang/Object;)V

    .line 112
    instance-of p1, p2, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 116
    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->item:Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->selectedItem:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 119
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeSelection:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->name:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 121
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeAddress1:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->address1:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 122
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeAddress2:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->address2:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeCityPostalCode:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->city:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 124
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeDistance:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->context:Landroid/content/Context;

    iget v4, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeDistanceResId:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->distance:Ljava/lang/Double;

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 125
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->name:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 128
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->countryHasReversedPostalCode:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeCityPostalCode:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/CharSequence;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->postalCode:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->city:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 129
    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->storeCityPostalCode:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/CharSequence;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->city:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->postalCode:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 132
    invoke-static {v0, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a11c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 137
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->pickupProgramsById:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->pickupProgramsById:Ljava/util/Map;

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->pudoProgramId:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;

    if-eqz v2, :cond_2

    .line 140
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v4, :cond_2

    .line 142
    iget-object v4, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 143
    iget-object v4, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->title:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/ebay/android/widget/RemoteImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    invoke-static {v2, v5}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    invoke-static {v2, v1}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 152
    invoke-static {v0, v5}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 155
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->storeHours:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 186
    :pswitch_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day7:Landroid/widget/TextView;

    invoke-static {v2, v0, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 187
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours7:Landroid/widget/TextView;

    invoke-static {v0, p2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 182
    :pswitch_1
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day6:Landroid/widget/TextView;

    invoke-static {v2, v0, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 183
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours6:Landroid/widget/TextView;

    invoke-static {v0, p2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 178
    :pswitch_2
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day5:Landroid/widget/TextView;

    invoke-static {v2, v0, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 179
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours5:Landroid/widget/TextView;

    invoke-static {v0, p2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 174
    :pswitch_3
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day4:Landroid/widget/TextView;

    invoke-static {v2, v0, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 175
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours4:Landroid/widget/TextView;

    invoke-static {v0, p2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 170
    :pswitch_4
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day3:Landroid/widget/TextView;

    invoke-static {v2, v0, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 171
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours3:Landroid/widget/TextView;

    invoke-static {v0, p2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 166
    :pswitch_5
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day2:Landroid/widget/TextView;

    invoke-static {v2, v0, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 167
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours2:Landroid/widget/TextView;

    invoke-static {v0, p2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 162
    :pswitch_6
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->day1:Landroid/widget/TextView;

    invoke-static {v2, v0, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 163
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->hours1:Landroid/widget/TextView;

    invoke-static {v0, p2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    :cond_4
    invoke-static {v0, v1}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a11cd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->getAdapterPosition()I

    move-result p1

    .line 208
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->onClickListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationViewHolder;->item:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$OnClickListener;->onItemSelected(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method
