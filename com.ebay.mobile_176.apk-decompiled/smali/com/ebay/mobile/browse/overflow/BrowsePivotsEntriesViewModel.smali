.class public Lcom/ebay/mobile/browse/overflow/BrowsePivotsEntriesViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
.source "BrowsePivotsEntriesViewModel.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;-><init>(ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method
