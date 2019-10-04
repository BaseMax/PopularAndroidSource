.class public final Lc/c/a/h/a/Ca$ib;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/Ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ib"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$hb;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$ib;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$hb;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$ib;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$hb;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/j/h/e;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$ib;->b(Lc/c/a/n/j/h/e;)Lc/c/a/n/j/h/e;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/j/h/e;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$ib;->a(Lc/c/a/n/j/h/e;)V

    return-void
.end method

.method public final b(Lc/c/a/n/j/h/e;)Lc/c/a/n/j/h/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$ib;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->s(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/F$b;

    .line 3
    invoke-static {p1, v0}, Lc/c/a/d/f/f;->a(Lc/c/a/d/f/e;Lb/r/F$b;)V

    .line 4
    iget-object v0, p0, Lc/c/a/h/a/Ca$ib;->a:Lc/c/a/h/a/Ca;

    .line 5
    invoke-static {v0}, Lc/c/a/h/a/Ca;->t(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/d/c;

    .line 6
    invoke-static {p1, v0}, Lc/c/a/d/f/f;->a(Lc/c/a/d/f/e;Lc/c/a/d/d/c;)V

    return-object p1
.end method
