.class public final enum Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;
.super Ljava/lang/Enum;
.source "ReleaseNote.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

.field public static final enum APP:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

.field public static final enum INLINE:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

.field public static final enum INNER_TITLE:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    const/4 v2, 0x0

    const-string v3, "APP"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->APP:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    const/4 v2, 0x1

    const-string v3, "INLINE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->INLINE:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    const/4 v2, 0x2

    const-string v3, "INNER_TITLE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->INNER_TITLE:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->$VALUES:[Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->$VALUES:[Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    return-object v0
.end method
