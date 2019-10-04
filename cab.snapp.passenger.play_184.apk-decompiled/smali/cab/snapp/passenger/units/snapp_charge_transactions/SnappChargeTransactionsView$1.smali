.class final Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView$1;->b:Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    iput-object p2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView$1;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 133
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 134
    iget-object p2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView$1;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    .line 136
    iget-object p1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView$1;->b:Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    iget-object p1, p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->a:Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->onReachedToTheEndOfList()V

    :cond_0
    return-void
.end method
