.class public Lcom/webengage/sdk/android/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "topic"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lcom/webengage/sdk/android/n$1;->a:[I

    invoke-virtual {p0}, Lcom/webengage/sdk/android/af;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const-string v1, "data"

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    check-cast p1, Ljava/util/HashMap;

    goto :goto_1

    :pswitch_1
    check-cast p1, Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_2
    check-cast p1, Lcom/webengage/sdk/android/ac;

    goto :goto_1

    :pswitch_3
    const-class p0, Lcom/webengage/sdk/android/ExecutorService;

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    check-cast p1, Ljava/lang/Exception;

    goto :goto_0

    :pswitch_4
    const-class p0, Lcom/webengage/sdk/android/EventLogService;

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    check-cast p1, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_3

    :pswitch_5
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_6
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_7
    check-cast p1, Lcom/webengage/sdk/android/l;

    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_2
    :pswitch_8
    const-class p0, Lcom/webengage/sdk/android/ExecutorService;

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method
