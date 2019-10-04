.class final Lcab/snapp/passenger/units/request_ride_waiting/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/request_ride_waiting/c;->onInitialize(ZZLjava/lang/String;)V
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

    .line 70
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->b(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->b(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->a(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    :goto_0
    return p2
.end method
