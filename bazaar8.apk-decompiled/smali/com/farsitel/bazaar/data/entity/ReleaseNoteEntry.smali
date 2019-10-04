.class public final Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;
.super Ljava/lang/Object;
.source "ReleaseNote.kt"


# instance fields
.field public final releaseNoteType:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

.field public final value:I


# direct methods
.method public constructor <init>(ILcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;)V
    .locals 1

    const-string v0, "releaseNoteType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->value:I

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->releaseNoteType:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 2
    sget-object p2, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->APP:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;-><init>(ILcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;)V

    return-void
.end method


# virtual methods
.method public final getReleaseNoteType()Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->releaseNoteType:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->value:I

    return v0
.end method
