.class Lcom/ebay/mobile/charity/CharityFavoritesFragment$2;
.super Ljava/lang/Object;
.source "CharityFavoritesFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/charity/CharityFavoritesFragment;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/charity/CharityFavoritesFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$2;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$2;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->startKeywordSearch()V

    .line 200
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$2;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    iget-object p1, p1, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->searchText:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 p1, 0x1

    return p1
.end method
