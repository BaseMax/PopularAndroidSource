.class public final Lc/c/a/h/a/Ca$Eb;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Eb"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$Db;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$Eb;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$Db;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$Eb;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$Db;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$Eb;->b(Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;)Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$Eb;->a(Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;)Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$Eb;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->n(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/b/ba;

    .line 3
    invoke-static {p1, v0}, Lc/c/a/b/h/a/a/b;->a(Lcom/farsitel/bazaar/app/thirdparty/account/update/UpdateCheckService;Lc/c/a/e/d/b/ba;)V

    return-object p1
.end method
