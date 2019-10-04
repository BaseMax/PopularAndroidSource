.class Lcom/ebay/mobile/charity/CharityFavoritesFragment$1;
.super Landroid/app/Dialog;
.source "CharityFavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/charity/CharityFavoritesFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/charity/CharityFavoritesFragment;Landroid/content/Context;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$1;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$1;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-static {v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->access$000(Lcom/ebay/mobile/charity/CharityFavoritesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method
