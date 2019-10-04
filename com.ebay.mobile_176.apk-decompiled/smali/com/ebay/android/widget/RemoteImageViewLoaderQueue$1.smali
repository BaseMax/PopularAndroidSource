.class Lcom/ebay/android/widget/RemoteImageViewLoaderQueue$1;
.super Ljava/lang/Object;
.source "RemoteImageViewLoaderQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;


# direct methods
.method constructor <init>(Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue$1;->this$0:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue$1;->this$0:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    invoke-static {v0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->access$000(Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;)V

    return-void
.end method
