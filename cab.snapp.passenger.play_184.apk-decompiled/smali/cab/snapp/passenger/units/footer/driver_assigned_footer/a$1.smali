.class final Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$1;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 113
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$1;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_1

    .line 117
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$1;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->b(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
