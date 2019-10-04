.class public Lcab/snapp/passenger/units/ride_history/RideHistoryView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/ride_history/RideHistoryView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/ride_history/RideHistoryView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/ride_history/RideHistoryView_ViewBinding;-><init>(Lcab/snapp/passenger/units/ride_history/RideHistoryView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/ride_history/RideHistoryView;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    .line 28
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0273

    const-string v2, "field \'rideHistoryRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a026c

    const-string v2, "field \'rideHistoryEmptyLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryEmptyLayout:Landroid/view/ViewGroup;

    .line 30
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a026f

    const-string v2, "field \'loading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappuikit/SnappLoading;

    iput-object p2, p1, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    .line 40
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryEmptyLayout:Landroid/view/ViewGroup;

    .line 42
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
