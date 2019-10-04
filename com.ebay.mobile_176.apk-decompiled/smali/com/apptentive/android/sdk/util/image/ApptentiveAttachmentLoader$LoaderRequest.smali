.class public Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;
.super Ljava/lang/Object;
.source "ApptentiveAttachmentLoader.java"

# interfaces
.implements Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;
.implements Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask$BitmapLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderRequest"
.end annotation


# instance fields
.field private bLoadImage:Z

.field private final conversationToken:Ljava/lang/String;

.field private diskCacheFilePath:Ljava/lang/String;

.field private imageViewHeight:I

.field private imageViewWidth:I

.field private loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

.field private mDrawableDownloaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

.field private mDrawableLoaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;

.field private mImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private mWasDownloaded:Z

.field private pos:I

.field final synthetic this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/ImageView;IIZLcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mWasDownloaded:Z

    if-eqz p2, :cond_0

    .line 130
    iput-object p2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->conversationToken:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    .line 133
    iput p7, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewWidth:I

    .line 134
    iput p8, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewHeight:I

    .line 135
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 136
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mIsCancelled:Z

    .line 137
    iput-boolean p9, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->bLoadImage:Z

    .line 138
    iput-object p10, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    .line 139
    iput p5, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->pos:I

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation token is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cancel()V
    .locals 4

    .line 280
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader cancel requested for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mIsCancelled:Z

    .line 283
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableDownloaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    if-eqz v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableDownloaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->cancel(Z)Z

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableLoaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;

    if-eqz v1, :cond_4

    .line 301
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableLoaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;->cancel(Z)Z

    :cond_4
    return-void
.end method

