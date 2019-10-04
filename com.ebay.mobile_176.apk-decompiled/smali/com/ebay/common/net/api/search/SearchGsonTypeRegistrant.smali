.class public final Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;
.super Ljava/lang/Object;
.source "SearchGsonTypeRegistrant.java"

# interfaces
.implements Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistrant;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistry;)V
    .locals 3

    .line 30
    const-class v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    new-instance v1, Lcom/ebay/nautilus/domain/datamapping/gson/EnumDeserializer;

    sget-object v2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->UNKNOWN:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/datamapping/gson/EnumDeserializer;-><init>(Ljava/lang/Enum;)V

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistry;->registerTypeAdapter(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistry;

    move-result-object p1

    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    new-instance v1, Lcom/ebay/nautilus/domain/datamapping/gson/EnumDeserializer;

    sget-object v2, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/datamapping/gson/EnumDeserializer;-><init>(Ljava/lang/Enum;)V

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistry;->registerTypeAdapter(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistry;

    move-result-object p1

    const-class v0, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;

    new-instance v1, Lcom/ebay/nautilus/domain/datamapping/gson/EnumDeserializer;

    sget-object v2, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;->UNKNOWN:Lcom/ebay/nautilus/domain/data/search/HotnessSignal;

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/datamapping/gson/EnumDeserializer;-><init>(Ljava/lang/Enum;)V

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistry;->registerTypeAdapter(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/ebay/nautilus/kernel/datamapping/gson/GsonTypeAdapterRegistry;

    return-void
.end method
