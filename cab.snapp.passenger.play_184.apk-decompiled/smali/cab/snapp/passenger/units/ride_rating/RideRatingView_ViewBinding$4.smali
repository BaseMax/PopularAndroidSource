.class final Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;-><init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/ride_rating/RideRatingView;

.field final synthetic b:Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;Lcab/snapp/passenger/units/ride_rating/RideRatingView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$4;->b:Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$4;->a:Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$4;->a:Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->onCommentClicked()V

    return-void
.end method
