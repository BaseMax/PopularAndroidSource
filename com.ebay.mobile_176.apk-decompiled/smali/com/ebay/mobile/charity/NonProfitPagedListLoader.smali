.class public Lcom/ebay/mobile/charity/NonProfitPagedListLoader;
.super Lcom/ebay/nautilus/shell/content/FwNetLoader;
.source "NonProfitPagedListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;
    }
.end annotation


# instance fields
.field public final keywords:Ljava/lang/String;

.field public list:Lcom/ebay/common/net/api/finding/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/common/net/api/finding/PagedList<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;"
        }
    .end annotation
.end field

.field private final site:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/content/FwNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 42
    iput-object p2, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 43
    iput-object p3, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->keywords:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doInBackgroundInternal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;

    invoke-virtual {p0}, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v3, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->keywords:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/mobile/charity/NonProfitPagedListLoader$FindNonProfitQuery;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/ebay/common/net/api/finding/PagedList;

    const/16 v2, 0x19

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/ebay/common/net/api/finding/PagedList;-><init>(Lcom/ebay/common/net/api/finding/PagedList$Query;III)V

    iput-object v1, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->list:Lcom/ebay/common/net/api/finding/PagedList;

    .line 52
    iget-object v0, p0, Lcom/ebay/mobile/charity/NonProfitPagedListLoader;->list:Lcom/ebay/common/net/api/finding/PagedList;

    invoke-virtual {v0}, Lcom/ebay/common/net/api/finding/PagedList;->startQuery()V

    return-void
.end method
