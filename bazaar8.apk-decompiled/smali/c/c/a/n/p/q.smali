.class public final Lc/c/a/n/p/q;
.super Ljava/lang/Object;
.source "VerifyOtpFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/p/q;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/c/a/n/p/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/p/q;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    const-string v1, "otpCode"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;Ljava/lang/String;)V

    return-void
.end method
