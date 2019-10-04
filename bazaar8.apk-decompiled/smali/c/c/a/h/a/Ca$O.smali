.class public final Lc/c/a/h/a/Ca$O;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/da;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "O"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$N;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$O;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$N;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$O;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$N;)V

    return-void
.end method


# virtual methods
.method public final a()Lc/c/a/d/d/e;
    .locals 2

    .line 2
    new-instance v0, Lc/c/a/d/d/e;

    iget-object v1, p0, Lc/c/a/h/a/Ca$O;->a:Lc/c/a/h/a/Ca;

    invoke-static {v1}, Lc/c/a/h/a/Ca;->l(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v1

    invoke-interface {v1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lc/c/a/d/d/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$O;->b(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$O;->a(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$O;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->s(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/F$b;

    .line 3
    invoke-static {p1, v0}, Lc/c/a/d/f/j;->a(Lc/c/a/d/f/i;Lb/r/F$b;)V

    .line 4
    iget-object v0, p0, Lc/c/a/h/a/Ca$O;->a:Lc/c/a/h/a/Ca;

    .line 5
    invoke-static {v0}, Lc/c/a/h/a/Ca;->t(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/d/c;

    .line 6
    invoke-static {p1, v0}, Lc/c/a/d/f/j;->a(Lc/c/a/d/f/i;Lc/c/a/d/d/c;)V

    .line 7
    invoke-virtual {p0}, Lc/c/a/h/a/Ca$O;->a()Lc/c/a/d/d/e;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/d/f/j;->a(Lc/c/a/d/f/i;Lc/c/a/d/d/e;)V

    return-object p1
.end method
