.class public final synthetic Lcab/snapp/passenger/f/a/a/-$$Lambda$N6nu8yk48lAa1evXaVqAMjmEaTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/f/a/a/b;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/f/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/-$$Lambda$N6nu8yk48lAa1evXaVqAMjmEaTM;->f$0:Lcab/snapp/passenger/f/a/a/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/-$$Lambda$N6nu8yk48lAa1evXaVqAMjmEaTM;->f$0:Lcab/snapp/passenger/f/a/a/b;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/OnlinePaymentResponse;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/a/a/b;->processServerData(Lcab/snapp/passenger/data_access_layer/network/responses/OnlinePaymentResponse;)V

    return-void
.end method
