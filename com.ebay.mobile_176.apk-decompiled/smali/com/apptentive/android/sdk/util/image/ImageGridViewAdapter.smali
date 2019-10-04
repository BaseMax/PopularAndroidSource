.class public Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;,
        Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final GONE:I = 0x8


# instance fields
.field private bHasWritePermission:Z

.field private final conversationToken:Ljava/lang/String;

.field private defaultImageIndicator:I

.field private downloadItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private itemHeight:I

.field private itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private itemWidth:I

.field private localCallback:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;

.field private selectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z

.field private showImageIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    .line 47
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showImageIndicator:Z

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->downloadItems:Ljava/util/List;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 72
    iput-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->conversationToken:Ljava/lang/String;

    const-string p2, "layout_inflater"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 75
    iput-boolean p3, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    .line 76
    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    const-string p2, "mounted"

    .line 77
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 78
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 79
    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/util/Util;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->bHasWritePermission:Z

    return-void

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation token is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showImageIndicator:Z

    return p0
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->defaultImageIndicator:I

    return p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->localCallback:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->downloadItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->conversationToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemHeight:I

    return p0
.end method

.method private getImageByUri(Ljava/lang/String;)Lcom/apptentive/android/sdk/util/image/ImageItem;
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ImageItem;

    .line 187
    iget-object v2, v1, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clickOn(I)Z
    .locals 4

    .line 124
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->getItem(I)Lcom/apptentive/android/sdk/util/image/ImageItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 125
    iget-object v1, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->isMimeTypeImage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->downloadItems:Ljava/util/List;

    iget-object v2, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 135
    :cond_1
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->bHasWritePermission:Z

    if-nez v1, :cond_2

    return v0

    .line 138
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->getInstance()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    move-result-object v1

    iget-object v3, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->isFileCompletelyDownloaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->downloadItems:Ljava/util/List;

    iget-object p1, p1, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->notifyDataSetChanged()V

    return v2

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/apptentive/android/sdk/util/image/ImageItem;
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/util/image/ImageItem;

    return-object p1

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/util/image/ImageItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->getItem(I)Lcom/apptentive/android/sdk/util/image/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 268
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 275
    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_image_grid_view_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 276
    new-instance p3, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    invoke-direct {p3, p0, p2, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;-><init>(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;Landroid/view/View;I)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    if-nez v1, :cond_2

    .line 280
    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_image_grid_view_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 281
    new-instance p3, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;

    invoke-direct {p3, p0, p2, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;-><init>(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_3

    .line 285
    invoke-virtual {p3, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$ViewHolder;->bindData(I)V

    .line 290
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    .line 291
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->height:I

    iget p3, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemHeight:I

    if-eq p1, p3, :cond_4

    .line 292
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isShowCamera()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    return v0
.end method

.method public select(Lcom/apptentive/android/sdk/util/image/ImageItem;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDefaultSelected(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->getImageByUri(Ljava/lang/String;)Lcom/apptentive/android/sdk/util/image/ImageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setImageIndicator(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->defaultImageIndicator:I

    return-void
.end method

.method public setIndicatorCallback(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->localCallback:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;

    return-void
.end method

.method public setItemSize(II)V
    .locals 1

    .line 218
    iget v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemWidth:I

    if-ne v0, p1, :cond_0

    return-void

    .line 222
    :cond_0
    iput p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemWidth:I

    .line 223
    iput p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemHeight:I

    .line 225
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget p2, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemWidth:I

    iget v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemHeight:I

    invoke-direct {p1, p2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 227
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setShowCamera(Z)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 105
    :cond_0
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showCamera:Z

    .line 106
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showImageIndicator(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showImageIndicator:Z

    return-void
.end method
