.class public final synthetic Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$KHzm-fRWG5TUbPavhzsQSYPAI18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/snapp_charge_transactions/a;

.field private final synthetic f$1:Lcab/snapp/passenger/units/snapp_charge_transactions/c;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/snapp_charge_transactions/a;Lcab/snapp/passenger/units/snapp_charge_transactions/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$KHzm-fRWG5TUbPavhzsQSYPAI18;->f$0:Lcab/snapp/passenger/units/snapp_charge_transactions/a;

    iput-object p2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$KHzm-fRWG5TUbPavhzsQSYPAI18;->f$1:Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$KHzm-fRWG5TUbPavhzsQSYPAI18;->f$0:Lcab/snapp/passenger/units/snapp_charge_transactions/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$KHzm-fRWG5TUbPavhzsQSYPAI18;->f$1:Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->lambda$KHzm-fRWG5TUbPavhzsQSYPAI18(Lcab/snapp/passenger/units/snapp_charge_transactions/a;Lcab/snapp/passenger/units/snapp_charge_transactions/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V

    return-void
.end method
