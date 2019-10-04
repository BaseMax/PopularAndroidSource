.class public final Lcom/farsitel/bazaar/data/entity/ReleaseNote;
.super Ljava/lang/Object;
.source "ReleaseNote.kt"


# instance fields
.field public final releaseNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final releaseVersionCode:I

.field public final releaseVersionName:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "releaseNotes"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->releaseVersionCode:I

    iput p2, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->releaseVersionName:I

    iput-object p3, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->releaseNotes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getReleaseNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->releaseNotes:Ljava/util/List;

    return-object v0
.end method

.method public final getReleaseVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->releaseVersionCode:I

    return v0
.end method

.method public final getReleaseVersionName()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->releaseVersionName:I

    return v0
.end method
