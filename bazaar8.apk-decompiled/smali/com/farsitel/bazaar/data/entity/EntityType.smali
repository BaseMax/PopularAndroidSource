.class public final enum Lcom/farsitel/bazaar/data/entity/EntityType;
.super Ljava/lang/Enum;
.source "EntityType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/entity/EntityType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/data/entity/EntityType;

.field public static final enum APP:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public static final enum COVER:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public static final enum DIFF_APP:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public static final enum INLINE:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public static final enum SUBTITLE:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public static final enum VIDEO:Lcom/farsitel/bazaar/data/entity/EntityType;


# instance fields
.field public final storageFileExtension:Ljava/lang/String;

.field public final storageFolderPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/farsitel/bazaar/data/entity/EntityType;

    new-instance v1, Lcom/farsitel/bazaar/data/entity/EntityType;

    const-string v2, ".apk"

    const-string v3, "apk"

    const/4 v4, 0x0

    const-string v5, "APP"

    .line 1
    invoke-direct {v1, v5, v4, v3, v2}, Lcom/farsitel/bazaar/data/entity/EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 v4, 0x1

    const-string v5, "DIFF_APP"

    .line 2
    invoke-direct {v1, v5, v4, v3, v2}, Lcom/farsitel/bazaar/data/entity/EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->DIFF_APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 v2, 0x2

    const-string v3, "VIDEO"

    const-string v4, "Movies"

    const-string v5, ".mp4"

    .line 3
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/farsitel/bazaar/data/entity/EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->VIDEO:Lcom/farsitel/bazaar/data/entity/EntityType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 v2, 0x3

    const-string v3, ""

    const-string v4, "COVER"

    .line 4
    invoke-direct {v1, v4, v2, v3, v3}, Lcom/farsitel/bazaar/data/entity/EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->COVER:Lcom/farsitel/bazaar/data/entity/EntityType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 v2, 0x4

    const-string v4, "SUBTITLE"

    .line 5
    invoke-direct {v1, v4, v2, v3, v3}, Lcom/farsitel/bazaar/data/entity/EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->SUBTITLE:Lcom/farsitel/bazaar/data/entity/EntityType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/EntityType;

    const/4 v2, 0x5

    const-string v4, "INLINE"

    .line 6
    invoke-direct {v1, v4, v2, v3, v3}, Lcom/farsitel/bazaar/data/entity/EntityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/EntityType;->INLINE:Lcom/farsitel/bazaar/data/entity/EntityType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/entity/EntityType;->$VALUES:[Lcom/farsitel/bazaar/data/entity/EntityType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/farsitel/bazaar/data/entity/EntityType;->storageFolderPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/entity/EntityType;->storageFileExtension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/entity/EntityType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityType;->$VALUES:[Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/entity/EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/entity/EntityType;

    return-object v0
.end method


# virtual methods
.method public final getStorageFileExtension()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/EntityType;->storageFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageFolderPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/EntityType;->storageFolderPath:Ljava/lang/String;

    return-object v0
.end method
