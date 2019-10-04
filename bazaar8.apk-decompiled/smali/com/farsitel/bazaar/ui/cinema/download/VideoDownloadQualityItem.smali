.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final hasFreeSize:Z

.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final size:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->size:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->label:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->hasFreeSize:Z

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;->NORMAL:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->viewType:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->hasFreeSize:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->viewType:I

    return v0
.end method
