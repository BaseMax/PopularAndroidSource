.class public final Lc/c/a/h/a/Ca$ob;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ob"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$nb;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$ob;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$nb;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$ob;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$nb;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/core/receiver/SmsReceiver;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$ob;->b(Lcom/farsitel/bazaar/core/receiver/SmsReceiver;)Lcom/farsitel/bazaar/core/receiver/SmsReceiver;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/receiver/SmsReceiver;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$ob;->a(Lcom/farsitel/bazaar/core/receiver/SmsReceiver;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/core/receiver/SmsReceiver;)Lcom/farsitel/bazaar/core/receiver/SmsReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$ob;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->e(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/d/f;

    .line 3
    invoke-static {p1, v0}, Lc/c/a/d/e/c;->a(Lcom/farsitel/bazaar/core/receiver/SmsReceiver;Lc/c/a/d/d/f;)V

    return-object p1
.end method
