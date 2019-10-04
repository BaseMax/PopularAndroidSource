.class public Lir/cafebazaar/inline/ux/flow/actions/PayAction;
.super Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;
.source "PayAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/flow/actions/PayAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/d/a/k;

    invoke-direct {v0}, Lf/a/a/g/d/a/k;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/actions/PayAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;ILandroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p4, :cond_1

    .line 6
    instance-of p3, p4, Lir/cafebazaar/inline/ux/payment/PaymentInfo;

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const-string p2, "OK"

    goto :goto_0

    :cond_0
    const-string p2, "FAILED"

    .line 7
    :goto_0
    move-object p3, p4

    check-cast p3, Lir/cafebazaar/inline/ux/payment/PaymentInfo;

    invoke-virtual {p3}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    check-cast p4, Lir/cafebazaar/inline/ux/payment/ResidPaymentInfo;

    .line 9
    invoke-virtual {p4, p2}, Lir/cafebazaar/inline/ux/payment/ResidPaymentInfo;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    invoke-direct {v1, v2, v0, p4}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p4, Lf/a/a/g/d/g;

    invoke-direct {p4, p1, v0}, Lf/a/a/g/d/g;-><init>(Lf/a/a/e/g;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p4}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    .line 11
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance p4, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v0, "InlinePay"

    invoke-direct {p4, v0}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "state"

    .line 12
    invoke-virtual {p4, v0, p2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object p2

    check-cast p2, Lcom/crashlytics/android/answers/CustomEvent;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;->b()J

    move-result-wide p3

    sub-long/2addr v0, p3

    const-wide/16 p3, 0x3e8

    div-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "duration"

    invoke-virtual {p2, p4, p3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object p2

    check-cast p2, Lcom/crashlytics/android/answers/CustomEvent;

    .line 14
    invoke-virtual {p1, p2}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    :cond_1
    return-void
.end method

.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/a/a/g/d/a/l;->b:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    instance-of v0, v0, Lf/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    check-cast v0, Lf/a/a/e/c;

    invoke-virtual {v0}, Lf/a/a/e/c;->Oa()Lf/a/a/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;Landroid/view/View;)V

    .line 4
    new-instance p2, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lf/a/a/g/d/i;

    invoke-direct {v0, p1}, Lf/a/a/g/d/i;-><init>(Lf/a/a/e/g;)V

    .line 5
    invoke-virtual {p2, v0}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
