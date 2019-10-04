.class public final Lcab/snapp/passenger/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/f/a/a$a;
    }
.end annotation


# static fields
.field private static a:Lcab/snapp/passenger/data/models/SnappUssd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSnappPayment(Landroid/app/Activity;ILcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/f/a/b;
    .locals 1

    .line 40
    invoke-static {p0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x44d

    const-string p1, ""

    .line 42
    invoke-interface {p2, p1, p0}, Lcab/snapp/passenger/f/a/a$a;->onPaymentError(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcab/snapp/passenger/f/a/a/b;

    invoke-direct {v0, p0, p3}, Lcab/snapp/passenger/f/a/a/b;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    new-instance v0, Lcab/snapp/passenger/f/a/a/a;

    invoke-direct {v0, p0, p3}, Lcab/snapp/passenger/f/a/a/a;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V

    goto :goto_0

    .line 57
    :pswitch_1
    new-instance v0, Lcab/snapp/passenger/f/a/a/c;

    invoke-direct {v0, p0, p3}, Lcab/snapp/passenger/f/a/a/c;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V

    goto :goto_0

    .line 54
    :pswitch_2
    new-instance v0, Lcab/snapp/passenger/f/a/a/d;

    sget-object p1, Lcab/snapp/passenger/f/a/a;->a:Lcab/snapp/passenger/data/models/SnappUssd;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/a/a/d;-><init>(Landroid/app/Activity;Lcab/snapp/passenger/data/models/SnappUssd;)V

    goto :goto_0

    .line 51
    :pswitch_3
    new-instance v0, Lcab/snapp/passenger/f/a/a/b;

    invoke-direct {v0, p0, p3}, Lcab/snapp/passenger/f/a/a/b;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 64
    :goto_0
    new-instance p0, Lcab/snapp/passenger/f/a/a$1;

    invoke-direct {p0, p2, p4}, Lcab/snapp/passenger/f/a/a$1;-><init>(Lcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/f/b/b/c;)V

    invoke-interface {v0, p0}, Lcab/snapp/passenger/f/a/b;->setInteractionInterface(Lcab/snapp/passenger/f/a/a$a;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSnappUssd()Lcab/snapp/passenger/data/models/SnappUssd;
    .locals 1

    .line 113
    sget-object v0, Lcab/snapp/passenger/f/a/a;->a:Lcab/snapp/passenger/data/models/SnappUssd;

    return-object v0
.end method

.method public static isUssdEnable()Z
    .locals 1

    .line 136
    sget-object v0, Lcab/snapp/passenger/f/a/a;->a:Lcab/snapp/passenger/data/models/SnappUssd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SnappUssd;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setSnappUssd(Lcab/snapp/passenger/data/models/SnappUssd;)V
    .locals 0

    .line 123
    sput-object p0, Lcab/snapp/passenger/f/a/a;->a:Lcab/snapp/passenger/data/models/SnappUssd;

    return-void
.end method
