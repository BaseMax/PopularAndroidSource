.class final Lcab/snapp/passenger/units/ride_options/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/ride_options/a;->onUnitCreated()V
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
.field final synthetic a:Lcab/snapp/passenger/units/ride_options/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/ride_options/a;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/a$1;->a:Lcab/snapp/passenger/units/ride_options/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    const/16 v2, 0x3ef

    const/16 v3, 0x3f0

    const/16 v4, 0x3ed

    if-eq v0, v1, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 165
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 167
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a$1;->a:Lcab/snapp/passenger/units/ride_options/a;

    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/ride_options/a;->a(Lcab/snapp/passenger/units/ride_options/a;Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 170
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a$1;->a:Lcab/snapp/passenger/units/ride_options/a;

    iget-object v0, p1, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_options/a;->a(Lcab/snapp/passenger/units/ride_options/a;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 174
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a$1;->a:Lcab/snapp/passenger/units/ride_options/a;

    iget-object v0, p1, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_options/a;->a(Lcab/snapp/passenger/units/ride_options/a;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 176
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 178
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a$1;->a:Lcab/snapp/passenger/units/ride_options/a;

    iget-object v0, p1, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v0

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_options/a;->a(Lcab/snapp/passenger/units/ride_options/a;Z)Z

    :cond_3
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ride_options/a$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
