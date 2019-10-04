.class public final Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;
.super Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;
.source "ReleaseNoteItem.kt"


# instance fields
.field public final value:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "releaseNoteEntryType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;->value:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->APP:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    if-ne p2, p1, :cond_0

    .line 3
    sget-object p1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->INDENT_HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;->viewType:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;->viewType:I

    return v0
.end method