.method private indexOfDownloadWithDifferentURL()I
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-nez v1, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 311
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private indexOfQueuedDownloadWithDifferentURL()I
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-nez v1, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 345
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private isAnotherQueuedOrRunningWithSameUrl()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-nez v1, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-nez v1, :cond_4

    goto :goto_1

    .line 369
    :cond_4
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBeingDownloaded()Z
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-nez v1, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 244
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 249
    :cond_3
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isQueuedForDownload()Z
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-nez v1, :cond_1

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 328
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private loadAttachmentFromDisk(Landroid/widget/ImageView;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 274
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mIsCancelled:Z

    if-nez p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->notFound()V

    :cond_0
    return-void
.end method

.method private loadDrawable(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 377
    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadDrawable(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private loadDrawable(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 381
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "ApptentiveAttachmentLoader loadDrawable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 384
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    iget v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->pos:I

    invoke-interface {v0, p2, v1, p1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onLoaded(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private loadImageFromDisk(Landroid/widget/ImageView;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 258
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mIsCancelled:Z

    if-nez v0, :cond_1

    .line 259
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader loadImageFromDisk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    new-instance v0, Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;

    invoke-direct {v0, p1, p0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;-><init>(Landroid/widget/ImageView;Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask$BitmapLoadListener;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableLoaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;

    .line 262
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-lt p1, v0, :cond_0

    .line 263
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableLoaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    aput-object v2, v5, v4

    iget v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    iget v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {p1, v0, v5}, Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableLoaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    aput-object v5, v0, v2

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    aput-object v2, v0, v4

    iget v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public doDownload()V
    .locals 7

    .line 211
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mIsCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$300(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 216
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->doDownload()V

    :cond_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 221
    sget v2, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_3

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    new-instance v2, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    invoke-direct {v2, v0, p0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;-><init>(Landroid/widget/ImageView;Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;)V

    iput-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableDownloaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    .line 224
    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApptentiveAttachmentLoader doDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-lt v0, v2, :cond_2

    .line 227
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableDownloaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    aput-object v1, v5, v4

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->conversationToken:Ljava/lang/String;

    aput-object v1, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableDownloaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->conversationToken:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$400(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public getDrawableDownloaderTask()Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mDrawableDownloaderTask:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLoaderCallback()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->pos:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isLoadingImage()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->bLoadImage:Z

    return v0
.end method

.method public load()V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 169
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApptentiveAttachmentLoader load requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApptentiveAttachmentLoader load requested on:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader load new request denied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 181
    :cond_0
    invoke-direct {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->cancel()V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 185
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "ApptentiveAttachmentLoader loadDrawable(clear)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadDrawable(Landroid/graphics/Bitmap;)V

    .line 187
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void

    .line 191
    :cond_2
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->bLoadImage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$000(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;

    move-result-object v1

    iget-object v4, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    iget v5, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewWidth:I

    iget v6, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewHeight:I

    invoke-static {v4, v5, v6}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->generateMemoryCacheEntryKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->getObjectFromCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 194
    iput-boolean v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mWasDownloaded:Z

    .line 196
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "ApptentiveAttachmentLoader loadDrawable(found in cache)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadDrawable(Landroid/graphics/Bitmap;)V

    .line 198
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 200
    :cond_4
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 201
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->bLoadImage:Z

    if-eqz v1, :cond_5

    .line 202
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadImageFromDisk(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 204
    :cond_5
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadAttachmentFromDisk(Landroid/widget/ImageView;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public loadBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$000(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    iget v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewWidth:I

    iget v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->imageViewHeight:I

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->generateMemoryCacheEntryKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    sget v2, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_0

    .line 626
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "ApptentiveAttachmentLoader loadDrawable(add to cache)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadDrawable(Landroid/graphics/Bitmap;)V

    .line 628
    sget p1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 630
    :cond_0
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mWasDownloaded:Z

    return-void
.end method

.method public notFound()V
    .locals 5

    .line 569
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader notFound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mIsCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 575
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p0, v0, :cond_1

    goto/16 :goto_2

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->isAnotherQueuedOrRunningWithSameUrl()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 583
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 586
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 593
    :cond_3
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->indexOfQueuedDownloadWithDifferentURL()I

    move-result v0

    .line 594
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->indexOfDownloadWithDifferentURL()I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 596
    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApptentiveAttachmentLoader notFound(Removing): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->indexOfQueuedDownloadWithDifferentURL()I

    move-result v0

    goto :goto_0

    :cond_4
    if-eq v1, v3, :cond_5

    .line 601
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 602
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getDrawableDownloaderTask()Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 604
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->cancel(Z)Z

    .line 605
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApptentiveAttachmentLoader notFound(Cancelling): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    :cond_5
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->isBeingDownloaded()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->isQueuedForDownload()Z

    move-result v0

    if-nez v0, :cond_7

    .line 610
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$300(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 611
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApptentiveAttachmentLoader notFound(Queuing): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 614
    :cond_6
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApptentiveAttachmentLoader notFound(Downloading): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->doDownload()V

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public onDownloadCancel()V
    .locals 6

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mIsCancelled:Z

    .line 526
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader onDownloadCancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$400(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 531
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 532
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 537
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    if-eqz v3, :cond_2

    .line 545
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 546
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    .line 547
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 549
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :goto_1
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->doDownload()V

    return-void

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 560
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 561
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApptentiveAttachmentLoader starting DL of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->doDownload()V

    :cond_5
    return-void
.end method

.method public onDownloadComplete()V
    .locals 7

    .line 429
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader onDownloadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$400(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mWasDownloaded:Z

    .line 435
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 436
    sget v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p0, v3, :cond_1

    .line 437
    iget-boolean v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->bLoadImage:Z

    if-nez v3, :cond_0

    .line 438
    sget v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 439
    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    if-eqz v3, :cond_1

    .line 440
    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    iget v4, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->pos:I

    invoke-interface {v3, v0, v4, v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onLoaded(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadImageFromDisk(Landroid/widget/ImageView;)V

    .line 447
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 450
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApptentiveAttachmentLoader onDownloadComplete (dup): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 452
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 453
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    .line 454
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->isLoadingImage()Z

    move-result v4

    if-nez v4, :cond_3

    .line 455
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v4, v5, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 456
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getLoaderCallback()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 457
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getLoaderCallback()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    move-result-object v4

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    iget v3, v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->pos:I

    invoke-interface {v4, v5, v3, v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onLoaded(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 460
    :cond_3
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadImageFromDisk(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 468
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 469
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->doDownload()V

    :cond_6
    return-void
.end method

.method public onDownloadError()V
    .locals 7

    .line 476
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader onDownloadError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$200(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$400(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->diskCacheFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    .line 480
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->mWasDownloaded:Z

    if-eqz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    const/4 v3, -0x1

    invoke-interface {v1, v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onDownloadProgress(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 487
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 488
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 493
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 500
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApptentiveAttachmentLoader onDownloadError (dup): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 502
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 503
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    .line 504
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 505
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 506
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 508
    :cond_4
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :goto_1
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->doDownload()V

    return-void

    .line 516
    :cond_5
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 517
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$100(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 518
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->doDownload()V

    :cond_6
    return-void
.end method

.method public onDownloadStart()V
    .locals 3

    .line 393
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "ApptentiveAttachmentLoader onDownloadStarted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onDownloadStart()V

    :cond_0
    return-void
.end method

.method public onLoadCancelled()V
    .locals 3

    .line 650
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader onLoadCancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 653
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onLoadTerminated()V

    :cond_0
    return-void
.end method

.method public onLoadError()V
    .locals 3

    .line 635
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader onLoadError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 639
    sget v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onLoadTerminated()V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 6

    .line 405
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveAttachmentLoader onProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->loadingTaskCallback:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onDownloadProgress(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->access$500(Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;

    .line 416
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApptentiveAttachmentLoader onProgress (dup): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 419
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader;->DRAWABLE_DOWNLOAD_TAG:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 420
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderRequest;->getLoaderCallback()Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/apptentive/android/sdk/util/image/ApptentiveAttachmentLoader$LoaderCallback;->onDownloadProgress(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
