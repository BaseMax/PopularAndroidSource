.class public final synthetic Lcab/snapp/passenger/units/charge/-$$Lambda$dokIJ4lyzHlX4_tAzWmyDug0lr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/charge/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/charge/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$dokIJ4lyzHlX4_tAzWmyDug0lr8;->f$0:Lcab/snapp/passenger/units/charge/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$dokIJ4lyzHlX4_tAzWmyDug0lr8;->f$0:Lcab/snapp/passenger/units/charge/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/a;->pressBack()V

    return-void
.end method
