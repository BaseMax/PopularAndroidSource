.class Lcom/ebay/mobile/charity/CharitySearchFragment$1;
.super Ljava/lang/Object;
.source "CharitySearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/charity/CharitySearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/charity/CharitySearchFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/charity/CharitySearchFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$1;->this$0:Lcom/ebay/mobile/charity/CharitySearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 79
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$1;->this$0:Lcom/ebay/mobile/charity/CharitySearchFragment;

    .line 80
    invoke-virtual {p2}, Lcom/ebay/mobile/charity/CharitySearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 81
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
