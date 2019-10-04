.class Lcom/webengage/sdk/android/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/webengage/sdk/android/ae<",
        "Lcom/webengage/sdk/android/AbstractWebEngage;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/webengage/sdk/android/ap;->b:I

    iput-object p2, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    iput p1, p0, Lcom/webengage/sdk/android/ap;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/AbstractWebEngage;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/webengage/sdk/android/ap;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->e(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->b(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->d(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/webengage/sdk/android/q$a;

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->a(Lcom/webengage/sdk/android/q$a;Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->c(Landroid/content/Intent;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->c(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->b(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_9
    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->c(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_a
    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->b(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_b
    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->a(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->a(Landroid/location/Location;Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->a(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->a(Landroid/content/Intent;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v1, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->setRegistrationID(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->setEveryActivityIsScreen(Z)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->filterCustomEvents(Z)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->setLogLevel(I)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->setLocationTracking(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Some error occurred while executing queued task of WebEngage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebEngage"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
