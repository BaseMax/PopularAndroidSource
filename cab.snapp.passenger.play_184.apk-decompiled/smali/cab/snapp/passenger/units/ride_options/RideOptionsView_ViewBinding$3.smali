.class final Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;-><init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/ride_options/RideOptionsView;

.field final synthetic b:Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;Lcab/snapp/passenger/units/ride_options/RideOptionsView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$3;->b:Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$3;->a:Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/RideOptionsView_ViewBinding$3;->a:Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->onWaitingClick()V

    return-void
.end method
