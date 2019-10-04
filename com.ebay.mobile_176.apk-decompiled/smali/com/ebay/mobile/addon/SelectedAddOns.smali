.class public Lcom/ebay/mobile/addon/SelectedAddOns;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "SelectedAddOns.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/addon/SelectedAddOns;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAM_ADD_ON_DATA:Ljava/lang/String; = "add_on_data"

.field public static final PARAM_ADD_ON_DATA_ADDITION:Ljava/lang/String; = "add_on_data_addition"

.field public static final QUANTITY_ONE:I = 0x1


# instance fields
.field private lastModified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastModifiedType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/addon/AddOnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private softRemoved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/addon/AddOnInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/ebay/mobile/addon/SelectedAddOns$1;

    invoke-direct {v0}, Lcom/ebay/mobile/addon/SelectedAddOns$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/addon/SelectedAddOns;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->softRemoved:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModified:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModifiedType:Ljava/util/Set;

    return-void
.end method

.method private updateLastModifiedType(Lcom/ebay/mobile/addon/SelectedAddOns;)V
    .locals 2

    .line 111
    iget-object p1, p1, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/addon/AddOnInfo;

    .line 112
    iget-object v0, v0, Lcom/ebay/mobile/addon/AddOnInfo;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v0}, Lcom/ebay/mobile/AddOnItem$AddOnType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModifiedType:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModifiedType:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAddOnInfo(Ljava/lang/String;)Lcom/ebay/mobile/addon/AddOnInfo;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/addon/AddOnInfo;

    return-object p1
.end method

.method public getAddOns()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/addon/AddOnInfo;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getLastModified()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModified:Ljava/util/Set;

    return-object v0
.end method

.method public getLastModifiedType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModifiedType:Ljava/util/Set;

    return-object v0
.end method

.method public hasAddOnSelected(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/addon/AddOnInfo;

    .line 160
    iget-object v1, v1, Lcom/ebay/mobile/addon/AddOnInfo;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasAddOnSelected(Ljava/lang/String;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public putSelection(Ljava/lang/String;Lcom/ebay/mobile/AddOnItem$AddOnType;Ljava/lang/Integer;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/ebay/mobile/addon/AddOnInfo;

    invoke-direct {v0, p3, p2}, Lcom/ebay/mobile/addon/AddOnInfo;-><init>(Ljava/lang/Integer;Lcom/ebay/mobile/AddOnItem$AddOnType;)V

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/addon/SelectedAddOns;->putSelection(Ljava/lang/String;Lcom/ebay/mobile/addon/AddOnInfo;)V

    return-void
.end method

.method public putSelection(Ljava/lang/String;Lcom/ebay/mobile/addon/AddOnInfo;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->softRemoved:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object p2, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->softRemoved:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/mobile/addon/AddOnInfo;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Lcom/ebay/mobile/AddOnItem$AddOnType;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/addon/AddOnInfo;

    iget-object v2, v2, Lcom/ebay/mobile/addon/AddOnInfo;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    if-ne v2, p1, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/addon/AddOnInfo;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->softRemoved:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(Lcom/ebay/mobile/addon/SelectedAddOns;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 125
    iget-object v0, p1, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget-object v0, p1, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/addon/SelectedAddOns;->remove(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModified:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/mobile/addon/SelectedAddOns;->updateLastModifiedType(Lcom/ebay/mobile/addon/SelectedAddOns;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/addon/AddOnInfo;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->softRemoved:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    iget-object v2, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->softRemoved:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public replaceBy(Lcom/ebay/mobile/addon/SelectedAddOns;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p1, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    iget-object v1, p1, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lcom/ebay/mobile/addon/SelectedAddOns;->lastModified:Ljava/util/Set;

    iget-object v1, p1, Lcom/ebay/mobile/addon/SelectedAddOns;->selected:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-direct {p0, p1}, Lcom/ebay/mobile/addon/SelectedAddOns;->updateLastModifiedType(Lcom/ebay/mobile/addon/SelectedAddOns;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
