.class Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "DcsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->compute()Ljava/util/Date;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;


# direct methods
.method varargs constructor <init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8$1;->this$1:Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;

    invoke-direct {p0, p2, p3}, Landroidx/room/InvalidationTracker$Observer;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 462
    iget-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8$1;->this$1:Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;

    invoke-virtual {p1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->invalidate()V

    return-void
.end method
