.class final Lcab/snapp/passenger/units/request_ride_waiting/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/request_ride_waiting/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/request_ride_waiting/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/request_ride_waiting/c;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$3;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$3;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->k(Lcab/snapp/passenger/units/request_ride_waiting/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$3;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->k(Lcab/snapp/passenger/units/request_ride_waiting/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
