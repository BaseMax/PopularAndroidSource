.class final Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->onUnitCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$3;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$3;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$3;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->f(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->OnRideRatingUnitIsOnForeground()V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
