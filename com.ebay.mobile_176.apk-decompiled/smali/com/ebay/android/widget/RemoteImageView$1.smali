.class Lcom/ebay/android/widget/RemoteImageView$1;
.super Ljava/lang/Object;
.source "RemoteImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/android/widget/RemoteImageView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/android/widget/RemoteImageView;


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/RemoteImageView;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageView$1;->this$0:Lcom/ebay/android/widget/RemoteImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView$1;->this$0:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v0, v0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView$1;->this$0:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v0, v0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    :cond_0
    return-void
.end method
