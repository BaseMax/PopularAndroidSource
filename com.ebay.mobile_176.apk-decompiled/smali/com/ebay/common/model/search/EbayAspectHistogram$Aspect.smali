.class public final Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;
.super Ljava/util/ArrayList;
.source "EbayAspectHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayAspectHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aspect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public suppressDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 677
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 531
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 548
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    .line 552
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 543
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    .line 528
    iput-boolean p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    .line 544
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;",
            ">;)V"
        }
    .end annotation

    .line 537
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 528
    iput-boolean p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    .line 538
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;",
            ">;)V"
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 609
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 610
    iget-object v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 614
    iget-object v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    if-eqz v2, :cond_1

    .line 616
    iget-boolean v2, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    iput-boolean v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public clone()Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;
    .locals 4

    .line 629
    invoke-super {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 630
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 632
    invoke-virtual {v0, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    invoke-virtual {v3}, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->clone()Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->clone()Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 641
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 644
    :cond_1
    check-cast p1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 646
    invoke-super {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    .line 647
    invoke-static {v1, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    .line 648
    invoke-static {v1, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    iget-boolean p1, p1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAppliedValues()Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;
    .locals 4

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 581
    iget-boolean v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    if-eqz v3, :cond_0

    .line 582
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 585
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 587
    new-instance v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    iget-object v2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 588
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    iput-object v0, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    .line 589
    iget-boolean v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    iput-boolean v0, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    :cond_2
    return-object v1
.end method

.method public final hasCheck()Z
    .locals 2

    .line 562
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 564
    iget-boolean v1, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 655
    invoke-super {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 656
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 657
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 658
    iget-boolean v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 671
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget-boolean p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
