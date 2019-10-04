.class final Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

.field final synthetic b:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$3;->b:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView_ViewBinding$3;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->onPromoClicked()V

    return-void
.end method
