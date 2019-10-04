.class public Lcom/ebay/mobile/addon/AvailableAddons;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "AvailableAddons.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/addon/AvailableAddons;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addonItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/AddOnItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/ebay/mobile/addon/AvailableAddons$1;

    invoke-direct {v0}, Lcom/ebay/mobile/addon/AvailableAddons$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/addon/AvailableAddons;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAddon(Lcom/ebay/mobile/AddOnItem;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAddOnById(Ljava/lang/String;)Lcom/ebay/mobile/AddOnItem;
    .locals 4

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/AddOnItem;

    .line 48
    iget-object v3, v2, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getAddonsByType(Lcom/ebay/mobile/AddOnItem$AddOnType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/AddOnItem$AddOnType;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/mobile/AddOnItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/AddOnItem;

    .line 35
    iget-object v3, v2, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    if-ne p1, v3, :cond_1

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/mobile/AddOnItem;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasAddons(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/AddOnItem;

    .line 75
    iget-object v2, v2, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/ebay/mobile/AddOnItem;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/addon/AvailableAddons;->addonItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
