.class Lcom/mapbox/mapboxsdk/offline/OfflineManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$3$1;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$3$1;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;->this$0:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->access$000(Lcom/mapbox/mapboxsdk/offline/OfflineManager;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    .line 287
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$3$1;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$3$1;->this$1:Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$3;->val$callback:Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;->onSuccess()V

    :cond_0
    return-void
.end method
