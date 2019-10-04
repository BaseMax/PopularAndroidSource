.class public final Lc/c/a/e/d/o/a;
.super Ljava/lang/Object;
.source "ReleaseNoteDataSource.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNote;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/farsitel/bazaar/data/entity/ReleaseNote;

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/data/entity/ReleaseNote;

    .line 3
    sget v2, Lc/c/a/e/b;->release_version_80000:I

    .line 4
    new-instance v3, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;

    sget v4, Lc/c/a/e/b;->v80000_1:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;-><init>(ILcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;ILh/f/b/f;)V

    invoke-static {v3}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const v4, 0xc3500

    .line 5
    invoke-direct {v1, v4, v2, v3}, Lcom/farsitel/bazaar/data/entity/ReleaseNote;-><init>(IILjava/util/List;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Lcom/farsitel/bazaar/data/entity/ReleaseNote;

    .line 7
    sget v2, Lc/c/a/e/b;->release_version_800302:I

    .line 8
    new-instance v3, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;

    sget v4, Lc/c/a/e/b;->v800302_1:I

    invoke-direct {v3, v4, v6, v5, v6}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;-><init>(ILcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;ILh/f/b/f;)V

    .line 9
    invoke-static {v3}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const v4, 0xc362e

    .line 10
    invoke-direct {v1, v4, v2, v3}, Lcom/farsitel/bazaar/data/entity/ReleaseNote;-><init>(IILjava/util/List;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 11
    new-instance v1, Lcom/farsitel/bazaar/data/entity/ReleaseNote;

    .line 12
    sget v2, Lc/c/a/e/b;->release_version_800305:I

    .line 13
    new-instance v3, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;

    sget v4, Lc/c/a/e/b;->v800305_1:I

    invoke-direct {v3, v4, v6, v5, v6}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;-><init>(ILcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;ILh/f/b/f;)V

    .line 14
    invoke-static {v3}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const v4, 0xc3631

    .line 15
    invoke-direct {v1, v4, v2, v3}, Lcom/farsitel/bazaar/data/entity/ReleaseNote;-><init>(IILjava/util/List;)V

    aput-object v1, v0, v5

    .line 16
    invoke-static {v0}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
