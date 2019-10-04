.class Lcom/ebay/common/net/api/finding/PagedList$1;
.super Ljava/lang/Object;
.source "PagedList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/common/net/api/finding/PagedList;->asyncLoadPage(Lcom/ebay/common/net/api/finding/PagedList$Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/finding/PagedList;

.field final synthetic val$page:Lcom/ebay/common/net/api/finding/PagedList$Page;


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/finding/PagedList;Lcom/ebay/common/net/api/finding/PagedList$Page;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/ebay/common/net/api/finding/PagedList$1;->this$0:Lcom/ebay/common/net/api/finding/PagedList;

    iput-object p2, p0, Lcom/ebay/common/net/api/finding/PagedList$1;->val$page:Lcom/ebay/common/net/api/finding/PagedList$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/ebay/common/net/api/finding/PagedList$1;->this$0:Lcom/ebay/common/net/api/finding/PagedList;

    iget-object v1, p0, Lcom/ebay/common/net/api/finding/PagedList$1;->val$page:Lcom/ebay/common/net/api/finding/PagedList$Page;

    invoke-static {v0, v1}, Lcom/ebay/common/net/api/finding/PagedList;->access$000(Lcom/ebay/common/net/api/finding/PagedList;Lcom/ebay/common/net/api/finding/PagedList$Page;)V

    return-void
.end method
