.class final Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onShowBoxOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->n(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->x(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4$1;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->scaleUpOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method
