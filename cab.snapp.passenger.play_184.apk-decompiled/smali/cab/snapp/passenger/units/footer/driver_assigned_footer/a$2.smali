.class final Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$2;
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

    .line 125
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$2;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$2;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->c(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$2;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->d(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onViewVisibilityUpdate(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$2;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
