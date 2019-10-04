.class final Lcab/snapp/passenger/f/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/f/a/a;->buildSnappPayment(Landroid/app/Activity;ILcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/f/a/a$a;

.field final synthetic b:Lcab/snapp/passenger/f/b/b/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/f/a/a$1;->a:Lcab/snapp/passenger/f/a/a$a;

    iput-object p2, p0, Lcab/snapp/passenger/f/a/a$1;->b:Lcab/snapp/passenger/f/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPaymentError(Ljava/lang/String;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a$1;->a:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1, p2}, Lcab/snapp/passenger/f/a/a$a;->onPaymentError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onPaymentStart()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a$1;->a:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcab/snapp/passenger/f/a/a$a;->onPaymentStart()V

    :cond_0
    return-void
.end method

.method public final onPaymentSucceed(J)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a$1;->a:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p1, p2}, Lcab/snapp/passenger/f/a/a$a;->onPaymentSucceed(J)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a$1;->b:Lcab/snapp/passenger/f/b/b/c;

    .line 1098
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1099
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "amount"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object p1, Lcab/snapp/passenger/f/b/b/c$e;->ADDED_CREDIT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
