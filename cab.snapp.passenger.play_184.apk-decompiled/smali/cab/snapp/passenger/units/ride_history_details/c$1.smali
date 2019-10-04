.class final Lcab/snapp/passenger/units/ride_history_details/c$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/ride_history_details/c;->onInitialize(Lcab/snapp/passenger/data/models/RideHistoryInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/ride_history_details/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/ride_history_details/c;Landroid/content/Context;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_history_details/c$1;->a:Lcab/snapp/passenger/units/ride_history_details/c;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public final canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
